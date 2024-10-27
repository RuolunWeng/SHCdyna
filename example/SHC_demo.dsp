import("stdfaust.lib");

/*
ctFreq = hslider("[0]cutoffFrequency",500,50,10000,0.01) : si.smoo;
q = hslider("[1]q",5,1,30,0.1) : si.smoo;
gain = hslider("[2]gain",1,0,1,0.01) : si.smoo;
t = button("[3]gate") : si.smoo;
*/

// Touch UI for SHC
t = checkbox("XYpad [SHCUI: SHCdemo pad 0 0 100 72 255 255 255 255]"): si.smoo;
ctFreq = hslider("XYpad_X",500,50,10000,0.01) : si.smoo;
q = hslider("XYpad_Y",5,1,30,0.1) : si.smoo;

gain = hslider("gain [motion:MYzpos]",0,0,0.6,0.01) : si.smoo;


process = no.noise : fi.resonlp(ctFreq,q,gain)*t <: dm.zita_light;