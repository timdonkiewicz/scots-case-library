%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    This is a modified SCOTS-feasible instance adapted from the   %%%%%
%%%%                                :                                 %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v21.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%               Benchmark Group - Typical Operations               %%%%%
%%%%                         29 - July - 2021                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Power flow data for IEEE 30 bus test case.
%   This data was converted from IEEE Common Data Format
%   (ieee30cdf.txt) on 20-Sep-2004 by cdf2matp, rev. 1.11
%
%   Converted from IEEE CDF file from:
%       http://www.ee.washington.edu/research/pstca/
%
%   Copyright (c) 1999 by Richard D. Christie, University of Washington
%   Electrical Engineering Licensed under the Creative Commons Attribution 4.0
%   International license, http://creativecommons.org/licenses/by/4.0/
%
%   CDF Header:
%   08/20/93 UW ARCHIVE           100.0  1961 W IEEE 30 Bus Test Case
%
%% MATPOWER Case Format : Version 2
function mpc = pglib_opf_case30_ieee
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100.0;
%% bus data
%    bus_i    type    Pd    Qd    Gs    Bs    area    Vm    Va    baseKV    zone    Vmax    Vmin
mpc.bus = [
	1	3	0.0	0.0	0.0	0.0	1	1.0	0.0	132.0	1	1.06	0.94				
	2	2	21.7	12.7	0.0	0.0	1	1.0	0.0	132.0	1	1.06	0.94				
	3	1	2.4	1.2	0.0	0.0	1	1.0	0.0	132.0	1	1.06	0.94				
	4	1	7.6	1.6	0.0	0.0	1	1.0	0.0	132.0	1	1.06	0.94				
	5	2	94.2	19.0	0.0	0.0	1	1.0	0.0	132.0	1	1.06	0.94				
	6	1	0.0	0.0	0.0	0.0	1	1.0	0.0	132.0	1	1.06	0.94				
	7	1	22.8	10.9	0.0	0.0	1	1.0	0.0	132.0	1	1.06	0.94				
	8	2	30.0	30.0	0.0	0.0	1	1.0	0.0	132.0	1	1.06	0.94				
	9	1	0.0	0.0	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	10	1	5.8	2.0	0.0	19.0	1	1.0	0.0	33.0	1	1.06	0.94				
	11	2	0.0	0.0	0.0	0.0	1	1.0	0.0	11.0	1	1.06	0.94				
	12	1	11.2	7.5	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	13	2	0.0	0.0	0.0	0.0	1	1.0	0.0	11.0	1	1.06	0.94				
	14	1	6.2	1.6	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	15	1	8.2	2.5	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	16	1	3.5	1.8	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	17	1	9.0	5.8	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	18	1	3.2	0.9	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	19	1	9.5	3.4	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	20	1	2.2	0.7	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	21	1	17.5	11.2	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	22	1	0.0	0.0	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	23	1	3.2	1.6	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	24	1	8.7	6.7	0.0	4.3	1	1.0	0.0	33.0	1	1.06	0.94				
	25	1	0.0	0.0	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	26	1	3.5	2.3	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	27	1	0.0	0.0	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	28	1	0.0	0.0	0.0	0.0	1	1.0	0.0	132.0	1	1.06	0.94				
	29	1	2.4	0.9	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
	30	1	10.6	1.9	0.0	0.0	1	1.0	0.0	33.0	1	1.06	0.94				
];

%%	 generator data
%    bus    Pg    Qg    Qmax    Qmin    Vg    mBase    status    Pmax    Pmin    Pc1    Pc2    Qc1min    Qc1max    Qc2min    Qc2max    ramp_agc    ramp_10    ramp_30    ramp_q    apf
mpc.gen = [
	1	135.5	5.0	10.0	0.0	1.0	100.0	1	271.002	0.0															
	2	46.0	3.0	46.0	-40.0	1.0	100.0	1	119.799	0.0															
	5	0.0	0.0	40.0	-40.0	1.0	100.0	1	0.0	0.0															
	8	0.0	15.0	40.0	-10.0	1.0	100.0	1	0.0	0.0															
	11	0.0	9.0	24.0	-6.0	1.0	100.0	1	0.0	0.0															
	13	0.0	9.0	24.0	-6.0	1.0	100.0	1	0.0	0.0															
];

