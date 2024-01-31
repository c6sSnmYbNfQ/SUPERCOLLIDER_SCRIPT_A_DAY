(
    SynthDef(\MyIndustrialRiff, {
        var a, b, c, d, n, e, f, out;

        a = LFNoise1.ar(0.1).range(0.5, 2) * Impulse.ar(8) * 1.5;
        b = PinkNoise.ar;
        c = SinOsc.ar([20, 40, 60, 80]);
        5.do { c = (c.distort + c) * 0.75 };
        c = c * 1.5;
        d = LPF.ar(Saw.ar([20, 47]).sum, XLine.ar(8000, 200, 4));
        d = (GVerb.ar(d, roomsize: 10, revtime: 6) * 200).clip(-1.0, 1.0) * 0.3;

        n = 12;
        e = Mix(
            (0..n - 1).collect { |i|
                Saw.ar(40 * (i + 1) * LFNoise1.ar(0.1).range(1, 1.5)) *
                LFNoise1.ar(0.1).range(0.0, 1.0)
            }
        ) * 0.5;

        f = Blip.ar([100, 110]);

        out = Mix([a, b, c, f]) + d + e;
        out = Pan2.ar(out, SinOsc.kr(0.1).range(-1, 1)) * 0.2;

        Out.ar(0, out);
    }).add;
)

Synth(\MyIndustrialRiff);
