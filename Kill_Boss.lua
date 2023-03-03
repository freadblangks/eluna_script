print(">>Script: Kill_Boss loading...OK")
--[[
简介: ELUNA BOSS击杀通告系统
作者：5L
版本：2.0c
博客：www.5lgames.com
更多脚本请登录博客
]]--



local boss = {
61,
79,
99,
100,
462,
471,
472,
503,
506,
507,
519,
520,
521,
534,
572,
573,
574,
584,
596,
599,
616,
763,
771,
947,
1037,
1063,
1106,
1112,
1119,
1130,
1132,
1137,
1140,
1260,
1398,
1399,
1424,
1425,
1531,
1533,
1552,
1720,
1748,
1837,
1838,
1839,
1841,
1843,
1844,
1847,
1848,
1851,
1885,
1910,
1911,
1920,
1936,
1944,
1948,
2090,
2108,
2172,
2175,
2184,
2186,
2191,
2192,
2258,
2283,
2425,
2447,
2452,
2453,
2476,
2541,
2598,
2600,
2601,
2602,
2603,
2604,
2605,
2606,
2609,
2744,
2749,
2751,
2752,
2753,
2754,
2779,
2784,
2850,
2931,
3056,
3057,
3068,
3253,
3270,
3295,
3398,
3470,
3516,
3535,
3581,
3586,
3652,
3672,
3735,
3773,
3792,
3872,
3936,
4015,
4030,
4066,
4132,
4339,
4380,
4425,
4438,
4842,
4949,
4968,
5343,
5345,
5346,
5347,
5349,
5350,
5352,
5354,
5356,
5399,
5400,
5785,
5786,
5787,
5797,
5798,
5799,
5800,
5807,
5808,
5809,
5822,
5823,
5824,
5826,
5827,
5828,
5829,
5830,
5831,
5832,
5834,
5835,
5836,
5837,
5838,
5841,
5842,
5847,
5848,
5849,
5851,
5859,
5863,
5864,
5865,
5912,
5915,
5916,
5930,
5931,
5932,
5933,
5934,
5935,
5937,
6109,
6118,
6228,
6488,
6489,
6490,
6581,
6582,
6583,
6584,
6585,
6646,
6647,
6648,
6649,
6650,
6651,
6652,
7015,
7016,
7017,
7057,
7104,
7137,
7895,
7937,
7999,
8199,
8200,
8201,
8202,
8203,
8204,
8205,
8207,
8208,
8210,
8211,
8212,
8213,
8214,
8215,
8216,
8217,
8218,
8219,
8277,
8278,
8279,
8280,
8281,
8282,
8283,
8296,
8297,
8298,
8299,
8300,
8301,
8302,
8303,
8304,
8503,
8660,
8923,
8924,
8976,
8978,
8979,
8981,
9024,
9041,
9042,
9046,
9095,
9217,
9218,
9219,
9596,
9602,
9604,
9718,
10077,
10078,
10082,
10119,
10162,
10181,
10184,
10196,
10197,
10198,
10199,
10200,
10201,
10202,
10263,
10356,
10357,
10358,
10359,
10376,
10393,
10430,
10509,
10540,
10558,
10559,
10639,
10640,
10641,
10642,
10643,
10644,
10647,
10809,
10817,
10821,
10822,
10823,
10824,
10825,
10826,
10827,
10828,
10899,
10942,
11380,
11382,
11383,
11447,
11467,
11497,
11498,
11502,
11583,
11688,
11946,
11947,
11948,
11949,
11981,
11982,
11983,
11988,
12017,
12018,
12037,
12056,
12057,
12098,
12116,
12118,
12126,
12237,
12259,
12264,
12397,
12431,
12432,
12433,
12435,
13020,
13896,
14020,
14221,
14222,
14223,
14224,
14225,
14226,
14227,
14228,
14229,
14230,
14231,
14232,
14233,
14234,
14235,
14236,
14237,
14266,
14267,
14268,
14269,
14270,
14271,
14272,
14273,
14275,
14276,
14277,
14278,
14279,
14280,
14281,
14339,
14340,
14342,
14343,
14344,
14345,
14424,
14425,
14426,
14427,
14428,
14429,
14430,
14431,
14432,
14433,
14435,
14445,
14446,
14447,
14448,
14471,
14472,
14473,
14474,
14475,
14476,
14477,
14478,
14479,
14487,
14488,
14490,
14491,
14492,
14506,
14507,
14509,
14510,
14515,
14517,
14601,
14834,
14862,
14887,
14888,
14889,
14890,
14988,
15082,
15083,
15084,
15114,
15192,
15203,
15204,
15205,
15224,
15263,
15275,
15276,
15299,
15302,
15305,
15339,
15340,
15341,
15348,
15362,
15369,
15370,
15378,
15379,
15380,
15381,
15467,
15491,
15509,
15510,
15511,
15516,
15517,
15543,
15544,
15550,
15589,
15608,
15687,
15688,
15689,
15690,
15691,
15727,
15928,
15929,
15930,
15931,
15932,
15936,
15952,
15953,
15954,
15956,
15963,
15989,
15990,
16011,
16028,
16042,
16060,
16061,
16062,
16063,
16064,
16065,
16151,
16152,
16179,
16180,
16379,
16380,
16457,
16474,
16524,
16775,
16776,
16777,
16778,
16800,
16802,
16816,
16854,
16855,
17008,
17076,
17144,
17161,
17225,
17233,
17256,
17257,
17468,
17500,
17521,
17535,
17546,
17651,
17711,
17767,
17772,
17808,
17842,
17852,
17874,
17888,
17948,
17968,
18063,
18075,
18076,
18141,
18168,
18229,
18338,
18412,
18677,
18678,
18680,
18681,
18682,
18683,
18685,
18686,
18690,
18693,
18694,
18696,
18698,
18728,
18805,
18829,
18831,
18832,
18834,
18835,
18836,
18847,
19044,
19514,
19516,
19556,
19597,
19604,
19622,
19647,
19833,
19921,
20060,
20062,
20063,
20064,
20932,
21174,
21212,
21213,
21214,
21215,
21216,
21217,
21984,
22060,
22062,
22448,
22841,
22871,
22887,
22898,
22917,
22947,
22948,
22949,
22950,
22951,
22952,
23418,
23419,
23420,
22997,
601,
929,
1849,
5348,
5367,
5789,
5790,
5793,
5794,
5795,
5796,
5928,
8206,
9417,
10080,
10081,
10203,
10236,
10237,
10238,
10239,
10818,
10819,
10820,
11580,
11676,
13977,
14016,
14018,
14019,
14341,
14346,
14352,
14697,
14941,
15085,
15382,
15410,
15411,
15412,
15413,
15427,
15481,
15507,
15571,
15628,
15633,
15796,
16128,
16181,
16184,
17009,
17010,
17011,
17012,
17026,
17075,
17533,
17534,
17602,
17949,
18040,
18041,
18060,
18241,
18254,
18679,
18684,
18689,
18692,
18695,
18697,
18780,
18932,
20602,
21268,
21273,
21845,
21875,
21932,
22605,
22606,
22625,
22631,
22636,
22637,
22641,
22642,
22644,
1850,
11978,
12804,
14831,
18624,
21003,
22522,
22856,
22996,
23054,
23191,
23195,
23197,
23467,
23508,
23574,
23576,
23577,
23578,
23759,
23812,
23863,
23877,
23878,
23879,
23880,
23912,
23913,
23914,
24144,
24239,
24241,
24505,
24792,
25113,
25158,
25160,
1361,
3651,
3718,
3831,
10810,
16563,
16581,
18699,
23126,
24850,
24882,
24891,
24892,
24895,
25038,
25041,
25165,
25166,
25246,
25315,
25319,
25741,
25840,
25960,
26246,
26247,
29246,
32547,
32517,
24232,
24248,
24321,
24326,
24446,
24757,
25237,
25323,
25349,
25377,
25406,
25410,
25411,
25412,
25413,
25462,
25465,
25738,
26205,
26310,
26376,
26648,
26791,
26917,
26967,
27231,
27303,
27304,
27307,
27308,
27309,
27310,
27311,
27312,
27455,
27480,
27604,
27766,
27767,
27768,
27769,
27770,
27771,
27772,
27773,
27774,
27775,
27776,
27777,
27778,
27779,
27780,
27781,
27782,
27789,
27858,
27872,
27925,
27951,
27990,
28030,
28089,
28092,
28103,
28179,
28208,
28212,
28280,
28282,
28357,
28401,
28444,
28445,
28498,
28499,
28514,
28515,
28516,
28517,
28561,
28672,
28735,
28765,
28785,
28859,
28860,
28910,
29021,
29022,
29023,
29024,
29050,
29075,
29109,
29110,
29173,
29175,
29183,
29227,
29249,
29265,
29268,
29278,
29324,
29340,
29373,
29393,
29394,
29417,
29445,
29446,
29447,
29448,
29611,
29615,
29621,
29629,
29637,
29701,
29718,
29940,
29955,
29983,
29991,
30000,
30061,
30115,
30295,
30328,
30377,
30390,
30399,
30426,
30427,
30428,
30443,
30449,
30451,
30452,
30462,
30527,
30549,
30595,
30596,
30600,
30601,
30602,
30603,
30677,
30780,
30781,
30782,
30783,
30784,
30785,
30786,
30787,
30794,
30838,
31013,
31014,
31044,
31055,
31071,
31072,
31073,
31074,
31083,
31084,
31086,
31093,
31099,
31125,
31143,
31146,
31156,
31244,
31284,
31286,
31287,
31288,
31289,
31290,
31292,
31301,
31308,
31309,
31311,
31333,
31334,
31395,
31412,
31418,
31419,
31520,
31530,
31534,
31535,
31565,
31587,
31614,
31649,
31650,
31651,
31722,
31734,
31818,
31819,
31820,
31844,
31974,
31998,
32054,
32111,
32120,
32160,
32184,
32239,
32295,
32303,
32312,
32338,
32346,
32357,
32358,
32361,
32363,
32364,
32365,
32377,
32386,
32398,
32400,
32401,
32402,
32409,
32417,
32422,
32429,
32435,
32438,
32443,
32446,
32447,
32471,
32475,
32481,
32483,
32485,
32487,
32491,
32495,
32500,
32501,
32511,
32518,
32521,
32587,
32588,
32593,
32630,
32778,
32797,
32853,
32871,
32845,
32846,
32857,
32865,
32867,
32906,
32913,
32914,
32915,
32927,
32930,
32933,
32934,
33070,
33113,
33118,
33134,
33139,
33147,
33186,
33190,
33196,
33213,
33234,
33241,
33242,
33244,
33264,
33271,
33288,
33293,
33329,
33350,
33351,
33360,
33391,
33392,
33393,
33410,
33411,
33412,
33413,
33432,
33437,
33441,
33449,
33515,
33523,
33524,
33535,
33628,
33651,
33663,
33664,
33667,
33668,
33670,
33692,
33693,
33694,
33724,
33776,
33862,
33883,
33885,
33890,
33909,
33910,
33911,
33954,
33955,
33993,
33994,
33995,
34003,
34014,
34031,
34035,
34071,
34106,
34108,
34109,
34111,
34152,
34166,
34171,
34175,
34297,
34298,
34313,
34332,
35189,
35469,
35470,
36119,
36120,
36124,
36122,
36121,
36114,
36116,
36108,
36118,
36109,
35361,
34995,
34994,
34992,
34990,
35368,
35372,
35321,
36066,
36065,
34796,
34854,
34799,
35144,
34797,
34780,
34445,
34459,
34447,
34455,
34453,
34458,
34454,
34448,
34441,
34450,
34567,
34568,
34497,
34496,
35013,
34451,
34449,
35877,
34564,
34660,
36095,
34444,
34456,
34460,
34461,
34463,
34465,
34466,
34467,
34468,
34469,
34470,
34471,
34472,
34473,
34474,
34475,
36612,
36731,
36954,
36990,
37119,
37120,
37183,
37187,
37215,
37223,
37226,
37540,
37596,
37755,
37813,
38161,
38189,
38453,
38569,
36626,
36627,
37955,
37970,
37972,
37973,
38004,
38008,
38308,
38309,
39010,
37846,
37200,
37188,
37879,
36789,
37950,
38433,
39019,
35074,
36538,
37293,
35654,
39168,
38128,
38402,
38550,
37506,
37959,
38399,
38400,
35653,
35720,
38174,
34515,
39167,
38699,
38582,
38549,
37505,
37958,
38769,
38771,
35652,
35719,
37283,
39166,
38700,
36648,
38583,
35145,
38390,
37504,
37957,
38770,
38772,
34798,
35718,
37037,
36923,
39137,
35438,
35514,
35511,
35447,
35216,
35705,
35686,
35683,
35680,
35692,
35711,
35724,
34442,
35695,
37243,
35350,
35347,
35671,
35689,
34566,
35740,
35708,
35702,
35743,
35734,
35746,
35665,
35662,
35721,
35714,
35728,
35668,
35699,
35674,
35731,
35737,
35439,
35515,
35512,
35448,
35268,
35706,
35687,
35684,
35681,
35693,
35712,
35725,
34443,
35696,
35351,
35348,
35672,
35690,
35615,
37194,
35741,
35709,
35703,
35744,
35735,
35747,
35666,
35663,
35722,
35715,
35729,
35669,
35700,
35675,
35732,
35738,
37244,
35459,
35440,
35516,
35513,
35449,
35269,
35707,
35688,
35685,
35682,
35694,
35713,
35726,
35749,
35697,
35352,
35349,
35673,
35691,
35616,
37193,
35742,
35710,
35704,
35745,
35736,
35748,
35667,
35664,
35723,
35716,
35730,
35670,
35701,
35676,
35733,
35739,
36597,
36598,
36609,
36633,
36701,
38757,
38995,
38589,
38584,
35360,
38462,
38434,
38435,
38436,
38401,
38784,
38785,
37763,
37764,
37829,
38052,
37857,
37317,
37375,
37432,
37443,
37444,
37525,
37526,
37530,
37535,
37632,
37633,
37820,
38019,
38020,
38021,
38129,
38216,
38367,
38386,
38388,
38572,
38590,
38607,
38609,
38610,
38641,
38701,
38702,
38773,
38774,
38857,
38883,
39011,
39012,
39013,
39120,
39121,
39122,
39125,
39189,
39231,
39232,
39233,
39234,
39271,
39302,
39303,
39304,
39305,
39306,
39307,
39654,
39712
};  --Boss id 可自行添加
local T = {}
local function KilledCreature(event, player, enemy)
    if(not enemy:IsWorldBoss()) then return end 
    local pguid, cguid = player:GetGUIDLow(), enemy:GetGUIDLow() 
   
    local ktime = 0
    if(T[pguid] and T[pguid][cguid]) then
        ktime = os.time() - T[pguid][cguid] 
        T[pguid][cguid] = nil 
    end
       
    local participants
        if(player:IsInGroup()) then
                participants = "和他的战友 (合计: "..player:GetGroup():GetMembersCount().." 人, "
        else
                participants = "独自一人! ("
        end
   
    SendWorldMessage("|cffcc0000[PVE]|cffff9900 |Hplayer:"..player:GetName().."|h["..player:GetName().."]|h|r |cffcc0000"..participants.."使用了: "..ktime.." 秒)|杀死了 ["..enemy:GetName().."] |r")
