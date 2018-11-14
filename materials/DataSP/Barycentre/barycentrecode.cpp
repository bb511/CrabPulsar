#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <math.h>
#include <sstream>
#include <string>
#include "/home/undergrd/linux/include/gsl_fft_real.h"
#include "/home/undergrd/linux/include/gsl_errno.h"
#include "/home/undergrd/linux/include/gsl_interp.h"

using namespace std;

// This is the function that does the interpolation for you. You give
// it two arrays, dataX and dataY, which are each nrdatapoints
// long. Those points define a function f(x). The function returns the
// estimate of f(day), using interpolation of the specified
// order. This function can be used as it is.
double interpolate( const double dataX[], const double dataY[], double day, unsigned nrdatapoints, int order)
{
  unsigned long idx;
  long idx_start;
  double x = day;
  double y;
  gsl_interp *interp;
  gsl_interp_accel *interp_accel;

  // Work out the start index of your arrays used to pass on to the
  // interpolator.
  idx = gsl_interp_bsearch (dataX, x, 0, nrdatapoints);
  idx_start = idx-(order-1)/2;
  if(idx_start < 0)
    idx_start = 0;
  if(idx_start + order > nrdatapoints)
    idx_start = nrdatapoints - order;
  
  // Let the gsl library know which interpolation method you want to use.
  if(order == 2)
    interp = gsl_interp_alloc(gsl_interp_linear, order);
  else
    interp = gsl_interp_alloc(gsl_interp_polynomial, order);

  // Let the gsl library know which data points should be used to do the interpolation
  if(gsl_interp_init(interp, &dataX[idx_start], &dataY[idx_start], order) != 0) {
    fprintf(stderr, "Error in gsl_interp_init\n");
    exit(0);
  }

  // Allocate temporary memory for the gsl interpolator
  interp_accel = gsl_interp_accel_alloc();

  // Do the interpolation
  if(gsl_interp_eval_e(interp, &dataX[idx_start], &dataY[idx_start], x, interp_accel, &y) != 0) {
    fprintf(stderr, "Error in gsl_interp_eval_e\n");
    exit(0);
  }
  
  // Free up the temporary resources
  gsl_interp_accel_free(interp_accel);
  gsl_interp_free(interp);

  // Return the estimate of f(day)
  return y;
}

int main(int argc, char *argv[])
{
  // Pointers to the file names specified on the command line
  char *bname;
  char *tname;
  char *ename;

  // The order of the interpolation function you have specified on the
  // command line.
  int order;

  // Read the command line in.
  if (argc < 9) // Check the total number of parameters on command line.
    {
      cout << "Usage is barycentrecode -b <barycentrefile> -t <toafile> -e <elevation file> -o <order>\n";
      exit(0);
    }
  else
    {
      for (int i=1; i < argc; i+=2)
	{
	  if ( i+1 != argc) {
	    if (argv[i] == string("-b")) {
	      bname = argv[i+1];
	    } else if (argv[i] == string("-o")) {
	      order = (double) atof(argv[i+1]);
	    } else if (argv[i] == string("-t")) {
	      tname = argv[i+1];
	    } else if (argv[i] == string("-e")) {
	      ename = argv[i+1];
	    } else {
	      cout << "Not enough or invalid arguments\n";
	      cout << "Usage is fftcode -d <datafile> -h <hdrfile> -o <outfile>\n";
	      exit(0);
	    }
	  }
	}
    }

  // Get the barycentre terms. refmjd is the MJD of the first day in the barycentre table (1st of August 2013)
  double refmjd = 56505.000; // Remember needs changing when change barycentre file!!!
  // The number of barycentre positions in file. It would be better to
  // let your program work out this number.
  int ndays = 61;
  // The values that will be read in from the barycentre file
  double day[ndays], X[ndays], Y[ndays], Z[ndays]; 
  ifstream bstream;
  bstream.open(bname);

  // dcnt counts the number of lines read in from the barycentre file
  int dcnt = 0;
  if (bstream.is_open())
    {
      // Keep reading the file until the end is reached
      while (!bstream.eof())
	{
	  // Here you should read in the data from the barycentre file
	  dcnt++;
	}
    }
  else {
    // What code would be useful here?
  }



  // Read the elevations from the elevation file
  ifstream estream;
  // The array that will contain the elevations. There shouldn't be more than 100 elevations in the file
  double elevation[100];
  estream.open(ename);
  int ecnt = 0;
  if (estream.is_open())
    {
      while (!estream.eof())
	{
	  // calculate the elevations of the source
	}
    }



  // Define the poistion of the Crab pulsar.  You probably want to
  // convert these angles in to degrees and calculate the unit vector in
  // the direction of the source.
  const int RA_h = ;
  const int RA_m = ;
  const double RA_s = ;
  const int DEC_h = ;
  const int DEC_m = ;
  const double DEC_s = ;


  // Add in some constants that you might need. 
  const double pi = 3.141592654;


  

  // Read the TOAs from the toa file
  ifstream tstream;
  tstream.open(tname);

  // Define the maximum numbers of toas to be read in. A better way of doing this exists....
  int ntoas = 60; 
  // These are the variables that should be filled with the contents
  // of your toa file. The variables are defined in the order in which
  // they are written out by pat.
  string toaname[ntoas];
  int toa_num[ntoas], notused[ntoas];
  double freq[ntoas], mjd[ntoas], notused2[ntoas], toa_error[ntoas];
  int site[ntoas];

  // See below for meaning of variables
  double data_day, roemer, earthcorr, t_ssb, x, y, z;

  int tcnt = 0;

  if (tstream.is_open())
    {
      while (!tstream.eof() && tcnt < ntoas)
	{
	  // read in the toas from tstream. 

	  // Calculate data_day, which is the date (in units of the
	  // array X) at which you want to interpolate the barycentric
	  // position.

	  // interpolate the data using the interpolate function.
	  // Remember you need to make an assessment of the order
	  // of the interpolation function that you should use. 
	  x = interpolate(day, X, data_day, ndays, order);
	  
	  // calculate the earth correction term. 
	  earthcorr = ;

	  // calculate the roemer delay
	  roemer = ;

	  // correct the toas
	  t_ssb = ;

	  // calculate the residuals, For Sept 1 use initial period =
	  // 0.0336862 Sep 11 use initial period = 0.0336865. To
	  // calculate the residual you probably want to define a
	  // reference point in time other than for instance MJD=0.
	  double resid = ;
	  printf("     %15.10lf\n",resid);
	  tcnt++;
	}
    }
}


// compile line "g++ -o barycentrecode barycentrecode.cpp -L/home/undegrd/linux/lib/ -lgsl -lgslcblas -lm"
