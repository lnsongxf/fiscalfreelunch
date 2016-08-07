//Figure 3
//Multiplier varies with the level of government spending
//against the backdrop of an eight quarter liquidity trap


//Consumption taste shock
shocks;
var eps_con;
periods 1:1;
values(-sig_con);
end;

/////////////////////////////////////////////////////////////////
//Change in government spending shock (loop parameter sig_gov)



A = zeros(11,42);
@#define x = ["-0.55155","-0.54955","-0.54755","-0.54555","-0.54354","-0.54154","-0.53954","-0.53754","-0.53554","-0.53353","-0.53153","-0.52953","-0.52753","-0.52553","-0.52352","-0.52152","-0.51952","-0.51752","-0.51552","-0.51351","-0.51151","-0.50951","-0.50751","-0.50551","-0.5035","-0.5015","-0.4995","-0.4975","-0.4955","-0.49349","-0.49149","-0.48949","-0.48749","-0.48549","-0.48348","-0.48148","-0.47948","-0.47748","-0.47548","-0.47347","-0.47147","-0.46947","-0.46747","-0.46547","-0.46346","-0.46146","-0.45946","-0.45746","-0.45546","-0.45345","-0.45145","-0.44945","-0.44745","-0.44545","-0.44344","-0.44144","-0.43944","-0.43744","-0.43544","-0.43343","-0.43143","-0.42943","-0.42743","-0.42543","-0.42342","-0.42142","-0.41942","-0.41742","-0.41542","-0.41341","-0.41141","-0.40941","-0.40741","-0.40541","-0.4034","-0.4014","-0.3994","-0.3974","-0.3954","-0.39339","-0.39139","-0.38939","-0.38739","-0.38539","-0.38338","-0.38138","-0.37938","-0.37738","-0.37538","-0.37337","-0.37137","-0.36937","-0.36737","-0.36537","-0.36336","-0.36136","-0.35936","-0.35736","-0.35536","-0.35335","-0.35135","-0.34935","-0.34735","-0.34535","-0.34334","-0.34134","-0.33934","-0.33734","-0.33534","-0.33333","-0.33133","-0.32933","-0.32733","-0.32533","-0.32332","-0.32132","-0.31932","-0.31732","-0.31532","-0.31331","-0.31131","-0.30931","-0.30731","-0.30531","-0.3033","-0.3013","-0.2993","-0.2973","-0.2953","-0.29329","-0.29129","-0.28929","-0.28729","-0.28529","-0.28328","-0.28128","-0.27928","-0.27728","-0.27528","-0.27327","-0.27127","-0.26927","-0.26727","-0.26527","-0.26326","-0.26126","-0.25926","-0.25726","-0.25526","-0.25325","-0.25125","-0.24925","-0.24725","-0.24525","-0.24324","-0.24124","-0.23924","-0.23724","-0.23524","-0.23323","-0.23123","-0.22923","-0.22723","-0.22523","-0.22322","-0.22122","-0.21922","-0.21722","-0.21522","-0.21321","-0.21121","-0.20921","-0.20721","-0.20521","-0.2032","-0.2012","-0.1992","-0.1972","-0.1952","-0.19319","-0.19119","-0.18919","-0.18719","-0.18519","-0.18318","-0.18118","-0.17918","-0.17718","-0.17518","-0.17317","-0.17117","-0.16917","-0.16717","-0.16517","-0.16316","-0.16116","-0.15916","-0.15716","-0.15516","-0.15315","-0.15115","-0.14915","-0.14715","-0.14515","-0.14314","-0.14114","-0.13914","-0.13714","-0.13514","-0.13313","-0.13113","-0.12913","-0.12713","-0.12513","-0.12312","-0.12112","-0.11912","-0.11712","-0.11512","-0.11311","-0.11111","-0.10911","-0.10711","-0.10511","-0.1031","-0.1011","-0.099099","-0.097097","-0.095095","-0.093093","-0.091091","-0.089089","-0.087087","-0.085085","-0.083083","-0.081081","-0.079079","-0.077077","-0.075075","-0.073073","-0.071071","-0.069069","-0.067067","-0.065065","-0.063063","-0.061061","-0.059059","-0.057057","-0.055055","-0.053053","-0.051051","-0.049049","-0.047047","-0.045045","-0.043043","-0.041041","-0.039039","-0.037037","-0.035035","-0.033033","-0.031031","-0.029029","-0.027027","-0.025025","-0.023023","-0.021021","-0.019019","-0.017017","-0.015015","-0.013013","-0.011011","-0.009009","-0.007007","-0.005005","-0.003003","-0.001001","0.001001","0.003003","0.005005","0.007007","0.009009","0.011011","0.013013","0.015015","0.017017","0.019019","0.021021","0.023023","0.025025","0.027027","0.029029","0.031031","0.033033","0.035035","0.037037","0.039039","0.041041","0.043043","0.045045","0.047047","0.049049","0.051051","0.053053","0.055055","0.057057","0.059059","0.061061","0.063063","0.065065","0.067067","0.069069","0.071071","0.073073","0.075075","0.077077","0.079079","0.081081","0.083083","0.085085","0.087087","0.089089","0.091091","0.093093","0.095095","0.097097","0.099099","0.1011","0.1031","0.10511","0.10711","0.10911","0.11111","0.11311","0.11512","0.11712","0.11912","0.12112","0.12312","0.12513","0.12713","0.12913","0.13113","0.13313","0.13514","0.13714","0.13914","0.14114","0.14314","0.14515","0.14715","0.14915","0.15115","0.15315","0.15516","0.15716","0.15916","0.16116","0.16316","0.16517","0.16717","0.16917","0.17117","0.17317","0.17518","0.17718","0.17918","0.18118","0.18318","0.18519","0.18719","0.18919","0.19119","0.19319","0.1952","0.1972","0.1992","0.2012","0.2032","0.20521","0.20721","0.20921","0.21121","0.21321","0.21522","0.21722","0.21922","0.22122","0.22322","0.22523","0.22723","0.22923","0.23123","0.23323","0.23524","0.23724","0.23924","0.24124","0.24324","0.24525","0.24725","0.24925","0.25125","0.25325","0.25526","0.25726","0.25926","0.26126","0.26326","0.26527","0.26727","0.26927","0.27127","0.27327","0.27528","0.27728","0.27928","0.28128","0.28328","0.28529","0.28729","0.28929","0.29129","0.29329","0.2953","0.2973","0.2993","0.3013","0.3033","0.30531","0.30731","0.30931","0.31131","0.31331","0.31532","0.31732","0.31932","0.32132","0.32332","0.32533","0.32733","0.32933","0.33133","0.33333","0.33534","0.33734","0.33934","0.34134","0.34334","0.34535","0.34735","0.34935","0.35135","0.35335","0.35536","0.35736","0.35936","0.36136","0.36336","0.36537","0.36737","0.36937","0.37137","0.37337","0.37538","0.37738","0.37938","0.38138","0.38338","0.38539","0.38739","0.38939","0.39139","0.39339","0.3954","0.3974","0.3994","0.4014","0.4034","0.40541","0.40741","0.40941","0.41141","0.41341","0.41542","0.41742","0.41942","0.42142","0.42342","0.42543","0.42743","0.42943","0.43143","0.43343","0.43544","0.43744","0.43944","0.44144","0.44344","0.44545","0.44745","0.44945","0.45145","0.45345","0.45546","0.45746","0.45946","0.46146","0.46346","0.46547","0.46747","0.46947","0.47147","0.47347","0.47548","0.47748","0.47948","0.48148","0.48348","0.48549","0.48749","0.48949","0.49149","0.49349","0.4955","0.4975","0.4995","0.5015","0.5035","0.50551","0.50751","0.50951","0.51151","0.51351","0.51552","0.51752","0.51952","0.52152","0.52352","0.52553","0.52753","0.52953","0.53153","0.53353","0.53554","0.53754","0.53954","0.54154","0.54354","0.54555","0.54755","0.54955","0.55155"]

