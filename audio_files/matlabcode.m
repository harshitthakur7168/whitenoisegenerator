
Fs = 44100;
Tmax = 15;
Samples = Tmax*Fs;
noise   = randn(Samples,1);
noise = bandpass(noise,[1000 16000],Fs);
pspectrum(noise,Fs)
sound(noise, Fs)
