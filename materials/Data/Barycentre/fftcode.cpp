#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <math.h>
#include <sstream>
#include <string>
#include "/home/undergrd/linux/include/gsl_fft_real.h"

using namespace std;

int main(int argc, char *argv[])
{
  char* dname;
  char* hname;
  char *oname;
  // Read the command line in.
  if (argc < 7) // Check the total number of parameters on command line.
    {
      cout << "Usage is fftcode -d <datafile> -h <hdrfile> -o <outfile>\n";
      exit(0);
    }
  else
    {
      for (int i=1; i < argc; i+=2)
	{
	  // cout << i << " " << argv[i] << endl;
	  if ( i+1 != argc) {
	    if (argv[i] == string("-d")) {
	      dname = argv[i+1];
	      cout << dname << endl;
	    } 
	    // Add in the other parameters to be read from the command line
	    // See the Usage statement up above for information.
	    else {
	      cout << "Not enough or invalid arguments\n";
	      cout << "Usage is fftcode -d <datafile> -h <hdrfile> -o <outfile>\n";
	      exit(0);
	    }
	  }
	}
    }

  //  Streams to be read
  ifstream datafile;
  ifstream hdrfile;
  ofstream outfile;

  string line;
  string tmpname;
  string date, uttime;

  // Set up file I/O
  datafile.open(dname, ios::in | ios::binary);

  // You will also need to open the header file and an output file.
  // Note that the streams are already defined above.

  // Read header file
  if (hdrfile.is_open())
    {
      while (getline(hdrfile, line))
	{
	  istringstream linestream(line);
	  linestream >> tmpname >> date;
	  if ( tmpname == "Tsamp" )
	    {
	      //The sampling time is something you will need to use
	      //later to calculate frequencies in Hz.
	      cout << "Tsamp = " << date.c_str() << endl;
	    }
	}
    }
  else cout << "Unable to open header file" << endl;

  char elem;   // One intensity value to be read in from file
  double input[3000000]; // Array to read in data, could dynamically size rather than set it to a large array.

  // Read data file
  while (!datafile.eof())
    {
      datafile.read(&elem, sizeof(char));
      //The intensity time series are read in as byte values from the
      //file. These values need to be stored in the array input which
      //can be passed on to the fft routine. You will need to work out
      //how many samples you read in.
    }

  long totalnsamps;

  // Do the FFT of your array input which you have filled with the
  // time series read in from the file using gsl.  Stride is set to 1,
  // meaning that the input array is simply a list of numbers. The
  // variable totalnsamps should be set to the length of the input
  // array. Note that the FFT can only be calculated for a list of
  // numbers which is 2^n points. So you should either ignore the last
  // points or add zero's to the end of the array to ensure
  // totalnsamps being 2^n.
  gsl_fft_real_radix2_transform(input, 1, totalnsamps);

  // The array input is overwritten with the FFT of the data. The
  // output is packed in the following order:
  // Re[0], Re[1], Re[2], ......, Im[2], Im[1], Im[0]
  //
  // Here Re[0] is the real part of the Fourier coefficient of the
  // first frequency channel and Im[0] the imaginary part of the first
  // frequency channel.

  // You should now calculate the spectrum: make a list with the
  // frequency (in Hz) in the first column and the spectral power in
  // the second column.

  // You should set the following variable to the number of spectral
  // channels in your spectrum
  long totalspectralchannels;

  double pwr[totalspectralchannels];
  for (int n=0; n < totalspectralchannels; n++)
    {
      pwr[n] = some_function_of(input);
      double frequency = some_function_of(n);
      outfile << frequency << " " << pwr[n] << endl;
    }
  
  datafile.close(); // close data file
  outfile.close(); //close output file.

}

// compile line "g++ -Wall -o fftcode fftcode.cpp -L/home/undegrd/linux/lib/ -lgsl -lgslcblas -lm"