@#for sig_gov_val in x
	sig_gov = @{sig_gov_val};

	shocks;
	var eps_gov;
	periods 1:1;
	values (sig_gov);
	end;

	simul(periods=40);
	A = cat(3, A, oo_.endo_simul);
@#endfor

//Remove the first layer because it consists only of zeros
A = A(:,:,2:end);

liqduration = zeros(size(A,3),1);
for i = 1:size(A,3)
	x = sum(A(3, 1:end, i) == -ibar);
	liqduration(i) = x;
end

x = [-0.55155,-0.54955,-0.54755,-0.54555,-0.54354,-0.54154,-0.53954,-0.53754,-0.53554,-0.53353,-0.53153,-0.52953,-0.52753,-0.52553,-0.52352,-0.52152,-0.51952,-0.51752,-0.51552,-0.51351,-0.51151,-0.50951,-0.50751,-0.50551,-0.5035,-0.5015,-0.4995,-0.4975,-0.4955,-0.49349,-0.49149,-0.48949,-0.48749,-0.48549,-0.48348,-0.48148,-0.47948,-0.47748,-0.47548,-0.47347,-0.47147,-0.46947,-0.46747,-0.46547,-0.46346,-0.46146,-0.45946,-0.45746,-0.45546,-0.45345,-0.45145,-0.44945,-0.44745,-0.44545,-0.44344,-0.44144,-0.43944,-0.43744,-0.43544,-0.43343,-0.43143,-0.42943,-0.42743,-0.42543,-0.42342,-0.42142,-0.41942,-0.41742,-0.41542,-0.41341,-0.41141,-0.40941,-0.40741,-0.40541,-0.4034,-0.4014,-0.3994,-0.3974,-0.3954,-0.39339,-0.39139,-0.38939,-0.38739,-0.38539,-0.38338,-0.38138,-0.37938,-0.37738,-0.37538,-0.37337,-0.37137,-0.36937,-0.36737,-0.36537,-0.36336,-0.36136,-0.35936,-0.35736,-0.35536,-0.35335,-0.35135,-0.34935,-0.34735,-0.34535,-0.34334,-0.34134,-0.33934,-0.33734,-0.33534,-0.33333,-0.33133,-0.32933,-0.32733,-0.32533,-0.32332,-0.32132,-0.31932,-0.31732,-0.31532,-0.31331,-0.31131,-0.30931,-0.30731,-0.30531,-0.3033,-0.3013,-0.2993,-0.2973,-0.2953,-0.29329,-0.29129,-0.28929,-0.28729,-0.28529,-0.28328,-0.28128,-0.27928,-0.27728,-0.27528,-0.27327,-0.27127,-0.26927,-0.26727,-0.26527,-0.26326,-0.26126,-0.25926,-0.25726,-0.25526,-0.25325,-0.25125,-0.24925,-0.24725,-0.24525,-0.24324,-0.24124,-0.23924,-0.23724,-0.23524,-0.23323,-0.23123,-0.22923,-0.22723,-0.22523,-0.22322,-0.22122,-0.21922,-0.21722,-0.21522,-0.21321,-0.21121,-0.20921,-0.20721,-0.20521,-0.2032,-0.2012,-0.1992,-0.1972,-0.1952,-0.19319,-0.19119,-0.18919,-0.18719,-0.18519,-0.18318,-0.18118,-0.17918,-0.17718,-0.17518,-0.17317,-0.17117,-0.16917,-0.16717,-0.16517,-0.16316,-0.16116,-0.15916,-0.15716,-0.15516,-0.15315,-0.15115,-0.14915,-0.14715,-0.14515,-0.14314,-0.14114,-0.13914,-0.13714,-0.13514,-0.13313,-0.13113,-0.12913,-0.12713,-0.12513,-0.12312,-0.12112,-0.11912,-0.11712,-0.11512,-0.11311,-0.11111,-0.10911,-0.10711,-0.10511,-0.1031,-0.1011,-0.099099,-0.097097,-0.095095,-0.093093,-0.091091,-0.089089,-0.087087,-0.085085,-0.083083,-0.081081,-0.079079,-0.077077,-0.075075,-0.073073,-0.071071,-0.069069,-0.067067,-0.065065,-0.063063,-0.061061,-0.059059,-0.057057,-0.055055,-0.053053,-0.051051,-0.049049,-0.047047,-0.045045,-0.043043,-0.041041,-0.039039,-0.037037,-0.035035,-0.033033,-0.031031,-0.029029,-0.027027,-0.025025,-0.023023,-0.021021,-0.019019,-0.017017,-0.015015,-0.013013,-0.011011,-0.009009,-0.007007,-0.005005,-0.003003,-0.001001,0.001001,0.003003,0.005005,0.007007,0.009009,0.011011,0.013013,0.015015,0.017017,0.019019,0.021021,0.023023,0.025025,0.027027,0.029029,0.031031,0.033033,0.035035,0.037037,0.039039,0.041041,0.043043,0.045045,0.047047,0.049049,0.051051,0.053053,0.055055,0.057057,0.059059,0.061061,0.063063,0.065065,0.067067,0.069069,0.071071,0.073073,0.075075,0.077077,0.079079,0.081081,0.083083,0.085085,0.087087,0.089089,0.091091,0.093093,0.095095,0.097097,0.099099,0.1011,0.1031,0.10511,0.10711,0.10911,0.11111,0.11311,0.11512,0.11712,0.11912,0.12112,0.12312,0.12513,0.12713,0.12913,0.13113,0.13313,0.13514,0.13714,0.13914,0.14114,0.14314,0.14515,0.14715,0.14915,0.15115,0.15315,0.15516,0.15716,0.15916,0.16116,0.16316,0.16517,0.16717,0.16917,0.17117,0.17317,0.17518,0.17718,0.17918,0.18118,0.18318,0.18519,0.18719,0.18919,0.19119,0.19319,0.1952,0.1972,0.1992,0.2012,0.2032,0.20521,0.20721,0.20921,0.21121,0.21321,0.21522,0.21722,0.21922,0.22122,0.22322,0.22523,0.22723,0.22923,0.23123,0.23323,0.23524,0.23724,0.23924,0.24124,0.24324,0.24525,0.24725,0.24925,0.25125,0.25325,0.25526,0.25726,0.25926,0.26126,0.26326,0.26527,0.26727,0.26927,0.27127,0.27327,0.27528,0.27728,0.27928,0.28128,0.28328,0.28529,0.28729,0.28929,0.29129,0.29329,0.2953,0.2973,0.2993,0.3013,0.3033,0.30531,0.30731,0.30931,0.31131,0.31331,0.31532,0.31732,0.31932,0.32132,0.32332,0.32533,0.32733,0.32933,0.33133,0.33333,0.33534,0.33734,0.33934,0.34134,0.34334,0.34535,0.34735,0.34935,0.35135,0.35335,0.35536,0.35736,0.35936,0.36136,0.36336,0.36537,0.36737,0.36937,0.37137,0.37337,0.37538,0.37738,0.37938,0.38138,0.38338,0.38539,0.38739,0.38939,0.39139,0.39339,0.3954,0.3974,0.3994,0.4014,0.4034,0.40541,0.40741,0.40941,0.41141,0.41341,0.41542,0.41742,0.41942,0.42142,0.42342,0.42543,0.42743,0.42943,0.43143,0.43343,0.43544,0.43744,0.43944,0.44144,0.44344,0.44545,0.44745,0.44945,0.45145,0.45345,0.45546,0.45746,0.45946,0.46146,0.46346,0.46547,0.46747,0.46947,0.47147,0.47347,0.47548,0.47748,0.47948,0.48148,0.48348,0.48549,0.48749,0.48949,0.49149,0.49349,0.4955,0.4975,0.4995,0.5015,0.5035,0.50551,0.50751,0.50951,0.51151,0.51351,0.51552,0.51752,0.51952,0.52152,0.52352,0.52553,0.52753,0.52953,0.53153,0.53353,0.53554,0.53754,0.53954,0.54154,0.54354,0.54555,0.54755,0.54955,0.55155]