end
local function EnterCombat(event, player, enemy)
    if(enemy == nil) then return end
    if(not enemy:IsWorldBoss()) then return end 
    local pguid, cguid = player:GetGUIDLow(), enemy:GetGUIDLow()
   
    if(not T[pguid]) then 
        T[pguid] = {} 
    elseif(T[pguid][cguid]) then 
        return 
    end
    T[pguid][cguid] = os.time() 
end
local function LeaveCombat(event, player)
        if(T[player:GetGUIDLow()]) then
                T[player:GetGUIDLow()] = nil 
        end
end

function Notice (event, player, enemy)
	if(enemy:IsWorldBoss()) then return end 
		for k,v in pairs (boss) do
			if ( enemy:GetEntry() == v) then
					local ktime = 0 
						if(T[pguid] and T[pguid][cguid]) then
							ktime = os.time() - T[pguid][cguid] 
							T[pguid][cguid] = nil 
						end
					local participants
						if(player:IsInGroup()) then
								participants = "和他的战友 (合计: "..player:GetGroup():GetMembersCount().." 人, "
						else
								participants = "独自一人! ("
						end
				   
					SendWorldMessage("|cffcc0000[PVE]|cffff9900 |Hplayer:"..player:GetName().."|h["..player:GetName().."]|h|r |cffcc0000"..participants.."使用了: "..ktime.." 秒)|杀死了 ["..enemy:GetName().."] |r")
			end
		end
end




RegisterPlayerEvent(7, Notice)
RegisterPlayerEvent(7, KilledCreature) 
RegisterPlayerEvent(33, EnterCombat) 
RegisterPlayerEvent(34, LeaveCombat) 