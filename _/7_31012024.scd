// JITLib SynthDef for Methasthassis-style Compelling Sound with Spatialization

// Define the SynthDef
(
SynthDef(\methasthassis, {
    arg freqBus = 0, modFreqsBus = 1, modDepthsBus = 2, numHarmonicsBus = 3, slideTimeBus = 4, outputBus = 5;

    // Use XLine for frequency sliding
    var freq, freqSlide;

    freqSlide = XLine.kr(
        start: In.kr(freqBus),
        end: In.kr(freqBus) * 2,
        dur: In.kr(slideTimeBus),
        doneAction: 2
    );
    freq = Array.fill(In.kr(numHarmonicsBus), { |i| freqSlide * (i + 1) });

    // Generate the SinOscillator with modulation
    var sig, modFreq, modDepth, pan;

    sig = Mix.fill(
        In.kr(numHarmonicsBus),
        { |i|
            modFreq = In.kr(modFreqsBus) % (i + 1);
            modDepth = In.kr(modDepthsBus) % (i + 1);

            // Spatialize each harmonic based on its index
            pan = i.linlin(0, In.kr(numHarmonicsBus) - 1, -1, 1);
            SinOsc.ar(freq[i]) * SinOsc.ar(modFreq) * modDepth / (i + 1) * Pan2.ar(pan);
        }
    );

    Out.ar(outputBus, sig);
}).add;
)

// Play the SynthDef
(
// Set parameters
freqBus = 0;
modFreqsBus = 1;
modDepthsBus = 2;
numHarmonicsBus = 3;
slideTimeBus = 4;
outputBus = 5;

// Play the SynthDef with the specified parameters
s.meter;
s.sync;
Synth(\methasthassis, [
    \freqBus, freqBus,
    \modFreqsBus, modFreqsBus,
    \modDepthsBus, modDepthsBus,
    \numHarmonicsBus, numHarmonicsBus,
    \slideTimeBus, slideTimeBus,
    \outputBus, outputBus
]);

s.meter;
)