/////////////////////////////////////////////////////////////////
//Plotting the liquidity trap duration and the change in government spending (step function)
figure;
plot(x, liqduration, 'b', 'linewidth',3)
ylabel('Liquidity trap duration', 'FontSize',12)
xlabel(gca,'% Change in Govt Spend (Share of GDP)','FontSize',12)
set(gca,'Xlim',[-0.55,0.55]);
set(gca,'XTick',[-0.5:0.25:0.5]);
set(gca,'XTickLabel', {'-10' , '-5' , '0', '5' , '10'});
hold off;


/////////////////////////////////////////////////////////////////
//         Figure 3: Average vs. Marginal Multiplier           //
////////////////////////////////////////////////////////////////

//Multiplier for every value x (Government spending shocks)
//Exctract the values for y1 and g1 for each simulation
y = zeros(1, size(A,3));
g = zeros(1, size(A,3));

for i = 1:size(A,3)
z = A(10,2,i);
y(i) = z;

z = A(8,2,i);
g(i) = z;
end;

//Calculate the marginal government spending multiplier
mul = zeros((length(y)-1),1);

for i = 1:(length(y)-1)
mul(i) = ((y(i+1) - y(i))/ (g(i+1) - g(i))) * 1/shrgy;
end

//Combine the liquidity trap duration and multiplier into a single vector
// liqmul = [mul, liqduration(1:(length(liqduration)-1)), x]; // delete