%%	 branch data
%    f_bus    t_bus    r    x    b    rateA    rateB    rateC    ratio    angle    status    angmin    angmax
mpc.branch = [
	1	2	0.0192	0.0575	0.0528	163.602	138.0	138.0	0	0	1	-30.0	30.0								
	1	3	0.0452	0.1652	0.0408	163.602	152.0	152.0	0	0	1	-30.0	30.0								
	2	4	0.057	0.1737	0.0368	139.0	139.0	139.0	0	0	1	-30.0	30.0								
	3	4	0.0132	0.0379	0.0084	161.202	135.0	135.0	0	0	1	-30.0	30.0								
	2	5	0.0472	0.1983	0.0418	144.0	144.0	144.0	0	0	1	-30.0	30.0								
	2	6	0.0581	0.1763	0.0374	139.002	139.0	139.0	0	0	1	-30.0	30.0								
	4	6	0.0119	0.0414	0.009	148.0	148.0	148.0	0	0	1	-30.0	30.0								
	5	7	0.046	0.116	0.0204	127.0	127.0	127.0	0	0	1	-30.0	30.0								
	6	7	0.0267	0.082	0.017	140.0	140.0	140.0	0	0	1	-30.0	30.0								
	6	8	0.012	0.042	0.009	148.002	148.0	148.0	0	0	1	-30.0	30.0								
	6	9	0.0	0.208	0.0	142.0	142.0	142.0	0.978	0.0	1	-30.0	30.0								
	6	10	0.0	0.556	0.0	53.0	53.0	53.0	0.969	0.0	1	-30.0	30.0								
	9	11	0.0	0.208	0.0	142.0	142.0	142.0	1.0	0.0	1	-30.0	30.0								
	9	10	0.0	0.11	0.0	267.002	267.0	267.0	1.0	0.0	1	-30.0	30.0								
	4	12	0.0	0.256	0.0	115.0	115.0	115.0	0.932	0.0	1	-30.0	30.0								
	12	13	0.0	0.14	0.0	210.0	210.0	210.0	1.0	0.0	1	-30.0	30.0								
	12	14	0.1231	0.2559	0.0	29.0	29.0	29.0	0	0	1	-30.0	30.0								
	12	15	0.0662	0.1304	0.0	29.0	29.0	29.0	0	0	1	-30.0	30.0								
	12	16	0.0945	0.1987	0.0	30.0	30.0	30.0	0	0	1	-30.0	30.0								
	14	15	0.221	0.1997	0.0	20.0	20.0	20.0	0	0	1	-30.0	30.0								
	16	17	0.0524	0.1923	0.0	38.0	38.0	38.0	0	0	1	-30.0	30.0								
	15	18	0.1073	0.2185	0.0	29.0	29.0	29.0	0	0	1	-30.0	30.0								
	18	19	0.0639	0.1292	0.0	29.0	29.0	29.0	0	0	1	-30.0	30.0								
	19	20	0.034	0.068	0.0	29.0	29.0	29.0	0	0	1	-30.0	30.0								
	10	20	0.0936	0.209	0.0	30.0	30.0	30.0	0	0	1	-30.0	30.0								
	10	17	0.0324	0.0845	0.0	33.0	33.0	33.0	0	0	1	-30.0	30.0								
	10	21	0.0348	0.0749	0.0	30.0	30.0	30.0	0	0	1	-30.0	30.0								
	10	22	0.0727	0.1499	0.0	29.0	29.0	29.0	0	0	1	-30.0	30.0								
	21	22	0.0116	0.0236	0.0	29.0	29.0	29.0	0	0	1	-30.0	30.0								
	15	23	0.1	0.202	0.0	29.0	29.0	29.0	0	0	1	-30.0	30.0								
	22	24	0.115	0.179	0.0	26.0	26.0	26.0	0	0	1	-30.0	30.0								
	23	24	0.132	0.27	0.0	29.0	29.0	29.0	0	0	1	-30.0	30.0								
	24	25	0.1885	0.3292	0.0	27.0	27.0	27.0	0	0	1	-30.0	30.0								
	25	26	0.2544	0.38	0.0	25.0	25.0	25.0	0	0	1	-30.0	30.0								
	25	27	0.1093	0.2087	0.0	28.0	28.0	28.0	0	0	1	-30.0	30.0								
	28	27	0.0	0.396	0.0	75.0	75.0	75.0	0.968	0.0	1	-30.0	30.0								
	27	29	0.2198	0.4153	0.0	28.0	28.0	28.0	0	0	1	-30.0	30.0								
	27	30	0.3202	0.6027	0.0	28.0	28.0	28.0	0	0	1	-30.0	30.0								
	29	30	0.2399	0.4533	0.0	28.0	28.0	28.0	0	0	1	-30.0	30.0								
	8	28	0.0636	0.2	0.0428	140.0	140.0	140.0	0	0	1	-30.0	30.0								
	6	28	0.0169	0.0599	0.013	149.0	149.0	149.0	0	0	1	-30.0	30.0								
];

%%-----	  OPF Data  -----%%
%% cost data
%    1    startup    shutdown    n    x1    y1    ...    xn    yn
%    2    startup    shutdown    n    c(n-1)    ...    c0
mpc.gencost = [
	2	0.0	0.0	2	18.42153	0.0
	2	0.0	0.0	2	52.18225	0.0
	2	0.0	0.0	2	0.0	0.0
	2	0.0	0.0	2	0.0	0.0
	2	0.0	0.0	2	0.0	0.0
	2	0.0	0.0	2	0.0	0.0
];

	 