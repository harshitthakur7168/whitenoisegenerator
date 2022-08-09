

Fs = 44100; /// sampling rate

Tmax = 20;  ///time period for audio


Samples = Tmax*Fs; // total sampling rate



noise   = randn(Samples,1);  

///// n = randn(1000,1) creates a vector (1000-by-1), so sum(n) is the sum of the thousand random numbers. Taking the mean is then the mean of a single value (ie the value itself).
Similarly, mean(n) calculates the mean of the 1000 numbers (should be about 0), then sum adds that one number. ////



noise = bandpass(noise,[3100 4000],Fs);  /// frequency narrow band butterworth filter 


pspectrum(noise,Fs)
sound(noise, Fs)


[noise,Fs] = audioread(filename);    // get audio file 