z = length(x)-1

liqmul = [transpose(x(1:z)), transpose(y(1:z)), transpose(g(1:z)), mul, liqduration(1:(length(x)-1))];
liqmul = mat2dataset(liqmul, 'VarNames', {'shock', 'y', 'g', 'multiplier', 'duration'} );


//Calculate the average government spending multiplier
// Find the smaller shock
m = find(liqmul.shock ==  min(abs(liqmul.shock)));

avgmul = zeros(length(x)-1, 1);
for i = m:length(liqmul);
	z =  (y(i) - y(m))/(g(i) - g(m)) * (1/shrgy);
	avgmul(i) = z;
end
avgmul(avgmul == 0) = NaN;
avgmul = mat2dataset(avgmul, 'VarNames', {'averagemul'});

liqmul = cat(2, liqmul, avgmul)


//DROP ROWS:exclude multiplier where g(i) and g(i+1) are in different liquidty traps
toincl = zeros((length(liqmul)-1),1);
for i = 1:(length(liqmul)-1)
	toincl(i) = liqmul.duration (i) == liqmul.duration(i+1);
end;

toincl = mat2dataset(toincl, 'VarNames', {'toinclude'})

liqmul = cat(2, liqmul(1:(length(liqmul)-1),:), toincl);

droprow = find(liqmul.toinclude == 0);

