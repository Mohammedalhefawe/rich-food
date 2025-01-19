import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
/*
CustomPaint(
size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
)
*/
//Copy this CustomPainter code to the Bottom of the File
class FrizoConfusedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2784535, size.height * 0.2490940);
    path_0.cubicTo(
        size.width * 0.2784535,
        size.height * 0.2490940,
        size.width * 0.2230845,
        size.height * 0.3222260,
        size.width * 0.2211450,
        size.height * 0.3944360);
    path_0.cubicTo(
        size.width * 0.2211450,
        size.height * 0.3944360,
        size.width * 0.2357840,
        size.height * 0.3241155,
        size.width * 0.2784535,
        size.height * 0.2490940);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4523155, size.height * 0.3803380);
    path_1.cubicTo(
        size.width * 0.4588730,
        size.height * 0.3754995,
        size.width * 0.4668620,
        size.height * 0.3721815,
        size.width * 0.4747125,
        size.height * 0.3701075);
    path_1.cubicTo(
        size.width * 0.4931840,
        size.height * 0.3652690,
        size.width * 0.5116100,
        size.height * 0.3693705,
        size.width * 0.5270800,
        size.height * 0.3803380);
    path_1.cubicTo(
        size.width * 0.5298500,
        size.height * 0.3822735,
        size.width * 0.5325300,
        size.height * 0.3777110,
        size.width * 0.5297600,
        size.height * 0.3757760);
    path_1.cubicTo(
        size.width * 0.5136900,
        size.height * 0.3643935,
        size.width * 0.4943385,
        size.height * 0.3601540,
        size.width * 0.4750820,
        size.height * 0.3646240);
    path_1.cubicTo(
        size.width * 0.4662155,
        size.height * 0.3666515,
        size.width * 0.4569335,
        size.height * 0.3703380,
        size.width * 0.4495910,
        size.height * 0.3757760);
    path_1.cubicTo(
        size.width * 0.4469125,
        size.height * 0.3778035,
        size.width * 0.4494985,
        size.height * 0.3823655,
        size.width * 0.4522690,
        size.height * 0.3803380);
    path_1.lineTo(size.width * 0.4523155, size.height * 0.3803380);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4826585, size.height * 0.09287850);
    path_2.cubicTo(
        size.width * 0.4826585,
        size.height * 0.09287850,
        size.width * 0.5049150,
        size.height * 0.08416900,
        size.width * 0.5039000,
        size.height * 0.1347665);
    path_2.cubicTo(
        size.width * 0.5039000,
        size.height * 0.1347665,
        size.width * 0.5151700,
        size.height * 0.09601200,
        size.width * 0.5355350,
        size.height * 0.1001130);
    path_2.cubicTo(
        size.width * 0.5559000,
        size.height * 0.1042605,
        size.width * 0.5208950,
        size.height * 0.1463330,
        size.width * 0.5208950,
        size.height * 0.1463330);
    path_2.cubicTo(
        size.width * 0.5208950,
        size.height * 0.1463330,
        size.width * 0.5580250,
        size.height * 0.1137075,
        size.width * 0.5725700,
        size.height * 0.1309420);
    path_2.cubicTo(
        size.width * 0.5871150,
        size.height * 0.1481765,
        size.width * 0.5314700,
        size.height * 0.1625080,
        size.width * 0.5314700,
        size.height * 0.1625080);
    path_2.cubicTo(
        size.width * 0.5314700,
        size.height * 0.1625080,
        size.width * 0.6690400,
        size.height * 0.1248130,
        size.width * 0.7323050,
        size.height * 0.2333355);
    path_2.cubicTo(
        size.width * 0.7323050,
        size.height * 0.2333355,
        size.width * 0.6592000,
        size.height * 0.1397895,
        size.width * 0.5244050,
        size.height * 0.1721390);
    path_2.cubicTo(
        size.width * 0.5244050,
        size.height * 0.1721390,
        size.width * 0.5118450,
        size.height * 0.1651805,
        size.width * 0.5298100,
        size.height * 0.1586830);
    path_2.cubicTo(
        size.width * 0.5477700,
        size.height * 0.1521395,
        size.width * 0.5695200,
        size.height * 0.1417250,
        size.width * 0.5664300,
        size.height * 0.1342595);
    path_2.cubicTo(
        size.width * 0.5633350,
        size.height * 0.1267485,
        size.width * 0.5141550,
        size.height * 0.1552730,
        size.width * 0.5141550,
        size.height * 0.1552730);
    path_2.cubicTo(
        size.width * 0.5141550,
        size.height * 0.1552730,
        size.width * 0.5367350,
        size.height * 0.1146750,
        size.width * 0.5274550,
        size.height * 0.1098365);
    path_2.cubicTo(
        size.width * 0.5182150,
        size.height * 0.1049980,
        size.width * 0.5009900,
        size.height * 0.1500660,
        size.width * 0.5009900,
        size.height * 0.1500660);
    path_2.cubicTo(
        size.width * 0.5009900,
        size.height * 0.1500660,
        size.width * 0.5049650,
        size.height * 0.09886900,
        size.width * 0.4826125,
        size.height * 0.09297050);
    path_2.lineTo(size.width * 0.4826585, size.height * 0.09287850);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2950780, size.height * 0.2060555);
    path_3.cubicTo(
        size.width * 0.2950780,
        size.height * 0.2060555,
        size.width * 0.3498005,
        size.height * 0.1210810,
        size.width * 0.4784565,
        size.height * 0.1624625);
    path_3.cubicTo(
        size.width * 0.4784565,
        size.height * 0.1624625,
        size.width * 0.3678105,
        size.height * 0.1441215,
        size.width * 0.2950780,
        size.height * 0.2060555);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.2364295, size.height * 0.5526850);
    path_4.cubicTo(
        size.width * 0.2364295,
        size.height * 0.5526850,
        size.width * 0.09631850,
        size.height * 0.5276150,
        size.width * 0.09050000,
        size.height * 0.4548530);
    path_4.cubicTo(
        size.width * 0.08537400,
        size.height * 0.3908455,
        size.width * 0.2547410,
        size.height * 0.3258185,
        size.width * 0.2514160,
        size.height * 0.3144825);
    path_4.cubicTo(
        size.width * 0.2486450,
        size.height * 0.3049435,
        size.width * 0.2792070,
        size.height * 0.3934295,
        size.width * 0.2759285,
        size.height * 0.3867935);
    path_4.lineTo(size.width * 0.2642060, size.height * 0.3694900);
    path_4.cubicTo(
        size.width * 0.2642060,
        size.height * 0.3694900,
        size.width * 0.2345680,
        size.height * 0.3706905,
        size.width * 0.2258400,
        size.height * 0.3635475);
    path_4.cubicTo(
        size.width * 0.2142490,
        size.height * 0.3541470,
        size.width * 0.2588585,
        size.height * 0.3599535,
        size.width * 0.2588585,
        size.height * 0.3599535);
    path_4.cubicTo(
        size.width * 0.2588585,
        size.height * 0.3599535,
        size.width * 0.2290730,
        size.height * 0.3518890,
        size.width * 0.2332750,
        size.height * 0.3444700);
    path_4.cubicTo(
        size.width * 0.2374775,
        size.height * 0.3370505,
        size.width * 0.2718350,
        size.height * 0.3524880,
        size.width * 0.2718350,
        size.height * 0.3524880);
    path_4.cubicTo(
        size.width * 0.2718350,
        size.height * 0.3524880,
        size.width * 0.2523935,
        size.height * 0.3395390,
        size.width * 0.2556260,
        size.height * 0.3370970);
    path_4.cubicTo(
        size.width * 0.2607980,
        size.height * 0.3331335,
        size.width * 0.2922000,
        size.height * 0.3522115,
        size.width * 0.2922000,
        size.height * 0.3522115);
    path_4.cubicTo(
        size.width * 0.2922000,
        size.height * 0.3522115,
        size.width * 0.3080860,
        size.height * 0.3335945,
        size.width * 0.3090555,
        size.height * 0.3478340);
    path_4.cubicTo(
        size.width * 0.3100255,
        size.height * 0.3620730,
        size.width * 0.3001890,
        size.height * 0.3667275,
        size.width * 0.3001890,
        size.height * 0.3667275);
    path_4.cubicTo(
        size.width * 0.2995890,
        size.height * 0.3675105,
        size.width * 0.1629665,
        size.height * 0.3867935,
        size.width * 0.1469810,
        size.height * 0.4452820);
    path_4.cubicTo(
        size.width * 0.1427185,
        size.height * 0.4899460,
        size.width * 0.2364760,
        size.height * 0.4952630,
        size.width * 0.2364760,
        size.height * 0.4952630);
    path_4.lineTo(size.width * 0.2364760, size.height * 0.5526850);
    path_4.lineTo(size.width * 0.2364295, size.height * 0.5526850);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.7408050, size.height * 0.5488100);
    path_5.cubicTo(
        size.width * 0.7408050,
        size.height * 0.5488100,
        size.width * 0.8397200,
        size.height * 0.5602350,
        size.width * 0.8455400,
        size.height * 0.4874735);
    path_5.cubicTo(
        size.width * 0.8506650,
        size.height * 0.4234660,
        size.width * 0.8504800,
        size.height * 0.4201020,
        size.width * 0.8538050,
        size.height * 0.4087660);
    path_5.cubicTo(
        size.width * 0.8565750,
        size.height * 0.3992270,
        size.width * 0.8604100,
        size.height * 0.3899645,
        size.width * 0.8636850,
        size.height * 0.3833290);
    path_5.lineTo(size.width * 0.8715850, size.height * 0.3707025);
    path_5.cubicTo(
        size.width * 0.8715850,
        size.height * 0.3707025,
        size.width * 0.8989650,
        size.height * 0.3713935,
        size.width * 0.9076950,
        size.height * 0.3642510);
    path_5.cubicTo(
        size.width * 0.9192850,
        size.height * 0.3548505,
        size.width * 0.8746750,
        size.height * 0.3606565,
        size.width * 0.8746750,
        size.height * 0.3606565);
    path_5.cubicTo(
        size.width * 0.8746750,
        size.height * 0.3606565,
        size.width * 0.9044650,
        size.height * 0.3525925,
        size.width * 0.9002600,
        size.height * 0.3451730);
    path_5.cubicTo(
        size.width * 0.8960600,
        size.height * 0.3377540,
        size.width * 0.8617000,
        size.height * 0.3531915,
        size.width * 0.8617000,
        size.height * 0.3531915);
    path_5.cubicTo(
        size.width * 0.8617000,
        size.height * 0.3531915,
        size.width * 0.8811400,
        size.height * 0.3402425,
        size.width * 0.8779100,
        size.height * 0.3378000);
    path_5.cubicTo(
        size.width * 0.8727400,
        size.height * 0.3338370,
        size.width * 0.8413350,
        size.height * 0.3529150,
        size.width * 0.8413350,
        size.height * 0.3529150);
    path_5.cubicTo(
        size.width * 0.8413350,
        size.height * 0.3529150,
        size.width * 0.8254500,
        size.height * 0.3342980,
        size.width * 0.8244800,
        size.height * 0.3485370);
    path_5.cubicTo(
        size.width * 0.8235100,
        size.height * 0.3627305,
        size.width * 0.8333450,
        size.height * 0.3674305,
        size.width * 0.8333450,
        size.height * 0.3674305);
    path_5.cubicTo(
        size.width * 0.8339450,
        size.height * 0.3682140,
        size.width * 0.8184750,
        size.height * 0.3752185,
        size.width * 0.8092400,
        size.height * 0.4525895);
    path_5.cubicTo(
        size.width * 0.8003750,
        size.height * 0.5269650,
        size.width * 0.7407550,
        size.height * 0.4942935,
        size.width * 0.7407550,
        size.height * 0.4942935);
    path_5.lineTo(size.width * 0.7407550, size.height * 0.5488100);
    path_5.lineTo(size.width * 0.7408050, size.height * 0.5488100);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.4228565, size.height * 0.6744750);
    path_6.lineTo(size.width * 0.4706520, size.height * 0.8908300);
    path_6.cubicTo(
        size.width * 0.4706520,
        size.height * 0.8908300,
        size.width * 0.3911775,
        size.height * 0.8792650,
        size.width * 0.3927475,
        size.height * 0.8977900);
    path_6.cubicTo(
        size.width * 0.3943175,
        size.height * 0.9162700,
        size.width * 0.4961430,
        size.height * 0.8977900,
        size.width * 0.4961430,
        size.height * 0.8977900);
    path_6.lineTo(size.width * 0.4961430, size.height * 0.6691750);
    path_6.lineTo(size.width * 0.4228565, size.height * 0.6745700);
    path_6.lineTo(size.width * 0.4228565, size.height * 0.6744750);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.6049400, size.height * 0.6744750);
    path_7.lineTo(size.width * 0.5571450, size.height * 0.8908300);
    path_7.cubicTo(
        size.width * 0.5571450,
        size.height * 0.8908300,
        size.width * 0.6366200,
        size.height * 0.8792650,
        size.width * 0.6350500,
        size.height * 0.8977900);
    path_7.cubicTo(
        size.width * 0.6334800,
        size.height * 0.9162700,
        size.width * 0.5317000,
        size.height * 0.8977900,
        size.width * 0.5317000,
        size.height * 0.8977900);
    path_7.lineTo(size.width * 0.5317000, size.height * 0.6691750);
    path_7.lineTo(size.width * 0.6049900, size.height * 0.6745700);
    path_7.lineTo(size.width * 0.6049400, size.height * 0.6744750);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.3635165, size.height * 0.6669150);
    path_8.cubicTo(
        size.width * 0.3635165,
        size.height * 0.6669150,
        size.width * 0.3630085,
        size.height * 0.6706050,
        size.width * 0.3625930,
        size.height * 0.6765500);
    path_8.cubicTo(
        size.width * 0.3634700,
        size.height * 0.6709700,
        size.width * 0.3635165,
        size.height * 0.6669150,
        size.width * 0.3635165,
        size.height * 0.6669150);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.2993700, size.height * 0.2312145);
    path_9.cubicTo(
        size.width * 0.3010325,
        size.height * 0.2304770,
        size.width * 0.3021410,
        size.height * 0.2298780,
        size.width * 0.3021410,
        size.height * 0.2298780);
    path_9.cubicTo(
        size.width * 0.3012175,
        size.height * 0.2302925,
        size.width * 0.3002935,
        size.height * 0.2307075,
        size.width * 0.2993700,
        size.height * 0.2312145);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4553200, size.height * 0.6875650);
    path_10.cubicTo(
        size.width * 0.4558730,
        size.height * 0.6822650,
        size.width * 0.4560570,
        size.height * 0.6790400,
        size.width * 0.4560570,
        size.height * 0.6790400);
    path_10.cubicTo(
        size.width * 0.4560570,
        size.height * 0.6790400,
        size.width * 0.4553660,
        size.height * 0.6824950,
        size.width * 0.4553200,
        size.height * 0.6875650);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.7207150, size.height * 0.2533370);
    path_11.cubicTo(
        size.width * 0.7400150,
        size.height * 0.2526000,
        size.width * 0.7322600,
        size.height * 0.2333375,
        size.width * 0.7322600,
        size.height * 0.2333375);
    path_11.cubicTo(
        size.width * 0.6805850,
        size.height * 0.1325110,
        size.width * 0.5314250,
        size.height * 0.1625100,
        size.width * 0.5314250,
        size.height * 0.1625100);
    path_11.cubicTo(
        size.width * 0.5314250,
        size.height * 0.1625100,
        size.width * 0.5903000,
        size.height * 0.1463355,
        size.width * 0.5725250,
        size.height * 0.1309440);
    path_11.cubicTo(
        size.width * 0.5547900,
        size.height * 0.1155530,
        size.width * 0.5208500,
        size.height * 0.1463355,
        size.width * 0.5208500,
        size.height * 0.1463355);
    path_11.cubicTo(
        size.width * 0.5208500,
        size.height * 0.1463355,
        size.width * 0.5563600,
        size.height * 0.1032030,
        size.width * 0.5354850,
        size.height * 0.1001155);
    path_11.cubicTo(
        size.width * 0.5146150,
        size.height * 0.09702800,
        size.width * 0.5038550,
        size.height * 0.1347690,
        size.width * 0.5038550,
        size.height * 0.1347690);
    path_11.cubicTo(
        size.width * 0.5038550,
        size.height * 0.1347690,
        size.width * 0.5061650,
        size.height * 0.09246600,
        size.width * 0.4853830,
        size.height * 0.09246600);
    path_11.cubicTo(
        size.width * 0.4646020,
        size.height * 0.09246600,
        size.width * 0.4784095,
        size.height * 0.1625560,
        size.width * 0.4784095,
        size.height * 0.1625560);
    path_11.cubicTo(
        size.width * 0.3497540,
        size.height * 0.1234790,
        size.width * 0.2876890,
        size.height * 0.2085455,
        size.width * 0.2836250,
        size.height * 0.2253195);
    path_11.cubicTo(
        size.width * 0.2804850,
        size.height * 0.2383605,
        size.width * 0.2934615,
        size.height * 0.2338445,
        size.width * 0.2993720,
        size.height * 0.2312640);
    path_11.cubicTo(
        size.width * 0.3002960,
        size.height * 0.2308030,
        size.width * 0.3012195,
        size.height * 0.2303425,
        size.width * 0.3021430,
        size.height * 0.2299275);
    path_11.cubicTo(
        size.width * 0.3021430,
        size.height * 0.2299275,
        size.width * 0.3010345,
        size.height * 0.2305265,
        size.width * 0.2993720,
        size.height * 0.2312640);
    path_11.cubicTo(
        size.width * 0.2949390,
        size.height * 0.2335220,
        size.width * 0.2905980,
        size.height * 0.2367480,
        size.width * 0.2863495,
        size.height * 0.2407570);
    path_11.cubicTo(
        size.width * 0.3074535,
        size.height * 0.2372545,
        size.width * 0.3289270,
        size.height * 0.2262410,
        size.width * 0.3484150,
        size.height * 0.2195595);
    path_11.cubicTo(
        size.width * 0.3484150,
        size.height * 0.2218635,
        size.width * 0.3495695,
        size.height * 0.2241675,
        size.width * 0.3484150,
        size.height * 0.2253195);
    path_11.cubicTo(
        size.width * 0.3356695,
        size.height * 0.2426460,
        size.width * 0.3090700,
        size.height * 0.2576230,
        size.width * 0.3160430,
        size.height * 0.2761475);
    path_11.cubicTo(
        size.width * 0.3230160,
        size.height * 0.2957785,
        size.width * 0.3553880,
        size.height * 0.2842120,
        size.width * 0.3739060,
        size.height * 0.2749955);
    path_11.cubicTo(
        size.width * 0.3970415,
        size.height * 0.2622770,
        size.width * 0.4190230,
        size.height * 0.2473005,
        size.width * 0.4433135,
        size.height * 0.2380380);
    path_11.cubicTo(
        size.width * 0.4421590,
        size.height * 0.2588210,
        size.width * 0.4329230,
        size.height * 0.2772995,
        size.width * 0.4352320,
        size.height * 0.2980825);
    path_11.cubicTo(
        size.width * 0.4745770,
        size.height * 0.3072990,
        size.width * 0.5011750,
        size.height * 0.2691895,
        size.width * 0.5162750,
        size.height * 0.2391900);
    path_11.cubicTo(
        size.width * 0.5359500,
        size.height * 0.2495585,
        size.width * 0.5336400,
        size.height * 0.2784515,
        size.width * 0.5544650,
        size.height * 0.2854100);
    path_11.cubicTo(
        size.width * 0.5811150,
        size.height * 0.2934745,
        size.width * 0.5949200,
        size.height * 0.2669315,
        size.width * 0.5915050,
        size.height * 0.2426460);
    path_11.cubicTo(
        size.width * 0.5915050,
        size.height * 0.2403420,
        size.width * 0.5949650,
        size.height * 0.2414940,
        size.width * 0.5961200,
        size.height * 0.2414940);
    path_11.cubicTo(
        size.width * 0.6192550,
        size.height * 0.2564705,
        size.width * 0.6378200,
        size.height * 0.2842580,
        size.width * 0.6655300,
        size.height * 0.2726455);
    path_11.cubicTo(
        size.width * 0.6817400,
        size.height * 0.2656870,
        size.width * 0.6713000,
        size.height * 0.2414940,
        size.width * 0.6736100,
        size.height * 0.2253195);
    path_11.cubicTo(
        size.width * 0.6793850,
        size.height * 0.2264715,
        size.width * 0.6828450,
        size.height * 0.2310795,
        size.width * 0.6851550,
        size.height * 0.2345360);
    path_11.cubicTo(
        size.width * 0.6995150,
        size.height * 0.2555490,
        size.width * 0.7181750,
        size.height * 0.2741660,
        size.width * 0.7407100,
        size.height * 0.2795575);
    path_11.cubicTo(
        size.width * 0.7303200,
        size.height * 0.2580375,
        size.width * 0.7207150,
        size.height * 0.2533835,
        size.width * 0.7207150,
        size.height * 0.2533835);
    path_11.lineTo(size.width * 0.7207150, size.height * 0.2532910);
    path_11.lineTo(size.width * 0.7206200, size.height * 0.2531990);
    path_11.lineTo(size.width * 0.7207150, size.height * 0.2533370);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.7473100, size.height * 0.5454500);
    path_12.cubicTo(
        size.width * 0.7619500,
        size.height * 0.5470150,
        size.width * 0.7627350,
        size.height * 0.5266050,
        size.width * 0.7627350,
        size.height * 0.5266050);
    path_12.cubicTo(
        size.width * 0.7731250,
        size.height * 0.3804315,
        size.width * 0.7560850,
        size.height * 0.3114010,
        size.width * 0.7407100,
        size.height * 0.2794660);
    path_12.cubicTo(
        size.width * 0.7181700,
        size.height * 0.2740745,
        size.width * 0.6995600,
        size.height * 0.2554575,
        size.width * 0.6851550,
        size.height * 0.2344445);
    path_12.cubicTo(
        size.width * 0.6828450,
        size.height * 0.2309880,
        size.width * 0.6793800,
        size.height * 0.2263800,
        size.width * 0.6736100,
        size.height * 0.2252280);
    path_12.cubicTo(
        size.width * 0.6713000,
        size.height * 0.2414025,
        size.width * 0.6816900,
        size.height * 0.2655955,
        size.width * 0.6655300,
        size.height * 0.2725540);
    path_12.cubicTo(
        size.width * 0.6377750,
        size.height * 0.2840745,
        size.width * 0.6192100,
        size.height * 0.2563795,
        size.width * 0.5961200,
        size.height * 0.2414025);
    path_12.cubicTo(
        size.width * 0.5949650,
        size.height * 0.2414025,
        size.width * 0.5915000,
        size.height * 0.2402505,
        size.width * 0.5915000,
        size.height * 0.2425545);
    path_12.cubicTo(
        size.width * 0.5949650,
        size.height * 0.2667935,
        size.width * 0.5810650,
        size.height * 0.2933830,
        size.width * 0.5544650,
        size.height * 0.2853185);
    path_12.cubicTo(
        size.width * 0.5336400,
        size.height * 0.2783600,
        size.width * 0.5359950,
        size.height * 0.2495130,
        size.width * 0.5162750,
        size.height * 0.2390985);
    path_12.cubicTo(
        size.width * 0.5012700,
        size.height * 0.2691440,
        size.width * 0.4745760,
        size.height * 0.3072535,
        size.width * 0.4352310,
        size.height * 0.2979910);
    path_12.cubicTo(
        size.width * 0.4329220,
        size.height * 0.2772080,
        size.width * 0.4422045,
        size.height * 0.2587295,
        size.width * 0.4433125,
        size.height * 0.2379465);
    path_12.cubicTo(
        size.width * 0.4190220,
        size.height * 0.2471630,
        size.width * 0.3969945,
        size.height * 0.2621855,
        size.width * 0.3739050,
        size.height * 0.2749040);
    path_12.cubicTo(
        size.width * 0.3553870,
        size.height * 0.2841205,
        size.width * 0.3229690,
        size.height * 0.2956870,
        size.width * 0.3160420,
        size.height * 0.2760560);
    path_12.cubicTo(
        size.width * 0.3090690,
        size.height * 0.2575775,
        size.width * 0.3357145,
        size.height * 0.2425545,
        size.width * 0.3484140,
        size.height * 0.2252280);
    path_12.cubicTo(
        size.width * 0.3495685,
        size.height * 0.2240760,
        size.width * 0.3484140,
        size.height * 0.2217720,
        size.width * 0.3484140,
        size.height * 0.2194680);
    path_12.cubicTo(
        size.width * 0.3288800,
        size.height * 0.2261495,
        size.width * 0.3074990,
        size.height * 0.2371630,
        size.width * 0.2863490,
        size.height * 0.2406655);
    path_12.cubicTo(
        size.width * 0.2478815,
        size.height * 0.2765170,
        size.width * 0.2180495,
        size.height * 0.3730120,
        size.width * 0.2211435,
        size.height * 0.3943940);
    path_12.cubicTo(
        size.width * 0.2246070,
        size.height * 0.4186330,
        size.width * 0.2373525,
        size.height * 0.4157300,
        size.width * 0.2373525,
        size.height * 0.4157300);
    path_12.cubicTo(
        size.width * 0.2309335,
        size.height * 0.4630560,
        size.width * 0.2327345,
        size.height * 0.5401050,
        size.width * 0.2413240,
        size.height * 0.5933300);
    path_12.cubicTo(
        size.width * 0.2537460,
        size.height * 0.5848950,
        size.width * 0.2661685,
        size.height * 0.5757700,
        size.width * 0.2813150,
        size.height * 0.5738800);
    path_12.cubicTo(
        size.width * 0.2813150,
        size.height * 0.5923150,
        size.width * 0.2755430,
        size.height * 0.6189050,
        size.width * 0.2905510,
        size.height * 0.6269700);
    path_12.cubicTo(
        size.width * 0.3090690,
        size.height * 0.6361850,
        size.width * 0.3229230,
        size.height * 0.6073400,
        size.width * 0.3414870,
        size.height * 0.5992750);
    path_12.cubicTo(
        size.width * 0.3437960,
        size.height * 0.5981200,
        size.width * 0.3472595,
        size.height * 0.5992750,
        size.width * 0.3472595,
        size.height * 0.6004250);
    path_12.cubicTo(
        size.width * 0.3507230,
        size.height * 0.6177500,
        size.width * 0.3461050,
        size.height * 0.6396850,
        size.width * 0.3576500,
        size.height * 0.6489500);
    path_12.cubicTo(
        size.width * 0.3703955,
        size.height * 0.6581650,
        size.width * 0.3807855,
        size.height * 0.6327750,
        size.width * 0.3946855,
        size.height * 0.6235600);
    path_12.cubicTo(
        size.width * 0.4016590,
        size.height * 0.6189500,
        size.width * 0.4074310,
        size.height * 0.6247100,
        size.width * 0.4085855,
        size.height * 0.6316250);
    path_12.cubicTo(
        size.width * 0.4108945,
        size.height * 0.6478000,
        size.width * 0.4143580,
        size.height * 0.6754950,
        size.width * 0.4340305,
        size.height * 0.6651250);
    path_12.cubicTo(
        size.width * 0.4502395,
        size.height * 0.6547550,
        size.width * 0.4525485,
        size.height * 0.6316250,
        size.width * 0.4676030,
        size.height * 0.6201000);
    path_12.cubicTo(
        size.width * 0.4699120,
        size.height * 0.6178000,
        size.width * 0.4745760,
        size.height * 0.6178000,
        size.width * 0.4779935,
        size.height * 0.6201000);
    path_12.cubicTo(
        size.width * 0.4907390,
        size.height * 0.6316250,
        size.width * 0.4942025,
        size.height * 0.6478000,
        size.width * 0.5046400,
        size.height * 0.6605150);
    path_12.cubicTo(
        size.width * 0.5150750,
        size.height * 0.6720350,
        size.width * 0.5277750,
        size.height * 0.6628200,
        size.width * 0.5347500,
        size.height * 0.6524500);
    path_12.cubicTo(
        size.width * 0.5417200,
        size.height * 0.6397350,
        size.width * 0.5474950,
        size.height * 0.6096900,
        size.width * 0.5613950,
        size.height * 0.6235600);
    path_12.cubicTo(
        size.width * 0.5776000,
        size.height * 0.6374300,
        size.width * 0.5926100,
        size.height * 0.6697800,
        size.width * 0.6145900,
        size.height * 0.6593650);
    path_12.cubicTo(
        size.width * 0.6273350,
        size.height * 0.6536050,
        size.width * 0.6192100,
        size.height * 0.6316700,
        size.width * 0.6284900,
        size.height * 0.6177500);
    path_12.cubicTo(
        size.width * 0.6296450,
        size.height * 0.6166000,
        size.width * 0.6331100,
        size.height * 0.6166000,
        size.width * 0.6354650,
        size.height * 0.6189050);
    path_12.cubicTo(
        size.width * 0.6470550,
        size.height * 0.6350800,
        size.width * 0.6644200,
        size.height * 0.6558600,
        size.width * 0.6794300,
        size.height * 0.6454950);
    path_12.cubicTo(
        size.width * 0.6898650,
        size.height * 0.6385350,
        size.width * 0.6864000,
        size.height * 0.6178000,
        size.width * 0.6909750,
        size.height * 0.6038800);
    path_12.cubicTo(
        size.width * 0.6921250,
        size.height * 0.6015800,
        size.width * 0.6955900,
        size.height * 0.5981200,
        size.width * 0.6967450,
        size.height * 0.5992750);
    path_12.cubicTo(
        size.width * 0.7064450,
        size.height * 0.6110700,
        size.width * 0.7199750,
        size.height * 0.6245250,
        size.width * 0.7336900,
        size.height * 0.6290900);
    path_12.cubicTo(
        size.width * 0.7505900,
        size.height * 0.5882150,
        size.width * 0.7472650,
        size.height * 0.5453600,
        size.width * 0.7472650,
        size.height * 0.5453600);
    path_12.lineTo(size.width * 0.7473600, size.height * 0.5454950);
    path_12.lineTo(size.width * 0.7473600, size.height * 0.5455900);
    path_12.lineTo(size.width * 0.7473100, size.height * 0.5454500);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.4540715, size.height * 0.3760760);
    path_13.cubicTo(
        size.width * 0.4603010,
        size.height * 0.3710955,
        size.width * 0.4679425,
        size.height * 0.3677100,
        size.width * 0.4754030,
        size.height * 0.3656090);
    path_13.cubicTo(
        size.width * 0.4930040,
        size.height * 0.3606675,
        size.width * 0.5105350,
        size.height * 0.3648310,
        size.width * 0.5252750,
        size.height * 0.3760760);
    path_13.cubicTo(
        size.width * 0.5279150,
        size.height * 0.3780605,
        size.width * 0.5304500,
        size.height * 0.3733910,
        size.width * 0.5278100,
        size.height * 0.3714070);
    path_13.cubicTo(
        size.width * 0.5124900,
        size.height * 0.3597335,
        size.width * 0.4940905,
        size.height * 0.3553755,
        size.width * 0.4757650,
        size.height * 0.3599670);
    path_13.cubicTo(
        size.width * 0.4673265,
        size.height * 0.3620680,
        size.width * 0.4574105,
        size.height * 0.3663930,
        size.width * 0.4504210,
        size.height * 0.3719960);
    path_13.cubicTo(
        size.width * 0.4478495,
        size.height * 0.3740585,
        size.width * 0.4514280,
        size.height * 0.3781775,
        size.width * 0.4540355,
        size.height * 0.3760760);
    path_13.lineTo(size.width * 0.4540715, size.height * 0.3760760);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.6967950, size.height * 0.5993150);
    path_14.cubicTo(
        size.width * 0.6956400,
        size.height * 0.5981650,
        size.width * 0.6921750,
        size.height * 0.6016200,
        size.width * 0.6910200,
        size.height * 0.6039250);
    path_14.cubicTo(
        size.width * 0.6864050,
        size.height * 0.6177950,
        size.width * 0.6898650,
        size.height * 0.6385750,
        size.width * 0.6794750,
        size.height * 0.6455350);
    path_14.cubicTo(
        size.width * 0.6644700,
        size.height * 0.6559500,
        size.width * 0.6471050,
        size.height * 0.6351650,
        size.width * 0.6355150,
        size.height * 0.6189900);
    path_14.cubicTo(
        size.width * 0.6332050,
        size.height * 0.6166850,
        size.width * 0.6297400,
        size.height * 0.6166850,
        size.width * 0.6285400,
        size.height * 0.6178400);
    path_14.cubicTo(
        size.width * 0.6193050,
        size.height * 0.6317100,
        size.width * 0.6273850,
        size.height * 0.6536450,
        size.width * 0.6146400,
        size.height * 0.6594500);
    path_14.cubicTo(
        size.width * 0.5926600,
        size.height * 0.6698200,
        size.width * 0.5776050,
        size.height * 0.6375150,
        size.width * 0.5614400,
        size.height * 0.6236450);
    path_14.cubicTo(
        size.width * 0.5475400,
        size.height * 0.6097750,
        size.width * 0.5417700,
        size.height * 0.6398200,
        size.width * 0.5347950,
        size.height * 0.6525400);
    path_14.cubicTo(
        size.width * 0.5278250,
        size.height * 0.6629550,
        size.width * 0.5151250,
        size.height * 0.6721700,
        size.width * 0.5046850,
        size.height * 0.6606050);
    path_14.cubicTo(
        size.width * 0.4942965,
        size.height * 0.6478850,
        size.width * 0.4907870,
        size.height * 0.6317100,
        size.width * 0.4780415,
        size.height * 0.6201900);
    path_14.cubicTo(
        size.width * 0.4745315,
        size.height * 0.6178850,
        size.width * 0.4699600,
        size.height * 0.6178850,
        size.width * 0.4676050,
        size.height * 0.6201900);
    path_14.cubicTo(
        size.width * 0.4525965,
        size.height * 0.6317100,
        size.width * 0.4502415,
        size.height * 0.6548450,
        size.width * 0.4340325,
        size.height * 0.6652100);
    path_14.cubicTo(
        size.width * 0.4143600,
        size.height * 0.6756250,
        size.width * 0.4108965,
        size.height * 0.6478850,
        size.width * 0.4085875,
        size.height * 0.6317100);
    path_14.cubicTo(
        size.width * 0.4074330,
        size.height * 0.6247500,
        size.width * 0.4016145,
        size.height * 0.6189900,
        size.width * 0.3946875,
        size.height * 0.6236450);
    path_14.cubicTo(
        size.width * 0.3807875,
        size.height * 0.6328600,
        size.width * 0.3703970,
        size.height * 0.6583000,
        size.width * 0.3576515,
        size.height * 0.6490350);
    path_14.cubicTo(
        size.width * 0.3461070,
        size.height * 0.6398200,
        size.width * 0.3506785,
        size.height * 0.6178850,
        size.width * 0.3472610,
        size.height * 0.6005150);
    path_14.cubicTo(
        size.width * 0.3472610,
        size.height * 0.5993600,
        size.width * 0.3437980,
        size.height * 0.5982100,
        size.width * 0.3414890,
        size.height * 0.5993600);
    path_14.cubicTo(
        size.width * 0.3229710,
        size.height * 0.6074250,
        size.width * 0.3091170,
        size.height * 0.6363200,
        size.width * 0.2905530,
        size.height * 0.6270550);
    path_14.cubicTo(
        size.width * 0.2755445,
        size.height * 0.6189900,
        size.width * 0.2813170,
        size.height * 0.5924000,
        size.width * 0.2813170,
        size.height * 0.5739700);
    path_14.cubicTo(
        size.width * 0.2661700,
        size.height * 0.5758600,
        size.width * 0.2537940,
        size.height * 0.5849350,
        size.width * 0.2413255,
        size.height * 0.5934150);
    path_14.cubicTo(
        size.width * 0.2443735,
        size.height * 0.6122650,
        size.width * 0.2482525,
        size.height * 0.6281150,
        size.width * 0.2529165,
        size.height * 0.6386700);
    path_14.cubicTo(
        size.width * 0.2708805,
        size.height * 0.6790800,
        size.width * 0.3050070,
        size.height * 0.6392200,
        size.width * 0.3050070,
        size.height * 0.6392200);
    path_14.cubicTo(
        size.width * 0.3050070,
        size.height * 0.6392200,
        size.width * 0.3038525,
        size.height * 0.7050250,
        size.width * 0.3333610,
        size.height * 0.7084800);
    path_14.cubicTo(
        size.width * 0.3540035,
        size.height * 0.7109250,
        size.width * 0.3604685,
        size.height * 0.6895450,
        size.width * 0.3625465,
        size.height * 0.6765000);
    path_14.cubicTo(
        size.width * 0.3629620,
        size.height * 0.6705550,
        size.width * 0.3634700,
        size.height * 0.6668700,
        size.width * 0.3634700,
        size.height * 0.6668700);
    path_14.cubicTo(
        size.width * 0.3634700,
        size.height * 0.6668700,
        size.width * 0.3633780,
        size.height * 0.6709250,
        size.width * 0.3625465,
        size.height * 0.6765000);
    path_14.cubicTo(
        size.width * 0.3609305,
        size.height * 0.7002800,
        size.width * 0.3607920,
        size.height * 0.7602800,
        size.width * 0.4010600,
        size.height * 0.7667750);
    path_14.cubicTo(
        size.width * 0.4421135,
        size.height * 0.7733650,
        size.width * 0.4527350,
        size.height * 0.7108300,
        size.width * 0.4553210,
        size.height * 0.6875600);
    path_14.cubicTo(
        size.width * 0.4554135,
        size.height * 0.6824900,
        size.width * 0.4560600,
        size.height * 0.6790350,
        size.width * 0.4560600,
        size.height * 0.6790350);
    path_14.cubicTo(
        size.width * 0.4560600,
        size.height * 0.6790350,
        size.width * 0.4559215,
        size.height * 0.6823100,
        size.width * 0.4553210,
        size.height * 0.6875600);
    path_14.cubicTo(
        size.width * 0.4552285,
        size.height * 0.6994500,
        size.width * 0.4584610,
        size.height * 0.7202800,
        size.width * 0.4815050,
        size.height * 0.7275150);
    path_14.cubicTo(
        size.width * 0.5144750,
        size.height * 0.7378800,
        size.width * 0.5260700,
        size.height * 0.6974700,
        size.width * 0.5260700,
        size.height * 0.6974700);
    path_14.cubicTo(
        size.width * 0.5306850,
        size.height * 0.7107400,
        size.width * 0.5474500,
        size.height * 0.6934600,
        size.width * 0.5474500,
        size.height * 0.6934600);
    path_14.cubicTo(
        size.width * 0.5520650,
        size.height * 0.7188500,
        size.width * 0.5699850,
        size.height * 0.6986650,
        size.width * 0.5699850,
        size.height * 0.6986650);
    path_14.cubicTo(
        size.width * 0.5728950,
        size.height * 0.7188500,
        size.width * 0.5861950,
        size.height * 0.7056250,
        size.width * 0.5861950,
        size.height * 0.7056250);
    path_14.cubicTo(
        size.width * 0.5844400,
        size.height * 0.7235500,
        size.width * 0.5919650,
        size.height * 0.7258100,
        size.width * 0.5919650,
        size.height * 0.7258100);
    path_14.cubicTo(
        size.width * 0.6056800,
        size.height * 0.7282950,
        size.width * 0.6119600,
        size.height * 0.7216600,
        size.width * 0.6147800,
        size.height * 0.7140600);
    path_14.cubicTo(
        size.width * 0.6151000,
        size.height * 0.7038300,
        size.width * 0.6168100,
        size.height * 0.6958100,
        size.width * 0.6168100,
        size.height * 0.6958100);
    path_14.cubicTo(
        size.width * 0.6168100,
        size.height * 0.6958100,
        size.width * 0.6179200,
        size.height * 0.7055800,
        size.width * 0.6147800,
        size.height * 0.7140600);
    path_14.cubicTo(
        size.width * 0.6142250,
        size.height * 0.7307850,
        size.width * 0.6174550,
        size.height * 0.7534600,
        size.width * 0.6380050,
        size.height * 0.7568200);
    path_14.cubicTo(
        size.width * 0.6711650,
        size.height * 0.7622150,
        size.width * 0.6719500,
        size.height * 0.6929550,
        size.width * 0.6719500,
        size.height * 0.6929550);
    path_14.cubicTo(
        size.width * 0.7044150,
        size.height * 0.6799100,
        size.width * 0.7229750,
        size.height * 0.6549350,
        size.width * 0.7335500,
        size.height * 0.6293150);
    path_14.cubicTo(
        size.width * 0.7198350,
        size.height * 0.6247050,
        size.width * 0.7063050,
        size.height * 0.6112500,
        size.width * 0.6966100,
        size.height * 0.5995000);
    path_14.lineTo(size.width * 0.6966100, size.height * 0.5994050);
    path_14.lineTo(size.width * 0.6967000, size.height * 0.5993150);
    path_14.lineTo(size.width * 0.6967950, size.height * 0.5993150);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.6169000, size.height * 0.6958100);
    path_15.cubicTo(
        size.width * 0.6169000,
        size.height * 0.6958100,
        size.width * 0.6151950,
        size.height * 0.7038750,
        size.width * 0.6148700,
        size.height * 0.7140600);
    path_15.cubicTo(
        size.width * 0.6180100,
        size.height * 0.7055350,
        size.width * 0.6169000,
        size.height * 0.6958100,
        size.width * 0.6169000,
        size.height * 0.6958100);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.4093720, size.height * 0.4077080);
    path_16.cubicTo(
        size.width * 0.4019370,
        size.height * 0.4173390,
        size.width * 0.3937635,
        size.height * 0.4291820,
        size.width * 0.3919625,
        size.height * 0.4414395);
    path_16.cubicTo(
        size.width * 0.3908080,
        size.height * 0.4489050,
        size.width * 0.3941790,
        size.height * 0.4547575,
        size.width * 0.4017060,
        size.height * 0.4566005);
    path_16.cubicTo(
        size.width * 0.4109420,
        size.height * 0.4588585,
        size.width * 0.4197160,
        size.height * 0.4547115,
        size.width * 0.4252575,
        size.height * 0.4472460);
    path_16.cubicTo(
        size.width * 0.4288135,
        size.height * 0.4424075,
        size.width * 0.4313995,
        size.height * 0.4365550,
        size.width * 0.4326925,
        size.height * 0.4306105);
    path_16.cubicTo(
        size.width * 0.4336625,
        size.height * 0.4263250,
        size.width * 0.4247500,
        size.height * 0.4282605,
        size.width * 0.4236415,
        size.height * 0.4314400);
    path_16.cubicTo(
        size.width * 0.4218405,
        size.height * 0.4365550,
        size.width * 0.4204090,
        size.height * 0.4418545,
        size.width * 0.4192080,
        size.height * 0.4471080);
    path_16.cubicTo(
        size.width * 0.4172685,
        size.height * 0.4556330,
        size.width * 0.4153755,
        size.height * 0.4650795,
        size.width * 0.4171300,
        size.height * 0.4737890);
    path_16.cubicTo(
        size.width * 0.4189310,
        size.height * 0.4824525,
        size.width * 0.4262735,
        size.height * 0.4856780,
        size.width * 0.4346785,
        size.height * 0.4838350);
    path_16.cubicTo(
        size.width * 0.4463615,
        size.height * 0.4813005,
        size.width * 0.4551360,
        size.height * 0.4729595,
        size.width * 0.4590150,
        size.height * 0.4618540);
    path_16.cubicTo(
        size.width * 0.4614625,
        size.height * 0.4548955,
        size.width * 0.4623400,
        size.height * 0.4472000,
        size.width * 0.4616470,
        size.height * 0.4398270);
    path_16.cubicTo(
        size.width * 0.4613240,
        size.height * 0.4363245,
        size.width * 0.4537505,
        size.height * 0.4383525,
        size.width * 0.4529190,
        size.height * 0.4406565);
    path_16.cubicTo(
        size.width * 0.4511645,
        size.height * 0.4454950,
        size.width * 0.4498250,
        size.height * 0.4504720,
        size.width * 0.4489940,
        size.height * 0.4555870);
    path_16.cubicTo(
        size.width * 0.4477470,
        size.height * 0.4630060,
        size.width * 0.4470080,
        size.height * 0.4724990,
        size.width * 0.4519495,
        size.height * 0.4787660);
    path_16.cubicTo(
        size.width * 0.4580915,
        size.height * 0.4866920,
        size.width * 0.4710215,
        size.height * 0.4853095,
        size.width * 0.4791030,
        size.height * 0.4815770);
    path_16.cubicTo(
        size.width * 0.4881540,
        size.height * 0.4774295,
        size.width * 0.4934645,
        size.height * 0.4689045,
        size.width * 0.4959120,
        size.height * 0.4595500);
    path_16.cubicTo(
        size.width * 0.4974825,
        size.height * 0.4536055,
        size.width * 0.4979905,
        size.height * 0.4471540,
        size.width * 0.4975285,
        size.height * 0.4409790);
    path_16.cubicTo(
        size.width * 0.4972515,
        size.height * 0.4373385,
        size.width * 0.4882465,
        size.height * 0.4393660,
        size.width * 0.4885235,
        size.height * 0.4434215);
    path_16.cubicTo(
        size.width * 0.4894470,
        size.height * 0.4558175,
        size.width * 0.4936495,
        size.height * 0.4725910,
        size.width * 0.5053800,
        size.height * 0.4791345);
    path_16.cubicTo(
        size.width * 0.5124000,
        size.height * 0.4830515,
        size.width * 0.5220500,
        size.height * 0.4828210,
        size.width * 0.5270850,
        size.height * 0.4759550);
    path_16.cubicTo(
        size.width * 0.5313800,
        size.height * 0.4700565,
        size.width * 0.5313300,
        size.height * 0.4617155,
        size.width * 0.5310100,
        size.height * 0.4547575);
    path_16.cubicTo(
        size.width * 0.5307300,
        size.height * 0.4491815,
        size.width * 0.5300850,
        size.height * 0.4435595,
        size.width * 0.5289300,
        size.height * 0.4381220);
    path_16.cubicTo(
        size.width * 0.5281450,
        size.height * 0.4343430,
        size.width * 0.5191850,
        size.height * 0.4366470,
        size.width * 0.5199250,
        size.height * 0.4405640);
    path_16.cubicTo(
        size.width * 0.5222350,
        size.height * 0.4524530,
        size.width * 0.5271300,
        size.height * 0.4668310,
        size.width * 0.5369200,
        size.height * 0.4745725);
    path_16.cubicTo(
        size.width * 0.5430600,
        size.height * 0.4794110,
        size.width * 0.5525750,
        size.height * 0.4806090,
        size.width * 0.5588100,
        size.height * 0.4753100);
    path_16.cubicTo(
        size.width * 0.5643050,
        size.height * 0.4707015,
        size.width * 0.5644400,
        size.height * 0.4627755,
        size.width * 0.5639800,
        size.height * 0.4562320);
    path_16.cubicTo(
        size.width * 0.5636100,
        size.height * 0.4507485,
        size.width * 0.5625950,
        size.height * 0.4451265,
        size.width * 0.5610700,
        size.height * 0.4398270);
    path_16.lineTo(size.width * 0.5524350, size.height * 0.4429605);
    path_16.cubicTo(
        size.width * 0.5548850,
        size.height * 0.4469235,
        size.width * 0.5577450,
        size.height * 0.4508865,
        size.width * 0.5611650,
        size.height * 0.4540660);
    path_16.cubicTo(
        size.width * 0.5649500,
        size.height * 0.4575225,
        size.width * 0.5729400,
        size.height * 0.4606560,
        size.width * 0.5761700,
        size.height * 0.4546190);
    path_16.cubicTo(
        size.width * 0.5783400,
        size.height * 0.4506560,
        size.width * 0.5748800,
        size.height * 0.4445735,
        size.width * 0.5732150,
        size.height * 0.4410250);
    path_16.cubicTo(
        size.width * 0.5715550,
        size.height * 0.4374765,
        size.width * 0.5696600,
        size.height * 0.4339285,
        size.width * 0.5676300,
        size.height * 0.4305185);
    path_16.cubicTo(
        size.width * 0.5660150,
        size.height * 0.4277535,
        size.width * 0.5577000,
        size.height * 0.4302420,
        size.width * 0.5589950,
        size.height * 0.4336520);
    path_16.cubicTo(
        size.width * 0.5628700,
        size.height * 0.4436055,
        size.width * 0.5707250,
        size.height * 0.4556790,
        size.width * 0.5824500,
        size.height * 0.4563240);
    path_16.cubicTo(
        size.width * 0.5880400,
        size.height * 0.4566465,
        size.width * 0.5948750,
        size.height * 0.4541585,
        size.width * 0.5950600,
        size.height * 0.4477070);
    path_16.cubicTo(
        size.width * 0.5952450,
        size.height * 0.4420390,
        size.width * 0.5918750,
        size.height * 0.4363710,
        size.width * 0.5891000,
        size.height * 0.4316705);
    path_16.cubicTo(
        size.width * 0.5868400,
        size.height * 0.4277075,
        size.width * 0.5842550,
        size.height * 0.4237905,
        size.width * 0.5814350,
        size.height * 0.4201500);
    path_16.cubicTo(
        size.width * 0.5791750,
        size.height * 0.4172005,
        size.width * 0.5705400,
        size.height * 0.4205645,
        size.width * 0.5731250,
        size.height * 0.4239285);
    path_16.cubicTo(
        size.width * 0.5786200,
        size.height * 0.4311635,
        size.width * 0.5855000,
        size.height * 0.4403340,
        size.width * 0.5858250,
        size.height * 0.4496885);
    path_16.cubicTo(
        size.width * 0.5858250,
        size.height * 0.4502415,
        size.width * 0.5852250,
        size.height * 0.4510250,
        size.width * 0.5860100,
        size.height * 0.4503335);
    path_16.cubicTo(
        size.width * 0.5866100,
        size.height * 0.4497805,
        size.width * 0.5859150,
        size.height * 0.4504255,
        size.width * 0.5852250,
        size.height * 0.4503335);
    path_16.cubicTo(
        size.width * 0.5844850,
        size.height * 0.4502415,
        size.width * 0.5839750,
        size.height * 0.4501955,
        size.width * 0.5832850,
        size.height * 0.4499650);
    path_16.cubicTo(
        size.width * 0.5799150,
        size.height * 0.4489050,
        size.width * 0.5771900,
        size.height * 0.4461400,
        size.width * 0.5750200,
        size.height * 0.4434675);
    path_16.cubicTo(
        size.width * 0.5720600,
        size.height * 0.4398270,
        size.width * 0.5695700,
        size.height * 0.4355875,
        size.width * 0.5678600,
        size.height * 0.4312555);
    path_16.lineTo(size.width * 0.5592250, size.height * 0.4343890);
    path_16.cubicTo(
        size.width * 0.5623650,
        size.height * 0.4397345,
        size.width * 0.5667050,
        size.height * 0.4463245,
        size.width * 0.5674900,
        size.height * 0.4525915);
    path_16.cubicTo(
        size.width * 0.5674900,
        size.height * 0.4526835,
        size.width * 0.5675850,
        size.height * 0.4542045,
        size.width * 0.5674900,
        size.height * 0.4542045);
    path_16.cubicTo(
        size.width * 0.5669350,
        size.height * 0.4536975,
        size.width * 0.5721100,
        size.height * 0.4532365,
        size.width * 0.5711400,
        size.height * 0.4517620);
    path_16.cubicTo(
        size.width * 0.5707250,
        size.height * 0.4511170,
        size.width * 0.5693350,
        size.height * 0.4504715,
        size.width * 0.5687350,
        size.height * 0.4498725);
    path_16.cubicTo(
        size.width * 0.5678600,
        size.height * 0.4490895,
        size.width * 0.5671200,
        size.height * 0.4481675,
        size.width * 0.5662900,
        size.height * 0.4472460);
    path_16.cubicTo(
        size.width * 0.5641650,
        size.height * 0.4447575,
        size.width * 0.5622250,
        size.height * 0.4420850,
        size.width * 0.5604700,
        size.height * 0.4392740);
    path_16.cubicTo(
        size.width * 0.5587150,
        size.height * 0.4364630,
        size.width * 0.5508200,
        size.height * 0.4388590,
        size.width * 0.5518350,
        size.height * 0.4424075);
    path_16.cubicTo(
        size.width * 0.5541900,
        size.height * 0.4505640,
        size.width * 0.5569150,
        size.height * 0.4619000,
        size.width * 0.5535000,
        size.height * 0.4700565);
    path_16.cubicTo(
        size.width * 0.5527150,
        size.height * 0.4719920,
        size.width * 0.5518800,
        size.height * 0.4729595,
        size.width * 0.5505400,
        size.height * 0.4728675);
    path_16.cubicTo(
        size.width * 0.5476350,
        size.height * 0.4726830,
        size.width * 0.5450450,
        size.height * 0.4711165,
        size.width * 0.5429250,
        size.height * 0.4692270);
    path_16.cubicTo(
        size.width * 0.5377500,
        size.height * 0.4645265,
        size.width * 0.5346550,
        size.height * 0.4577065,
        size.width * 0.5323000,
        size.height * 0.4512550);
    path_16.cubicTo(
        size.width * 0.5307800,
        size.height * 0.4470615,
        size.width * 0.5294400,
        size.height * 0.4427300,
        size.width * 0.5286050,
        size.height * 0.4383060);
    path_16.lineTo(size.width * 0.5196000, size.height * 0.4407485);
    path_16.cubicTo(
        size.width * 0.5216350,
        size.height * 0.4501490,
        size.width * 0.5231600,
        size.height * 0.4612090,
        size.width * 0.5205700,
        size.height * 0.4706095);
    path_16.cubicTo(
        size.width * 0.5200200,
        size.height * 0.4725450,
        size.width * 0.5188150,
        size.height * 0.4751715,
        size.width * 0.5174800,
        size.height * 0.4759090);
    path_16.cubicTo(
        size.width * 0.5170150,
        size.height * 0.4759090,
        size.width * 0.5182150,
        size.height * 0.4754940,
        size.width * 0.5174800,
        size.height * 0.4759090);
    path_16.cubicTo(
        size.width * 0.5169700,
        size.height * 0.4759090,
        size.width * 0.5165100,
        size.height * 0.4759090,
        size.width * 0.5160450,
        size.height * 0.4758165);
    path_16.cubicTo(
        size.width * 0.5142900,
        size.height * 0.4755400,
        size.width * 0.5126300,
        size.height * 0.4748490,
        size.width * 0.5111500,
        size.height * 0.4738815);
    path_16.cubicTo(
        size.width * 0.5050550,
        size.height * 0.4700105,
        size.width * 0.5019600,
        size.height * 0.4624990,
        size.width * 0.4999760,
        size.height * 0.4558635);
    path_16.cubicTo(
        size.width * 0.4985905,
        size.height * 0.4511170,
        size.width * 0.4975285,
        size.height * 0.4461400,
        size.width * 0.4972050,
        size.height * 0.4411630);
    path_16.lineTo(size.width * 0.4882000, size.height * 0.4436055);
    path_16.cubicTo(
        size.width * 0.4882925,
        size.height * 0.4443430,
        size.width * 0.4882000,
        size.height * 0.4435135,
        size.width * 0.4882000,
        size.height * 0.4438820);
    path_16.cubicTo(
        size.width * 0.4881080,
        size.height * 0.4448500,
        size.width * 0.4882000,
        size.height * 0.4458175,
        size.width * 0.4882000,
        size.height * 0.4467850);
    path_16.cubicTo(
        size.width * 0.4882000,
        size.height * 0.4497345,
        size.width * 0.4879230,
        size.height * 0.4527300,
        size.width * 0.4874615,
        size.height * 0.4556330);
    path_16.cubicTo(
        size.width * 0.4863530,
        size.height * 0.4626375,
        size.width * 0.4839515,
        size.height * 0.4703790,
        size.width * 0.4782255,
        size.height * 0.4750335);
    path_16.cubicTo(
        size.width * 0.4732380,
        size.height * 0.4790885,
        size.width * 0.4639560,
        size.height * 0.4808395,
        size.width * 0.4596615,
        size.height * 0.4750335);
    path_16.cubicTo(
        size.width * 0.4557360,
        size.height * 0.4697340,
        size.width * 0.4566135,
        size.height * 0.4616695,
        size.width * 0.4575835,
        size.height * 0.4555870);
    path_16.cubicTo(
        size.width * 0.4581375,
        size.height * 0.4522690,
        size.width * 0.4588765,
        size.height * 0.4489510,
        size.width * 0.4598460,
        size.height * 0.4456790);
    path_16.cubicTo(
        size.width * 0.4601695,
        size.height * 0.4445735,
        size.width * 0.4604925,
        size.height * 0.4434675,
        size.width * 0.4608160,
        size.height * 0.4423615);
    path_16.cubicTo(
        size.width * 0.4609080,
        size.height * 0.4420390,
        size.width * 0.4611390,
        size.height * 0.4416700,
        size.width * 0.4611390,
        size.height * 0.4413475);
    path_16.cubicTo(
        size.width * 0.4611390,
        size.height * 0.4415320,
        size.width * 0.4608620,
        size.height * 0.4420850,
        size.width * 0.4610470,
        size.height * 0.4416700);
    path_16.lineTo(size.width * 0.4523190, size.height * 0.4424995);
    path_16.cubicTo(
        size.width * 0.4524110,
        size.height * 0.4438360,
        size.width * 0.4524575,
        size.height * 0.4448035,
        size.width * 0.4524110,
        size.height * 0.4466930);
    path_16.cubicTo(
        size.width * 0.4523190,
        size.height * 0.4502415,
        size.width * 0.4519955,
        size.height * 0.4537895,
        size.width * 0.4512105,
        size.height * 0.4572460);
    path_16.cubicTo(
        size.width * 0.4493170,
        size.height * 0.4660015,
        size.width * 0.4445605,
        size.height * 0.4746645,
        size.width * 0.4355555,
        size.height * 0.4777520);
    path_16.cubicTo(
        size.width * 0.4329235,
        size.height * 0.4786740,
        size.width * 0.4305220,
        size.height * 0.4791805,
        size.width * 0.4285365,
        size.height * 0.4775215);
    path_16.cubicTo(
        size.width * 0.4263200,
        size.height * 0.4755865,
        size.width * 0.4257195,
        size.height * 0.4722225,
        size.width * 0.4253965,
        size.height * 0.4694575);
    path_16.cubicTo(
        size.width * 0.4244725,
        size.height * 0.4618080,
        size.width * 0.4261815,
        size.height * 0.4536055,
        size.width * 0.4279825,
        size.height * 0.4461400);
    path_16.cubicTo(
        size.width * 0.4291830,
        size.height * 0.4409790,
        size.width * 0.4306145,
        size.height * 0.4357715,
        size.width * 0.4323695,
        size.height * 0.4307490);
    path_16.lineTo(size.width * 0.4233180, size.height * 0.4315780);
    path_16.cubicTo(
        size.width * 0.4217020,
        size.height * 0.4389050,
        size.width * 0.4162990,
        size.height * 0.4530060,
        size.width * 0.4067400,
        size.height * 0.4510710);
    path_16.cubicTo(
        size.width * 0.3928400,
        size.height * 0.4482135,
        size.width * 0.4054930,
        size.height * 0.4270620,
        size.width * 0.4093720,
        size.height * 0.4206570);
    path_16.cubicTo(
        size.width * 0.4109885,
        size.height * 0.4179840,
        size.width * 0.4126970,
        size.height * 0.4153575,
        size.width * 0.4145440,
        size.height * 0.4127770);
    path_16.cubicTo(
        size.width * 0.4152830,
        size.height * 0.4117170,
        size.width * 0.4159295,
        size.height * 0.4107955,
        size.width * 0.4165760,
        size.height * 0.4100120);
    path_16.cubicTo(
        size.width * 0.4199930,
        size.height * 0.4055880,
        size.width * 0.4114040,
        size.height * 0.4048510,
        size.width * 0.4091410,
        size.height * 0.4077540);
    path_16.lineTo(size.width * 0.4092335, size.height * 0.4076620);
    path_16.lineTo(size.width * 0.4093260, size.height * 0.4076620);
    path_16.lineTo(size.width * 0.4093720, size.height * 0.4077080);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.3852665, size.height * 0.3764180);
    path_17.cubicTo(
        size.width * 0.3848970,
        size.height * 0.3937450,
        size.width * 0.3897460,
        size.height * 0.4079840,
        size.width * 0.3961645,
        size.height * 0.4081685);
    path_17.cubicTo(
        size.width * 0.4025375,
        size.height * 0.4084450,
        size.width * 0.4080330,
        size.height * 0.3945745,
        size.width * 0.4084025,
        size.height * 0.3772475);
    path_17.cubicTo(
        size.width * 0.4087715,
        size.height * 0.3599210,
        size.width * 0.4039230,
        size.height * 0.3456815,
        size.width * 0.3975040,
        size.height * 0.3454970);
    path_17.cubicTo(
        size.width * 0.3911310,
        size.height * 0.3452205,
        size.width * 0.3856360,
        size.height * 0.3590915,
        size.width * 0.3852665,
        size.height * 0.3764180);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.5693850, size.height * 0.3764180);
    path_18.cubicTo(
        size.width * 0.5690150,
        size.height * 0.3937450,
        size.width * 0.5738600,
        size.height * 0.4079840,
        size.width * 0.5802800,
        size.height * 0.4081685);
    path_18.cubicTo(
        size.width * 0.5866550,
        size.height * 0.4084450,
        size.width * 0.5921500,
        size.height * 0.3945745,
        size.width * 0.5925200,
        size.height * 0.3772475);
    path_18.cubicTo(
        size.width * 0.5928900,
        size.height * 0.3599210,
        size.width * 0.5880400,
        size.height * 0.3456815,
        size.width * 0.5816200,
        size.height * 0.3454970);
    path_18.cubicTo(
        size.width * 0.5752450,
        size.height * 0.3452205,
        size.width * 0.5697500,
        size.height * 0.3590915,
        size.width * 0.5693850,
        size.height * 0.3764180);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.3721960, size.height * 0.3644850);
    path_19.cubicTo(
        size.width * 0.3653615,
        size.height * 0.3639780,
        size.width * 0.3625910,
        size.height * 0.3553605,
        size.width * 0.3675780,
        size.height * 0.3507065);
    path_19.cubicTo(
        size.width * 0.3818475,
        size.height * 0.3373890,
        size.width * 0.4151430,
        size.height * 0.3088640,
        size.width * 0.4254410,
        size.height * 0.3224120);
    path_19.cubicTo(
        size.width * 0.4361085,
        size.height * 0.3364670,
        size.width * 0.3940390,
        size.height * 0.3660515,
        size.width * 0.3722425,
        size.height * 0.3644850);
    path_19.lineTo(size.width * 0.3721960, size.height * 0.3644850);
    path_19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.6117300, size.height * 0.3644845);
    path_20.cubicTo(
        size.width * 0.6185650,
        size.height * 0.3639775,
        size.width * 0.6213350,
        size.height * 0.3553600,
        size.width * 0.6163450,
        size.height * 0.3507060);
    path_20.cubicTo(
        size.width * 0.6020750,
        size.height * 0.3373885,
        size.width * 0.5687350,
        size.height * 0.3089100,
        size.width * 0.5584850,
        size.height * 0.3224580);
    path_20.cubicTo(
        size.width * 0.5478150,
        size.height * 0.3365125,
        size.width * 0.5899300,
        size.height * 0.3660510,
        size.width * 0.6116850,
        size.height * 0.3644845);
    path_20.lineTo(size.width * 0.6117300, size.height * 0.3644845);
    path_20.close();

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.4483475, size.height * 0.3780340);
    path_21.cubicTo(
        size.width * 0.4481165,
        size.height * 0.4080790,
        size.width * 0.4290445,
        size.height * 0.4358205,
        size.width * 0.4005055,
        size.height * 0.4459125);
    path_21.cubicTo(
        size.width * 0.3719205,
        size.height * 0.4560040,
        size.width * 0.3399645,
        size.height * 0.4471565,
        size.width * 0.3206615,
        size.height * 0.4241155);
    path_21.cubicTo(
        size.width * 0.3013585,
        size.height * 0.4010750,
        size.width * 0.2986800,
        size.height * 0.3664675,
        size.width * 0.3145195,
        size.height * 0.3405235);
    path_21.cubicTo(
        size.width * 0.3304050,
        size.height * 0.3145795,
        size.width * 0.3609760,
        size.height * 0.3014460,
        size.width * 0.3903925,
        size.height * 0.3073905);
    path_21.cubicTo(
        size.width * 0.4238725,
        size.height * 0.3141645,
        size.width * 0.4481165,
        size.height * 0.3441180,
        size.width * 0.4483475,
        size.height * 0.3780340);
    path_21.cubicTo(
        size.width * 0.4483475,
        size.height * 0.3814440,
        size.width * 0.4536580,
        size.height * 0.3814440,
        size.width * 0.4536580,
        size.height * 0.3780340);
    path_21.cubicTo(
        size.width * 0.4534270,
        size.height * 0.3458690,
        size.width * 0.4332005,
        size.height * 0.3166530,
        size.width * 0.4028605,
        size.height * 0.3054550);
    path_21.cubicTo(
        size.width * 0.3725210,
        size.height * 0.2942575,
        size.width * 0.3368240,
        size.height * 0.3038425,
        size.width * 0.3162280,
        size.height * 0.3290030);
    path_21.cubicTo(
        size.width * 0.2956785,
        size.height * 0.3541175,
        size.width * 0.2929535,
        size.height * 0.3904760,
        size.width * 0.3099015,
        size.height * 0.4182170);
    path_21.cubicTo(
        size.width * 0.3268495,
        size.height * 0.4459585,
        size.width * 0.3599600,
        size.height * 0.4601515,
        size.width * 0.3917775,
        size.height * 0.4537460);
    path_21.cubicTo(
        size.width * 0.4275205,
        size.height * 0.4465115,
        size.width * 0.4533350,
        size.height * 0.4142080,
        size.width * 0.4536120,
        size.height * 0.3780340);
    path_21.cubicTo(
        size.width * 0.4536120,
        size.height * 0.3746240,
        size.width * 0.4483010,
        size.height * 0.3746240,
        size.width * 0.4483010,
        size.height * 0.3780340);
    path_21.lineTo(size.width * 0.4483475, size.height * 0.3780340);
    path_21.close();

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.6754550, size.height * 0.3780340);
    path_22.cubicTo(
        size.width * 0.6752250,
        size.height * 0.4080790,
        size.width * 0.6561550,
        size.height * 0.4358205,
        size.width * 0.6276150,
        size.height * 0.4459125);
    path_22.cubicTo(
        size.width * 0.5990300,
        size.height * 0.4560040,
        size.width * 0.5670750,
        size.height * 0.4471565,
        size.width * 0.5477700,
        size.height * 0.4241155);
    path_22.cubicTo(
        size.width * 0.5284700,
        size.height * 0.4010750,
        size.width * 0.5257900,
        size.height * 0.3664675,
        size.width * 0.5416300,
        size.height * 0.3405235);
    path_22.cubicTo(
        size.width * 0.5575150,
        size.height * 0.3145795,
        size.width * 0.5880850,
        size.height * 0.3014460,
        size.width * 0.6175000,
        size.height * 0.3073905);
    path_22.cubicTo(
        size.width * 0.6509800,
        size.height * 0.3141645,
        size.width * 0.6752250,
        size.height * 0.3441180,
        size.width * 0.6754550,
        size.height * 0.3780340);
    path_22.cubicTo(
        size.width * 0.6754550,
        size.height * 0.3814440,
        size.width * 0.6807650,
        size.height * 0.3814440,
        size.width * 0.6807650,
        size.height * 0.3780340);
    path_22.cubicTo(
        size.width * 0.6805350,
        size.height * 0.3458690,
        size.width * 0.6603100,
        size.height * 0.3166530,
        size.width * 0.6299700,
        size.height * 0.3054550);
    path_22.cubicTo(
        size.width * 0.5996300,
        size.height * 0.2942575,
        size.width * 0.5639350,
        size.height * 0.3038425,
        size.width * 0.5433400,
        size.height * 0.3290030);
    path_22.cubicTo(
        size.width * 0.5227900,
        size.height * 0.3541175,
        size.width * 0.5200650,
        size.height * 0.3904760,
        size.width * 0.5370100,
        size.height * 0.4182170);
    path_22.cubicTo(
        size.width * 0.5539600,
        size.height * 0.4459585,
        size.width * 0.5870700,
        size.height * 0.4601515,
        size.width * 0.6188850,
        size.height * 0.4537460);
    path_22.cubicTo(
        size.width * 0.6546300,
        size.height * 0.4465115,
        size.width * 0.6804450,
        size.height * 0.4142080,
        size.width * 0.6807200,
        size.height * 0.3780340);
    path_22.cubicTo(
        size.width * 0.6807200,
        size.height * 0.3746240,
        size.width * 0.6754100,
        size.height * 0.3746240,
        size.width * 0.6754100,
        size.height * 0.3780340);
    path_22.lineTo(size.width * 0.6754550, size.height * 0.3780340);
    path_22.close();

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
