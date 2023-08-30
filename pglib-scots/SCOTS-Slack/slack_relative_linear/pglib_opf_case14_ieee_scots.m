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
%   Power flow data for IEEE 14 bus test case.
%   This data was converted from IEEE Common Data Format
%   (ieee14cdf.txt) on 20-Sep-2004 by cdf2matp, rev. 1.11
%
%   Converted from IEEE CDF file from:
%        http://www.ee.washington.edu/research/pstca/
%
%   Copyright (c) 1999 by Richard D. Christie, University of Washington
%   Electrical Engineering Licensed under the Creative Commons Attribution 4.0
%   International license, http://creativecommons.org/licenses/by/4.0/
%
%   CDF Header:
%   08/19/93 UW ARCHIVE           100.0  1962 W IEEE 14 Bus Test Case
%
%% MATPOWER Case Format : Version 2
function mpc = pglib_opf_case14_ieee
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100.0;
%% bus data
%    bus_i    type    Pd    Qd    Gs    Bs    area    Vm    Va    baseKV    zone    Vmax    Vmin
mpc.bus = [
	1	3	0.0	0.0	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	2	2	21.7	12.7	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	3	2	94.2	19.0	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	4	1	47.8	-3.9	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	5	1	7.6	1.6	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	6	2	11.2	7.5	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	7	1	0.0	0.0	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	8	2	0.0	0.0	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	9	1	29.5	16.6	0.0	19.0	1	1.0	0.0	1.0	1	1.06	0.94				
	10	1	9.0	5.8	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	11	1	3.5	1.8	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	12	1	6.1	1.6	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	13	1	13.5	5.8	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
	14	1	14.9	5.0	0.0	0.0	1	1.0	0.0	1.0	1	1.06	0.94				
];

%%	 generator data
%    bus    Pg    Qg    Qmax    Qmin    Vg    mBase    status    Pmax    Pmin    Pc1    Pc2    Qc1min    Qc1max    Qc2min    Qc2max    ramp_agc    ramp_10    ramp_30    ramp_q    apf
mpc.gen = [
	1	170.0	5.0	10.0	0.0	1.0	100.0	1	340.0	0.0															
	2	29.5	0.0	30.0	-30.0	1.0	100.0	1	59.0	0.0															
	3	0.0	20.0	40.0	0.0	1.0	100.0	1	0.0	0.0															
	6	0.0	9.0	24.0	-6.0	1.0	100.0	1	0.0	0.0															
	8	0.0	9.0	24.0	-6.0	1.0	100.0	1	0.0	0.0															
];

%%	 branch data
%    f_bus    t_bus    r    x    b    rateA    rateB    rateC    ratio    angle    status    angmin    angmax
mpc.branch = [
	1	2	0.01938	0.05917	0.0528	472.0	472.0	472.0	0	0	1	-30.0	30.0								
	1	5	0.05403	0.22304	0.0492	200.0	128.0	128.0	0	0	1	-30.0	30.0								
	2	3	0.04699	0.19797	0.0438	145.0	145.0	145.0	0	0	1	-30.0	30.0								
	2	4	0.05811	0.17632	0.034	158.0	158.0	158.0	0	0	1	-30.0	30.0								
	2	5	0.05695	0.17388	0.0346	161.0	161.0	161.0	0	0	1	-30.0	30.0								
	3	4	0.06701	0.17103	0.0128	160.0	160.0	160.0	0	0	1	-30.0	30.0								
	4	5	0.01335	0.04211	0.0	664.0	664.0	664.0	0	0	1	-30.0	30.0								
	4	7	0.0	0.20912	0.0	141.0	141.0	141.0	0.978	0.0	1	-30.0	30.0								
	4	9	0.0	0.55618	0.0	53.0	53.0	53.0	0.969	0.0	1	-30.0	30.0								
	5	6	0.0	0.25202	0.0	117.0	117.0	117.0	0.932	0.0	1	-30.0	30.0								
	6	11	0.09498	0.1989	0.0	134.0	134.0	134.0	0	0	1	-30.0	30.0								
	6	12	0.12291	0.25581	0.0	104.0	104.0	104.0	0	0	1	-30.0	30.0								
	6	13	0.06615	0.13027	0.0	201.0	201.0	201.0	0	0	1	-30.0	30.0								
	7	8	0.0	0.17615	0.0	167.0	167.0	167.0	0	0	1	-30.0	30.0								
	7	9	0.0	0.11001	0.0	267.0	267.0	267.0	0	0	1	-30.0	30.0								
	9	10	0.03181	0.0845	0.0	325.0	325.0	325.0	0	0	1	-30.0	30.0								
	9	14	0.12711	0.27038	0.0	99.0	99.0	99.0	0	0	1	-30.0	30.0								
	10	11	0.08205	0.19207	0.0	141.0	141.0	141.0	0	0	1	-30.0	30.0								
	12	13	0.22092	0.19988	0.0	99.0	99.0	99.0	0	0	1	-30.0	30.0								
	13	14	0.17093	0.34802	0.0	76.0	76.0	76.0	0	0	1	-30.0	30.0								
];

%%-----	  OPF Data  -----%%
%% cost data
%    1    startup    shutdown    n    x1    y1    ...    xn    yn
%    2    startup    shutdown    n    c(n-1)    ...    c0
mpc.gencost = [
	2	0.0	0.0	2	7.92095	0.0
	2	0.0	0.0	2	23.26949	0.0
	2	0.0	0.0	2	0.0	0.0
	2	0.0	0.0	2	0.0	0.0
	2	0.0	0.0	2	0.0	0.0
];

	 