// Drop rows in which y1 and y0 are in different liquidity traps, i.e. toinclude columns equals zero
liqmul(droprow,:) = [];

//-----------------------------------------------


/////////////////////////////////////////////////////////////////
//Plotting Figure 3 to show the spending multipliers and government debt responses
figure;
plot(liqmul.shock, liqmul.multiplier, 'b',    'linewidth',5); hold on;
plot(liqmul.shock, liqmul.averagemul, 'g -.', 'linewidth',5);
title('No Inflation Response','fontweight','bold','FontSize',18)
legend('Marginal multiplier','Average multiplier','location','SouthEast');
ax1 = gca;
ylabel(gca,'Government Spending Multiplier','FontSize',16);
set(gca,'Ylim',[0,0.8]);                                                       // just activate for 'No Inflation Response'
set(gca,'YTick',[0:0.2:0.8]);                                                  // just activate for 'No Inflation Response'
xlabel(gca,'% Change in Govt Spend (Share of GDP)','FontSize',16)
set(gca,'Xlim',[-0.55,0.55]);
set(gca,'XTick',[-0.5:0.25:0.5]);
set(gca,'XTickLabel', {'-10' , '-5' , '0', '5' , '10'});
hold off;


/////////////////////////////////////////////////////////////////
//                    Government Debt to Actual GDP            //
////////////////////////////////////////////////////////////////
debtgov = zeros(size(A,3),1);
for i = 1:size(A,3)
	debtgov(i) = A(6, 2, i);
end;

pbalance = zeros((size(A,3)-1),1)
for i = 1:(length(y)-1)
	pbalance(i) = ((debtgov(i+1) - debtgov(i))/ (g(i+1) - g(i)));
end;

//Same steps we did before to the multiplier
liq_pbalance = [pbalance,liqduration(1:(length(liqduration)-1))]

//Calculations to get the step fuction of Figure 3 (Budgetary impact of government spending)
//Create vector on Government Debt for both shocks

toincl = zeros((length(liqmul)-1),1);
for i = 1:(length(liqmul)-1)
	toincl(i) = liq_pbalance(i,2) == liq_pbalance(i+1,2);
end;

droprow = find(toincl == 0);

// Drop rows in which y1 and y0 are in different liquidity traps
pbalance(droprow,:) = [];





// ///////////////////////////////////////////////////////////////
// // COMMENT THE CODE BELOW !!!IN!!! IF IT'S THE FIRST YOU'RE RUNNING THAT
//
// // Create mul_various if does not exist
// mul_various = zeros(length(mul),1,3)
// pbalance_various = zeros(length(pbalance),1,3)
// save mul_file mul_various
// save  pbalance_file pbalance_various


// // // COMMENT THE CODE !!!OUT!!! IN IF IT'S THE FIRST YOU'RE RUNNING THAT
// //
// load mul_file.mat;
// load pbalance_file.mat;
//

load mul_file.mat;
load pbalance_file.mat;

//Create a matrix with the variables of interest

if xip == 1
		mul_various(:,:,1) = mul
		pbalance_various(:,:,1) = pbalance
elseif xip == 0.9
				mul_various(:,:,2) = mul
				pbalance_various(:,:,2) = pbalance
elseif xip == 0.8
		mul_various(:,:,3) = mul
		pbalance_various(:,:,3) = pbalance
else
		mul_various(:,:,4) = mul
		pbalance_various(:,:,4) = pbalance
end

save mul_file mul_various
save pbalance_file pbalance_various
save x_file x

