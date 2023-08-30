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
%   Power flow data for 30 bus, 6 generator case.
%
%   Alsac, O. & Stott, B., "Optimal Load Flow with Steady State Security",
%   IEEE Transactions on Power Apparatus and Systems, Vol. PAS 93, No. 3,
%   1974, pp. 745-751.
%
%   The generation MVA limit is used for Q upper bounds
%   Shunts assumed to be in real value (not p.u. as specified in the paper)
%
%   Copyright (c) 1974 by The Institute of Electrical and Electronics Engineers (IEEE)
%   Licensed under the Creative Commons Attribution 4.0
%   International license, http://creativecommons.org/licenses/by/4.0/
%
%   Contact M.E. Brennan (me.brennan@ieee.org) for inquries on further reuse of
%   this dataset.
%
%% MATPOWER Case Format : Version 2
function mpc = pglib_opf_case30_as
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100.0;
%% bus data
%    bus_i    type    Pd    Qd    Gs    Bs    area    Vm    Va    baseKV    zone    Vmax    Vmin
mpc.bus = [
	1	3	0.0	0.0	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	2	2	21.7	12.7	0.0	0.0	1	1.025	0.0	135.0	1	1.1	0.95				
	3	1	2.4	1.2	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	4	1	7.6	1.6	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	5	2	94.2	19.0	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	6	1	0.0	0.0	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	7	1	22.8	10.9	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	8	2	30.0	30.0	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	9	1	0.0	0.0	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	10	1	5.8	2.0	0.0	5.26	1	1.0	0.0	135.0	1	1.05	0.95				
	11	2	0.0	0.0	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	12	1	11.2	7.5	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	13	2	0.0	0.0	0.0	0.0	1	1.025	0.0	135.0	1	1.1	0.95				
	14	1	6.2	1.6	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	15	1	8.2	2.5	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	16	1	3.5	1.8	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	17	1	9.0	5.8	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	18	1	3.2	0.9	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	19	1	9.5	3.4	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	20	1	2.2	0.7	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	21	1	17.5	11.2	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	22	1	0.0	0.0	0.0	0.0	1	1.025	0.0	135.0	1	1.1	0.95				
	23	1	3.2	1.6	0.0	0.0	1	1.025	0.0	135.0	1	1.1	0.95				
	24	1	8.7	6.7	0.0	25.0	1	1.0	0.0	135.0	1	1.05	0.95				
	25	1	0.0	0.0	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	26	1	3.5	2.3	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	27	1	0.0	0.0	0.0	0.0	1	1.025	0.0	135.0	1	1.1	0.95				
	28	1	0.0	0.0	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	29	1	2.4	0.9	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
	30	1	10.6	1.9	0.0	0.0	1	1.0	0.0	135.0	1	1.05	0.95				
];

%%	 generator data
%    bus    Pg    Qg    Qmax    Qmin    Vg    mBase    status    Pmax    Pmin    Pc1    Pc2    Qc1min    Qc1max    Qc2min    Qc2max    ramp_agc    ramp_10    ramp_30    ramp_q    apf
mpc.gen = [
	1	125.0	115.0	250.0	-20.0	1.0	100.0	1	200.0	50.0															
	2	50.0	40.0	100.0	-20.0	1.025	100.0	1	80.0	20.0															
	5	32.5	32.5	80.0	-15.0	1.0	100.0	1	50.0	15.0															
	8	22.5	22.5	60.0	-15.0	1.0	100.0	1	35.0	10.0															
	11	20.0	20.0	50.0	-10.0	1.0	100.0	1	30.0	10.0															
	13	26.0	22.5	60.0	-15.0	1.025	100.0	1	40.0	12.0															
];

%%	 branch data
%    f_bus    t_bus    r    x    b    rateA    rateB    rateC    ratio    angle    status    angmin    angmax
mpc.branch = [
	1	2	0.0192	0.0575	0.0264	130.0	130.0	130.0	0	0	1	-30.0	30.0								
	1	3	0.0452	0.1852	0.0204	130.0	130.0	130.0	0	0	1	-30.0	30.0								
	2	4	0.057	0.1737	0.0184	65.0	65.0	65.0	0	0	1	-30.0	30.0								
	3	4	0.0132	0.0379	0.0042	130.0	130.0	130.0	0	0	1	-30.0	30.0								
	2	5	0.0472	0.1983	0.0209	130.0	130.0	130.0	0	0	1	-30.0	30.0								
	2	6	0.0581	0.1763	0.0187	65.0	65.0	65.0	0	0	1	-30.0	30.0								
	4	6	0.0119	0.0414	0.0045	90.0	90.0	90.0	0	0	1	-30.0	30.0								
	5	7	0.046	0.116	0.0102	70.0	70.0	70.0	0	0	1	-30.0	30.0								
	6	7	0.0267	0.082	0.0085	130.0	130.0	130.0	0	0	1	-30.0	30.0								
	6	8	0.012	0.042	0.0045	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	6	9	0.0	0.208	0.0	65.0	65.0	65.0	0	0	1	-30.0	30.0								
	6	10	0.0	0.556	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	9	11	0.0	0.208	0.0	65.0	65.0	65.0	0	0	1	-30.0	30.0								
	9	10	0.0	0.11	0.0	65.0	65.0	65.0	0	0	1	-30.0	30.0								
	4	12	0.0	0.256	0.0	65.0	65.0	65.0	0	0	1	-30.0	30.0								
	12	13	0.0	0.14	0.0	65.0	65.0	65.0	0	0	1	-30.0	30.0								
	12	14	0.1231	0.2559	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	12	15	0.0662	0.1304	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	12	16	0.0945	0.1987	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	14	15	0.221	0.1997	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	16	17	0.0824	0.1932	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	15	18	0.107	0.2185	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	18	19	0.0639	0.1292	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	19	20	0.034	0.068	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	10	20	0.0936	0.209	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	10	17	0.0324	0.0845	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	10	21	0.0348	0.0749	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	10	22	0.0727	0.1499	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	21	22	0.0116	0.0236	0.0	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	15	23	0.1	0.202	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	22	24	0.115	0.179	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	23	24	0.132	0.27	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	24	25	0.1885	0.3292	0.0	16.501	16.0	16.0	0	0	1	-30.0	30.0								
	25	26	0.2544	0.38	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	25	27	0.1093	0.2087	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	28	27	0.0	0.396	0.0	65.0	65.0	65.0	0	0	1	-30.0	30.0								
	27	29	0.2198	0.4153	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	27	30	0.3202	0.6027	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	29	30	0.2399	0.4533	0.0	16.0	16.0	16.0	0	0	1	-30.0	30.0								
	8	28	0.0636	0.2	0.0214	32.0	32.0	32.0	0	0	1	-30.0	30.0								
	6	28	0.0169	0.0599	0.0065	32.0	32.0	32.0	0	0	1	-30.0	30.0								
];

%%-----	  OPF Data  -----%%
%% cost data
%    1    startup    shutdown    n    x1    y1    ...    xn    yn
%    2    startup    shutdown    n    c(n-1)    ...    c0
mpc.gencost = [
	2	0.0	0.0	3	0.00375	2.0	0.0
	2	0.0	0.0	3	0.0175	1.75	0.0
	2	0.0	0.0	3	0.0625	1.0	0.0
	2	0.0	0.0	3	0.00834	3.25	0.0
	2	0.0	0.0	3	0.025	3.0	0.0
	2	0.0	0.0	3	0.025	3.0	0.0
];

%column_names%	 col_1 col_2 
mpc.areas = {
	1	1
};

	 