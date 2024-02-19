SynthDef(\gran1, {|out| Out.ar(out,{TGrains.ar(2, Impulse.kr(LFDNoise0.kr(0.1,mul:1)).abs, ~myBuffer1, 0.25**WhiteNoise.ar(0.25)+0.25, LFDNoise0.kr([rrand(1,30),rrand(1,30)],mul:BufDur.kr(~myBuffer1)) + TRand.kr(0.01, 0.1, Impulse.kr(LFDNoise0.kr([rrand(1,30),rrand(1,30)],mul:120))).abs, LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:20,add:5).abs, LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:2)-1,LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:0.6,add:0.01).abs,4)});}).store;

SynthDef(\gran2, {|out| Out.ar(out,{TGrains.ar(2, Impulse.kr(LFDNoise0.kr(0.1,mul:1)).abs, ~myBuffer2, 0.25**WhiteNoise.ar(0.25)+0.25, LFDNoise0.kr([rrand(1,30),rrand(1,30)],mul:BufDur.kr(~myBuffer2)) + TRand.kr(0.01, 0.1, Impulse.kr(LFDNoise0.kr([rrand(1,30),rrand(1,30)],mul:120))).abs, LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:20,add:5).abs, LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:2)-1,LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:0.6,add:0.01).abs,4)});}).store;

SynthDef(\gran3, {|out| Out.ar(out, {Mix.fill(5,{TGrains.ar(2, Impulse.kr(LFDNoise0.kr(0.1,mul:1)).abs, ~myBuffer3, [1,2,0.5,0.25,0.125].choose, LFDNoise0.kr([rrand(1,30),rrand(1,30)],mul:BufDur.kr(~myBuffer3)) + TRand.kr(0.01, 0.1, Impulse.kr(LFDNoise0.kr([rrand(1,30),rrand(1,30)],mul:120))).abs, LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:20,add:5).abs, LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:2)-1,LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:0.6,add:0.01).abs,4)});})}).store;

SynthDef(\gran4, {|out| Out.ar(out,{TGrains.ar(2, Impulse.kr(LFDNoise0.kr(0.1,mul:1)).abs, ~myBuffer4, 2**WhiteNoise.ar(2)+0.25, LFDNoise0.kr([rrand(1,30),rrand(1,30)],mul:BufDur.kr(~myBuffer4)) + TRand.kr(0.01, 0.1, Impulse.kr(LFDNoise0.kr([rrand(1,30),rrand(1,30)],mul:120))).abs, LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:20,add:5).abs, LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:2)-1,LFDNoise0.kr(freq:[rrand(1,30),rrand(1,30)],mul:0.6,add:0.01).abs,4)});}).store;