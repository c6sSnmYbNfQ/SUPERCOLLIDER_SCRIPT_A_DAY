(
{Mix.fill(3, {SinOsc.ar([rrand(30,8000),rrand(30,8000)],mul:EnvGen.ar(Env.perc, Impulse.kr([TRand.kr(0.1,30,Impulse.kr(1/10)),TRand.kr(0.1,30,Impulse.kr(1/10))]))/8)})}.play;
)