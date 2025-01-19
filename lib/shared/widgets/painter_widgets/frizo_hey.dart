import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
/* CustomPaint(
size: Size(WIDTH, (WIDTH*1.0049019607843137).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
)
*/
//Copy this CustomPainter code to the Bottom of the File
class FrizoHeyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7638333, size.height * 0.5087073);
    path_0.cubicTo(
        size.width * 0.7638333,
        size.height * 0.5087073,
        size.width * 0.9401667,
        size.height * 0.5499561,
        size.width * 0.9009167,
        size.height * 0.5840390);
    path_0.cubicTo(
        size.width * 0.8616667,
        size.height * 0.6181268,
        size.width * 0.8446225,
        size.height * 0.6326244,
        size.width * 0.8446225,
        size.height * 0.6326244);
    path_0.cubicTo(
        size.width * 0.8446225,
        size.height * 0.6326244,
        size.width * 0.8304559,
        size.height * 0.6758732,
        size.width * 0.8190833,
        size.height * 0.6793756);
    path_0.cubicTo(
        size.width * 0.8077059,
        size.height * 0.6828732,
        size.width * 0.8317500,
        size.height * 0.6304976,
        size.width * 0.8317500,
        size.height * 0.6304976);
    path_0.cubicTo(
        size.width * 0.8317500,
        size.height * 0.6304976,
        size.width * 0.8035000,
        size.height * 0.6758732,
        size.width * 0.7949559,
        size.height * 0.6744976);
    path_0.cubicTo(
        size.width * 0.7864167,
        size.height * 0.6731268,
        size.width * 0.8141225,
        size.height * 0.6280000,
        size.width * 0.8141225,
        size.height * 0.6280000);
    path_0.cubicTo(
        size.width * 0.8141225,
        size.height * 0.6280000,
        size.width * 0.7905392,
        size.height * 0.6610390,
        size.width * 0.7751225,
        size.height * 0.6631268);
    path_0.cubicTo(
        size.width * 0.7633333,
        size.height * 0.6647073,
        size.width * 0.7978333,
        size.height * 0.6222098,
        size.width * 0.7978333,
        size.height * 0.6222098);
    path_0.cubicTo(
        size.width * 0.7978333,
        size.height * 0.6222098,
        size.width * 0.7727500,
        size.height * 0.6272488,
        size.width * 0.7733725,
        size.height * 0.6152098);
    path_0.cubicTo(
        size.width * 0.7737892,
        size.height * 0.6074146,
        size.width * 0.8040833,
        size.height * 0.6082098,
        size.width * 0.8040833,
        size.height * 0.6082098);
    path_0.cubicTo(
        size.width * 0.8040833,
        size.height * 0.6082098,
        size.width * 0.8078725,
        size.height * 0.6056683,
        size.width * 0.8286667,
        size.height * 0.5900829);
    path_0.cubicTo(
        size.width * 0.8523725,
        size.height * 0.5722927,
        size.width * 0.7318725,
        size.height * 0.5531659,
        size.width * 0.7318725,
        size.height * 0.5531659);
    path_0.lineTo(size.width * 0.7638725, size.height * 0.5087073);
    path_0.lineTo(size.width * 0.7638333, size.height * 0.5087073);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2685833, size.height * 0.5645415);
    path_1.cubicTo(
        size.width * 0.2685833,
        size.height * 0.5645415,
        size.width * 0.06125000,
        size.height * 0.5452488,
        size.width * 0.09770833,
        size.height * 0.4183746);
    path_1.cubicTo(
        size.width * 0.1341667,
        size.height * 0.2914995,
        size.width * 0.1508333,
        size.height * 0.2472078,
        size.width * 0.1508333,
        size.height * 0.2472078);
    path_1.cubicTo(
        size.width * 0.1508333,
        size.height * 0.2472078,
        size.width * 0.1220000,
        size.height * 0.2229995,
        size.width * 0.1160417,
        size.height * 0.1974580);
    path_1.cubicTo(
        size.width * 0.1100833,
        size.height * 0.1719166,
        size.width * 0.1587500,
        size.height * 0.2265415,
        size.width * 0.1587500,
        size.height * 0.2265415);
    path_1.cubicTo(
        size.width * 0.1587500,
        size.height * 0.2265415,
        size.width * 0.1465833,
        size.height * 0.1997078,
        size.width * 0.1511250,
        size.height * 0.1719166);
    path_1.cubicTo(
        size.width * 0.1556667,
        size.height * 0.1441249,
        size.width * 0.1783750,
        size.height * 0.2241663,
        size.width * 0.1783750,
        size.height * 0.2241663);
    path_1.cubicTo(
        size.width * 0.1783750,
        size.height * 0.2241663,
        size.width * 0.1773750,
        size.height * 0.1807078,
        size.width * 0.1914167,
        size.height * 0.1692912);
    path_1.cubicTo(
        size.width * 0.2072917,
        size.height * 0.1564166,
        size.width * 0.1926250,
        size.height * 0.2271249,
        size.width * 0.1926250,
        size.height * 0.2271249);
    path_1.cubicTo(
        size.width * 0.1926250,
        size.height * 0.2271249,
        size.width * 0.2254167,
        size.height * 0.2158746,
        size.width * 0.2236250,
        size.height * 0.2295829);
    path_1.cubicTo(
        size.width * 0.2218333,
        size.height * 0.2432912,
        size.width * 0.1950833,
        size.height * 0.2422078,
        size.width * 0.1950833,
        size.height * 0.2422078);
    path_1.cubicTo(
        size.width * 0.1950833,
        size.height * 0.2422078,
        size.width * 0.1240833,
        size.height * 0.4343332,
        size.width * 0.1574167,
        size.height * 0.4660415);
    path_1.cubicTo(
        size.width * 0.1907083,
        size.height * 0.4977512,
        size.width * 0.2801250,
        size.height * 0.5056683,
        size.width * 0.2801250,
        size.height * 0.5056683);
    path_1.lineTo(size.width * 0.2685833, size.height * 0.5645415);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.2975833, size.height * 0.2472502);
    path_2.cubicTo(
        size.width * 0.2975833,
        size.height * 0.2472502,
        size.width * 0.2417500,
        size.height * 0.3211668,
        size.width * 0.2397917,
        size.height * 0.3941668);
    path_2.cubicTo(
        size.width * 0.2397917,
        size.height * 0.3941668,
        size.width * 0.2545417,
        size.height * 0.3230834,
        size.width * 0.2975833,
        size.height * 0.2472502);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4729578, size.height * 0.3798751);
    path_3.cubicTo(
        size.width * 0.4795828,
        size.height * 0.3750000,
        size.width * 0.4876245,
        size.height * 0.3716254,
        size.width * 0.4955392,
        size.height * 0.3695420);
    path_3.cubicTo(
        size.width * 0.5141667,
        size.height * 0.3646668,
        size.width * 0.5327500,
        size.height * 0.3687917,
        size.width * 0.5483725,
        size.height * 0.3798751);
    path_3.cubicTo(
        size.width * 0.5511667,
        size.height * 0.3818337,
        size.width * 0.5538725,
        size.height * 0.3772083,
        size.width * 0.5510833,
        size.height * 0.3752502);
    path_3.cubicTo(
        size.width * 0.5348725,
        size.height * 0.3637502,
        size.width * 0.5153725,
        size.height * 0.3594585,
        size.width * 0.4959167,
        size.height * 0.3639585);
    path_3.cubicTo(
        size.width * 0.4869578,
        size.height * 0.3660000,
        size.width * 0.4776245,
        size.height * 0.3697502,
        size.width * 0.4702078,
        size.height * 0.3752502);
    path_3.cubicTo(
        size.width * 0.4674995,
        size.height * 0.3772917,
        size.width * 0.4701245,
        size.height * 0.3819166,
        size.width * 0.4729162,
        size.height * 0.3798751);
    path_3.lineTo(size.width * 0.4729578, size.height * 0.3798751);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.5035833, size.height * 0.08933317);
    path_4.cubicTo(
        size.width * 0.5035833,
        size.height * 0.08933317,
        size.width * 0.5260441,
        size.height * 0.08054195,
        size.width * 0.5250000,
        size.height * 0.1316668);
    path_4.cubicTo(
        size.width * 0.5250000,
        size.height * 0.1316668,
        size.width * 0.5363775,
        size.height * 0.09250000,
        size.width * 0.5569167,
        size.height * 0.09662488);
    path_4.cubicTo(
        size.width * 0.5774608,
        size.height * 0.1008332,
        size.width * 0.5421667,
        size.height * 0.1433332,
        size.width * 0.5421667,
        size.height * 0.1433332);
    path_4.cubicTo(
        size.width * 0.5421667,
        size.height * 0.1433332,
        size.width * 0.5796275,
        size.height * 0.1103332,
        size.width * 0.5942941,
        size.height * 0.1277917);
    path_4.cubicTo(
        size.width * 0.6089608,
        size.height * 0.1452083,
        size.width * 0.5528333,
        size.height * 0.1597083,
        size.width * 0.5528333,
        size.height * 0.1597083);
    path_4.cubicTo(
        size.width * 0.5528333,
        size.height * 0.1597083,
        size.width * 0.6915833,
        size.height * 0.1216249,
        size.width * 0.7554167,
        size.height * 0.2312917);
    path_4.cubicTo(
        size.width * 0.7554167,
        size.height * 0.2312917,
        size.width * 0.6816667,
        size.height * 0.1367502,
        size.width * 0.5457108,
        size.height * 0.1694166);
    path_4.cubicTo(
        size.width * 0.5457108,
        size.height * 0.1694166,
        size.width * 0.5330441,
        size.height * 0.1623751,
        size.width * 0.5511667,
        size.height * 0.1558332);
    path_4.cubicTo(
        size.width * 0.5692941,
        size.height * 0.1492083,
        size.width * 0.5912108,
        size.height * 0.1387083,
        size.width * 0.5881275,
        size.height * 0.1311249);
    path_4.cubicTo(
        size.width * 0.5850000,
        size.height * 0.1235420,
        size.width * 0.5353775,
        size.height * 0.1523751,
        size.width * 0.5353775,
        size.height * 0.1523751);
    path_4.cubicTo(
        size.width * 0.5353775,
        size.height * 0.1523751,
        size.width * 0.5581667,
        size.height * 0.1113332,
        size.width * 0.5487941,
        size.height * 0.1064585);
    path_4.cubicTo(
        size.width * 0.5394608,
        size.height * 0.1015834,
        size.width * 0.5220833,
        size.height * 0.1471249,
        size.width * 0.5220833,
        size.height * 0.1471249);
    path_4.cubicTo(
        size.width * 0.5220833,
        size.height * 0.1471249,
        size.width * 0.5260833,
        size.height * 0.09537512,
        size.width * 0.5035441,
        size.height * 0.08941659);
    path_4.lineTo(size.width * 0.5035441, size.height * 0.08933317);
    path_4.lineTo(size.width * 0.5035833, size.height * 0.08933317);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.3143740, size.height * 0.2037083);
    path_5.cubicTo(
        size.width * 0.3143740,
        size.height * 0.2037083,
        size.width * 0.3695824,
        size.height * 0.1177917,
        size.width * 0.4993333,
        size.height * 0.1596249);
    path_5.cubicTo(
        size.width * 0.4993333,
        size.height * 0.1596249,
        size.width * 0.3877074,
        size.height * 0.1410834,
        size.width * 0.3143740,
        size.height * 0.2037083);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.3186657, size.height * 0.2291663);
    path_6.cubicTo(
        size.width * 0.3203324,
        size.height * 0.2284166,
        size.width * 0.3214574,
        size.height * 0.2278332,
        size.width * 0.3214574,
        size.height * 0.2278332);
    path_6.cubicTo(
        size.width * 0.3205407,
        size.height * 0.2282498,
        size.width * 0.3195824,
        size.height * 0.2286663,
        size.width * 0.3186657,
        size.height * 0.2291663);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.7437059, size.height * 0.2515005);
    path_7.cubicTo(
        size.width * 0.7631667,
        size.height * 0.2507507,
        size.width * 0.7553333,
        size.height * 0.2312922,
        size.width * 0.7553333,
        size.height * 0.2312922);
    path_7.cubicTo(
        size.width * 0.7032059,
        size.height * 0.1293756,
        size.width * 0.5527500,
        size.height * 0.1597088,
        size.width * 0.5527500,
        size.height * 0.1597088);
    path_7.cubicTo(
        size.width * 0.5527500,
        size.height * 0.1597088,
        size.width * 0.6121225,
        size.height * 0.1433756,
        size.width * 0.5942059,
        size.height * 0.1277922);
    path_7.cubicTo(
        size.width * 0.5763333,
        size.height * 0.1122507,
        size.width * 0.5420833,
        size.height * 0.1433337,
        size.width * 0.5420833,
        size.height * 0.1433337);
    path_7.cubicTo(
        size.width * 0.5420833,
        size.height * 0.1433337,
        size.width * 0.5779167,
        size.height * 0.09975073,
        size.width * 0.5568333,
        size.height * 0.09662537);
    path_7.cubicTo(
        size.width * 0.5357500,
        size.height * 0.09350049,
        size.width * 0.5249167,
        size.height * 0.1316673,
        size.width * 0.5249167,
        size.height * 0.1316673);
    path_7.cubicTo(
        size.width * 0.5249167,
        size.height * 0.1316673,
        size.width * 0.5272500,
        size.height * 0.08891707,
        size.width * 0.5062892,
        size.height * 0.08891707);
    path_7.cubicTo(
        size.width * 0.4853333,
        size.height * 0.08891707,
        size.width * 0.4992500,
        size.height * 0.1597507,
        size.width * 0.4992500,
        size.height * 0.1597507);
    path_7.cubicTo(
        size.width * 0.3694583,
        size.height * 0.1202507,
        size.width * 0.3068750,
        size.height * 0.2062507,
        size.width * 0.3027500,
        size.height * 0.2232088);
    path_7.cubicTo(
        size.width * 0.2995833,
        size.height * 0.2363756,
        size.width * 0.3126667,
        size.height * 0.2318337,
        size.width * 0.3186250,
        size.height * 0.2292088);
    path_7.cubicTo(
        size.width * 0.3195417,
        size.height * 0.2287507,
        size.width * 0.3205000,
        size.height * 0.2282922,
        size.width * 0.3214167,
        size.height * 0.2278756);
    path_7.cubicTo(
        size.width * 0.3214167,
        size.height * 0.2278756,
        size.width * 0.3202917,
        size.height * 0.2285005,
        size.width * 0.3186250,
        size.height * 0.2292088);
    path_7.cubicTo(
        size.width * 0.3141667,
        size.height * 0.2315005,
        size.width * 0.3097917,
        size.height * 0.2347507,
        size.width * 0.3055000,
        size.height * 0.2387922);
    path_7.cubicTo(
        size.width * 0.3267917,
        size.height * 0.2352507,
        size.width * 0.3484583,
        size.height * 0.2241254,
        size.width * 0.3681250,
        size.height * 0.2173756);
    path_7.cubicTo(
        size.width * 0.3681250,
        size.height * 0.2197088,
        size.width * 0.3692917,
        size.height * 0.2220424,
        size.width * 0.3681250,
        size.height * 0.2232088);
    path_7.cubicTo(
        size.width * 0.3552500,
        size.height * 0.2407088,
        size.width * 0.3284583,
        size.height * 0.2558756,
        size.width * 0.3354583,
        size.height * 0.2745839);
    path_7.cubicTo(
        size.width * 0.3425000,
        size.height * 0.2944171,
        size.width * 0.3751250,
        size.height * 0.2827507,
        size.width * 0.3938333,
        size.height * 0.2734171);
    path_7.cubicTo(
        size.width * 0.4171667,
        size.height * 0.2605424,
        size.width * 0.4393333,
        size.height * 0.2454171,
        size.width * 0.4638333,
        size.height * 0.2360424);
    path_7.cubicTo(
        size.width * 0.4626667,
        size.height * 0.2570424,
        size.width * 0.4533333,
        size.height * 0.2757088,
        size.width * 0.4556667,
        size.height * 0.2967507);
    path_7.cubicTo(
        size.width * 0.4953333,
        size.height * 0.3060839,
        size.width * 0.5221667,
        size.height * 0.2675424,
        size.width * 0.5374167,
        size.height * 0.2372088);
    path_7.cubicTo(
        size.width * 0.5572500,
        size.height * 0.2477088,
        size.width * 0.5549167,
        size.height * 0.2768756,
        size.width * 0.5759559,
        size.height * 0.2839171);
    path_7.cubicTo(
        size.width * 0.6028333,
        size.height * 0.2920839,
        size.width * 0.6167500,
        size.height * 0.2652507,
        size.width * 0.6133333,
        size.height * 0.2407088);
    path_7.cubicTo(
        size.width * 0.6133333,
        size.height * 0.2383756,
        size.width * 0.6168333,
        size.height * 0.2395424,
        size.width * 0.6180000,
        size.height * 0.2395424);
    path_7.cubicTo(
        size.width * 0.6413333,
        size.height * 0.2546673,
        size.width * 0.6600833,
        size.height * 0.2827507,
        size.width * 0.6880000,
        size.height * 0.2710424);
    path_7.cubicTo(
        size.width * 0.7043333,
        size.height * 0.2640005,
        size.width * 0.6938333,
        size.height * 0.2395424,
        size.width * 0.6961667,
        size.height * 0.2232088);
    path_7.cubicTo(
        size.width * 0.7020000,
        size.height * 0.2243756,
        size.width * 0.7055000,
        size.height * 0.2290424,
        size.width * 0.7077892,
        size.height * 0.2325424);
    path_7.cubicTo(
        size.width * 0.7222892,
        size.height * 0.2537922,
        size.width * 0.7410833,
        size.height * 0.2725839,
        size.width * 0.7638333,
        size.height * 0.2780424);
    path_7.cubicTo(
        size.width * 0.7533333,
        size.height * 0.2562922,
        size.width * 0.7436667,
        size.height * 0.2515839,
        size.width * 0.7436667,
        size.height * 0.2515839);
    path_7.lineTo(size.width * 0.7436667, size.height * 0.2515005);
    path_7.lineTo(size.width * 0.7435833, size.height * 0.2514171);
    path_7.lineTo(size.width * 0.7436667, size.height * 0.2515424);
    path_7.lineTo(size.width * 0.7437059, size.height * 0.2515005);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.2993740, size.height * 0.5756683);
    path_8.lineTo(size.width * 0.2573740, size.height * 0.5756683);
    path_8.cubicTo(
        size.width * 0.2568740,
        size.height * 0.5714976,
        size.width * 0.2563740,
        size.height * 0.5672488,
        size.width * 0.2559574,
        size.height * 0.5629171);
    path_8.cubicTo(
        size.width * 0.2540407,
        size.height * 0.5434146,
        size.width * 0.2528324,
        size.height * 0.5224976,
        size.width * 0.2524157,
        size.height * 0.5019171);
    path_8.cubicTo(
        size.width * 0.2517074,
        size.height * 0.4701663,
        size.width * 0.2529157,
        size.height * 0.4392493,
        size.width * 0.2560824,
        size.height * 0.4156244);
    path_8.cubicTo(
        size.width * 0.2560824,
        size.height * 0.4156244,
        size.width * 0.2432907,
        size.height * 0.4185410,
        size.width * 0.2397907,
        size.height * 0.3941663);
    path_8.cubicTo(
        size.width * 0.2397490,
        size.height * 0.3941663,
        size.width * 0.2397490,
        size.height * 0.3940829,
        size.width * 0.2397490,
        size.height * 0.3940410);
    path_8.cubicTo(
        size.width * 0.2390824,
        size.height * 0.3893746,
        size.width * 0.2399574,
        size.height * 0.3811244,
        size.width * 0.2421657,
        size.height * 0.3707493);
    path_8.cubicTo(
        size.width * 0.2460824,
        size.height * 0.3521244,
        size.width * 0.2542074,
        size.height * 0.3265829,
        size.width * 0.2650824,
        size.height * 0.3020829);
    path_8.cubicTo(
        size.width * 0.2761657,
        size.height * 0.2769995,
        size.width * 0.2901657,
        size.height * 0.2530410,
        size.width * 0.3055407,
        size.height * 0.2386659);
    path_8.cubicTo(
        size.width * 0.3055824,
        size.height * 0.2386659,
        size.width * 0.3056240,
        size.height * 0.2386663,
        size.width * 0.3056657,
        size.height * 0.2386244);
    path_8.cubicTo(
        size.width * 0.3269574,
        size.height * 0.2350829,
        size.width * 0.3484990,
        size.height * 0.2239995,
        size.width * 0.3681657,
        size.height * 0.2172493);
    path_8.cubicTo(
        size.width * 0.3681657,
        size.height * 0.2190410,
        size.width * 0.3688740,
        size.height * 0.2208746,
        size.width * 0.3685824,
        size.height * 0.2221244);
    path_8.cubicTo(
        size.width * 0.3685824,
        size.height * 0.2223746,
        size.width * 0.3685407,
        size.height * 0.2225829,
        size.width * 0.3684157,
        size.height * 0.2227912);
    path_8.cubicTo(
        size.width * 0.3683324,
        size.height * 0.2228746,
        size.width * 0.3682490,
        size.height * 0.2229995,
        size.width * 0.3681657,
        size.height * 0.2230829);
    path_8.cubicTo(
        size.width * 0.3667490,
        size.height * 0.2250410,
        size.width * 0.3651657,
        size.height * 0.2269576,
        size.width * 0.3634574,
        size.height * 0.2288327);
    path_8.cubicTo(
        size.width * 0.3625824,
        size.height * 0.2297912,
        size.width * 0.3616657,
        size.height * 0.2307912,
        size.width * 0.3607490,
        size.height * 0.2317912);
    path_8.cubicTo(
        size.width * 0.3567074,
        size.height * 0.2359161,
        size.width * 0.3523324,
        size.height * 0.2400410,
        size.width * 0.3483324,
        size.height * 0.2441659);
    path_8.cubicTo(
        size.width * 0.3473740,
        size.height * 0.2450829,
        size.width * 0.3464990,
        size.height * 0.2460410,
        size.width * 0.3456240,
        size.height * 0.2469995);
    path_8.cubicTo(
        size.width * 0.3439157,
        size.height * 0.2487912,
        size.width * 0.3423324,
        size.height * 0.2506244,
        size.width * 0.3409157,
        size.height * 0.2524576);
    path_8.cubicTo(
        size.width * 0.3409157,
        size.height * 0.2524576,
        size.width * 0.3408740,
        size.height * 0.2524576,
        size.width * 0.3408740,
        size.height * 0.2525410);
    path_8.cubicTo(
        size.width * 0.3398324,
        size.height * 0.2539161,
        size.width * 0.3388740,
        size.height * 0.2552912,
        size.width * 0.3379990,
        size.height * 0.2566659);
    path_8.cubicTo(
        size.width * 0.3363324,
        size.height * 0.2594995,
        size.width * 0.3350824,
        size.height * 0.2623746,
        size.width * 0.3345824,
        size.height * 0.2652912);
    path_8.cubicTo(
        size.width * 0.3340824,
        size.height * 0.2682912,
        size.width * 0.3343324,
        size.height * 0.2713327,
        size.width * 0.3354990,
        size.height * 0.2744576);
    path_8.cubicTo(
        size.width * 0.3424990,
        size.height * 0.2942912,
        size.width * 0.3752074,
        size.height * 0.2826244,
        size.width * 0.3938740,
        size.height * 0.2732912);
    path_8.cubicTo(
        size.width * 0.4171657,
        size.height * 0.2604161,
        size.width * 0.4393740,
        size.height * 0.2452493,
        size.width * 0.4638740,
        size.height * 0.2359161);
    path_8.cubicTo(
        size.width * 0.4637490,
        size.height * 0.2382912,
        size.width * 0.4634990,
        size.height * 0.2406663,
        size.width * 0.4631657,
        size.height * 0.2429576);
    path_8.cubicTo(
        size.width * 0.4630407,
        size.height * 0.2441244,
        size.width * 0.4628740,
        size.height * 0.2452493,
        size.width * 0.4626657,
        size.height * 0.2463746);
    path_8.cubicTo(
        size.width * 0.4599157,
        size.height * 0.2633327,
        size.width * 0.4537490,
        size.height * 0.2791663,
        size.width * 0.4557074,
        size.height * 0.2966244);
    path_8.cubicTo(
        size.width * 0.4742490,
        size.height * 0.3009995,
        size.width * 0.4899990,
        size.height * 0.2949161,
        size.width * 0.5030392,
        size.height * 0.2841244);
    path_8.lineTo(size.width * 0.5031225, size.height * 0.2840410);
    path_8.cubicTo(
        size.width * 0.5046667,
        size.height * 0.2827493,
        size.width * 0.5061667,
        size.height * 0.2814161,
        size.width * 0.5076225,
        size.height * 0.2800410);
    path_8.cubicTo(
        size.width * 0.5100833,
        size.height * 0.2776663,
        size.width * 0.5124559,
        size.height * 0.2751663,
        size.width * 0.5147059,
        size.height * 0.2725410);
    path_8.cubicTo(
        size.width * 0.5158725,
        size.height * 0.2712078,
        size.width * 0.5170000,
        size.height * 0.2698327,
        size.width * 0.5180833,
        size.height * 0.2684161);
    path_8.cubicTo(
        size.width * 0.5187892,
        size.height * 0.2675829,
        size.width * 0.5194167,
        size.height * 0.2667078,
        size.width * 0.5200833,
        size.height * 0.2658327);
    path_8.cubicTo(
        size.width * 0.5213333,
        size.height * 0.2641659,
        size.width * 0.5225392,
        size.height * 0.2624995,
        size.width * 0.5236667,
        size.height * 0.2607912);
    path_8.cubicTo(
        size.width * 0.5242892,
        size.height * 0.2598746,
        size.width * 0.5249167,
        size.height * 0.2589995,
        size.width * 0.5255000,
        size.height * 0.2580829);
    path_8.cubicTo(
        size.width * 0.5266225,
        size.height * 0.2563746,
        size.width * 0.5277059,
        size.height * 0.2546663,
        size.width * 0.5287500,
        size.height * 0.2529161);
    path_8.cubicTo(
        size.width * 0.5319559,
        size.height * 0.2476663,
        size.width * 0.5348333,
        size.height * 0.2423327,
        size.width * 0.5374167,
        size.height * 0.2372078);
    path_8.cubicTo(
        size.width * 0.5374167,
        size.height * 0.2371663,
        size.width * 0.5374559,
        size.height * 0.2371244,
        size.width * 0.5374559,
        size.height * 0.2370829);
    path_8.cubicTo(
        size.width * 0.5573725,
        size.height * 0.2475829,
        size.width * 0.5550000,
        size.height * 0.2767493,
        size.width * 0.5760000,
        size.height * 0.2837912);
    path_8.cubicTo(
        size.width * 0.5890392,
        size.height * 0.2877493,
        size.width * 0.5990392,
        size.height * 0.2834576,
        size.width * 0.6055392,
        size.height * 0.2751663);
    path_8.cubicTo(
        size.width * 0.6055392,
        size.height * 0.2751663,
        size.width * 0.6055539,
        size.height * 0.2751385,
        size.width * 0.6055833,
        size.height * 0.2750829);
    path_8.cubicTo(
        size.width * 0.6062059,
        size.height * 0.2742912,
        size.width * 0.6067892,
        size.height * 0.2734576,
        size.width * 0.6073725,
        size.height * 0.2725829);
    path_8.cubicTo(
        size.width * 0.6085000,
        size.height * 0.2707493,
        size.width * 0.6095000,
        size.height * 0.2687493,
        size.width * 0.6103725,
        size.height * 0.2666663);
    path_8.cubicTo(
        size.width * 0.6114167,
        size.height * 0.2641244,
        size.width * 0.6122500,
        size.height * 0.2614161,
        size.width * 0.6127892,
        size.height * 0.2586244);
    path_8.cubicTo(
        size.width * 0.6140392,
        size.height * 0.2528327,
        size.width * 0.6142500,
        size.height * 0.2466663,
        size.width * 0.6133725,
        size.height * 0.2405829);
    path_8.cubicTo(
        size.width * 0.6133725,
        size.height * 0.2403746,
        size.width * 0.6133725,
        size.height * 0.2401659,
        size.width * 0.6135000,
        size.height * 0.2399995);
    path_8.cubicTo(
        size.width * 0.6140392,
        size.height * 0.2384576,
        size.width * 0.6170000,
        size.height * 0.2394161,
        size.width * 0.6180392,
        size.height * 0.2394161);
    path_8.cubicTo(
        size.width * 0.6413333,
        size.height * 0.2545829,
        size.width * 0.6600392,
        size.height * 0.2825410,
        size.width * 0.6880392,
        size.height * 0.2709161);
    path_8.cubicTo(
        size.width * 0.6908725,
        size.height * 0.2697078,
        size.width * 0.6928725,
        size.height * 0.2679576,
        size.width * 0.6943333,
        size.height * 0.2658327);
    path_8.cubicTo(
        size.width * 0.6959559,
        size.height * 0.2633746,
        size.width * 0.6967892,
        size.height * 0.2603746,
        size.width * 0.6971667,
        size.height * 0.2570829);
    path_8.cubicTo(
        size.width * 0.6983333,
        size.height * 0.2467912,
        size.width * 0.6947892,
        size.height * 0.2334161,
        size.width * 0.6962059,
        size.height * 0.2232078);
    path_8.lineTo(size.width * 0.6962059, size.height * 0.2230829);
    path_8.cubicTo(
        size.width * 0.7020000,
        size.height * 0.2242493,
        size.width * 0.7055000,
        size.height * 0.2289161,
        size.width * 0.7078333,
        size.height * 0.2324161);
    path_8.cubicTo(
        size.width * 0.7223333,
        size.height * 0.2536244,
        size.width * 0.7410392,
        size.height * 0.2723746,
        size.width * 0.7637500,
        size.height * 0.2778746);
    path_8.cubicTo(
        size.width * 0.7637892,
        size.height * 0.2779161,
        size.width * 0.7638333,
        size.height * 0.2779161,
        size.width * 0.7638725,
        size.height * 0.2779161);
    path_8.cubicTo(
        size.width * 0.7789167,
        size.height * 0.3092493,
        size.width * 0.7955392,
        size.height * 0.3758327,
        size.width * 0.7869559,
        size.height * 0.5146244);
    path_8.cubicTo(
        size.width * 0.7867059,
        size.height * 0.5189171,
        size.width * 0.7864167,
        size.height * 0.5232927,
        size.width * 0.7860833,
        size.height * 0.5277512);
    path_8.cubicTo(
        size.width * 0.7860833,
        size.height * 0.5277512,
        size.width * 0.7852892,
        size.height * 0.5482927,
        size.width * 0.7706225,
        size.height * 0.5467902);
    path_8.lineTo(size.width * 0.7706225, size.height * 0.5467073);
    path_8.lineTo(size.width * 0.7705392, size.height * 0.5466244);
    path_8.lineTo(size.width * 0.7705392, size.height * 0.5467902);
    path_8.cubicTo(
        size.width * 0.7706225,
        size.height * 0.5477902,
        size.width * 0.7709167,
        size.height * 0.5528341,
        size.width * 0.7707059,
        size.height * 0.5605805);
    path_8.cubicTo(
        size.width * 0.7706225,
        size.height * 0.5648732,
        size.width * 0.7703725,
        size.height * 0.5699561,
        size.width * 0.7698725,
        size.height * 0.5756683);
    path_8.lineTo(size.width * 0.3004157, size.height * 0.5756683);

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.4097078, size.height * 0.4757088);
    path_9.cubicTo(
        size.width * 0.4070412,
        size.height * 0.4895024,
        size.width * 0.3947912,
        size.height * 0.4992488,
        size.width * 0.3933328,
        size.height * 0.5134195);
    path_9.cubicTo(
        size.width * 0.3924162,
        size.height * 0.5220829,
        size.width * 0.3984578,
        size.height * 0.5281268,
        size.width * 0.4070412,
        size.height * 0.5295415);
    path_9.cubicTo(
        size.width * 0.4175828,
        size.height * 0.5312927,
        size.width * 0.4278328,
        size.height * 0.5283756,
        size.width * 0.4350828,
        size.height * 0.5198732);
    path_9.cubicTo(
        size.width * 0.4397912,
        size.height * 0.5143756,
        size.width * 0.4422078,
        size.height * 0.5076244,
        size.width * 0.4418328,
        size.height * 0.5001659);
    path_9.cubicTo(
        size.width * 0.4415412,
        size.height * 0.4947512,
        size.width * 0.4315412,
        size.height * 0.4981268,
        size.width * 0.4307078,
        size.height * 0.5018732);
    path_9.cubicTo(
        size.width * 0.4293745,
        size.height * 0.5078732,
        size.width * 0.4287912,
        size.height * 0.5148341,
        size.width * 0.4280828,
        size.height * 0.5203317);
    path_9.cubicTo(
        size.width * 0.4269162,
        size.height * 0.5292927,
        size.width * 0.4245412,
        size.height * 0.5361268,
        size.width * 0.4276245,
        size.height * 0.5446683);
    path_9.cubicTo(
        size.width * 0.4307078,
        size.height * 0.5532098,
        size.width * 0.4391662,
        size.height * 0.5552488,
        size.width * 0.4477912,
        size.height * 0.5532927);
    path_9.cubicTo(
        size.width * 0.4597912,
        size.height * 0.5505415,
        size.width * 0.4710412,
        size.height * 0.5467512,
        size.width * 0.4775412,
        size.height * 0.5353317);
    path_9.cubicTo(
        size.width * 0.4815828,
        size.height * 0.5281659,
        size.width * 0.4818745,
        size.height * 0.5197073,
        size.width * 0.4812912,
        size.height * 0.5115024);
    path_9.cubicTo(
        size.width * 0.4809995,
        size.height * 0.5076244,
        size.width * 0.4725412,
        size.height * 0.5086244,
        size.width * 0.4713745,
        size.height * 0.5111659);
    path_9.cubicTo(
        size.width * 0.4689162,
        size.height * 0.5164585,
        size.width * 0.4673328,
        size.height * 0.5201268,
        size.width * 0.4666245,
        size.height * 0.5259610);
    path_9.cubicTo(
        size.width * 0.4656245,
        size.height * 0.5344195,
        size.width * 0.4643745,
        size.height * 0.5429171,
        size.width * 0.4694578,
        size.height * 0.5508732);
    path_9.cubicTo(
        size.width * 0.4758328,
        size.height * 0.5608732,
        size.width * 0.4888745,
        size.height * 0.5667902,
        size.width * 0.5004559,
        size.height * 0.5654195);
    path_9.cubicTo(
        size.width * 0.5120392,
        size.height * 0.5640439,
        size.width * 0.5157059,
        size.height * 0.5567902,
        size.width * 0.5180000,
        size.height * 0.5465415);
    path_9.cubicTo(
        size.width * 0.5194559,
        size.height * 0.5400439,
        size.width * 0.5192892,
        size.height * 0.5330829,
        size.width * 0.5165392,
        size.height * 0.5267073);
    path_9.cubicTo(
        size.width * 0.5149559,
        size.height * 0.5229171,
        size.width * 0.5055833,
        size.height * 0.5272098,
        size.width * 0.5070392,
        size.height * 0.5319610);
    path_9.cubicTo(
        size.width * 0.5114559,
        size.height * 0.5465024,
        size.width * 0.5178725,
        size.height * 0.5575024,
        size.width * 0.5335833,
        size.height * 0.5617902);
    path_9.cubicTo(
        size.width * 0.5430000,
        size.height * 0.5643756,
        size.width * 0.5539167,
        size.height * 0.5587073,
        size.width * 0.5585000,
        size.height * 0.5510829);
    path_9.cubicTo(
        size.width * 0.5631225,
        size.height * 0.5434585,
        size.width * 0.5608725,
        size.height * 0.5355415,
        size.width * 0.5595000,
        size.height * 0.5285854);
    path_9.cubicTo(
        size.width * 0.5581225,
        size.height * 0.5216244,
        size.width * 0.5571667,
        size.height * 0.5176244,
        size.width * 0.5537500,
        size.height * 0.5120829);
    path_9.cubicTo(
        size.width * 0.5513725,
        size.height * 0.5082098,
        size.width * 0.5425833,
        size.height * 0.5137902,
        size.width * 0.5444559,
        size.height * 0.5179610);
    path_9.cubicTo(
        size.width * 0.5501667,
        size.height * 0.5306244,
        size.width * 0.5576667,
        size.height * 0.5400439,
        size.width * 0.5710833,
        size.height * 0.5453317);
    path_9.cubicTo(
        size.width * 0.5795000,
        size.height * 0.5486683,
        size.width * 0.5907500,
        size.height * 0.5464195,
        size.width * 0.5970000,
        size.height * 0.5403317);
    path_9.cubicTo(
        size.width * 0.6032059,
        size.height * 0.5342488,
        size.width * 0.6015833,
        size.height * 0.5264585,
        size.width * 0.6011667,
        size.height * 0.5194585);
    path_9.cubicTo(
        size.width * 0.6007892,
        size.height * 0.5124585,
        size.width * 0.5989167,
        size.height * 0.5077902,
        size.width * 0.5975392,
        size.height * 0.5013756);
    path_9.cubicTo(
        size.width * 0.5933333,
        size.height * 0.5033317,
        size.width * 0.5893333,
        size.height * 0.5052098,
        size.width * 0.5852059,
        size.height * 0.5073317);
    path_9.cubicTo(
        size.width * 0.5898725,
        size.height * 0.5109171,
        size.width * 0.5921667,
        size.height * 0.5145024,
        size.width * 0.5979559,
        size.height * 0.5172927);
    path_9.cubicTo(
        size.width * 0.6037500,
        size.height * 0.5200439,
        size.width * 0.6130000,
        size.height * 0.5217902,
        size.width * 0.6175392,
        size.height * 0.5152098);
    path_9.cubicTo(
        size.width * 0.6205392,
        size.height * 0.5108341,
        size.width * 0.6170000,
        size.height * 0.5051659,
        size.width * 0.6148333,
        size.height * 0.5012488);
    path_9.cubicTo(
        size.width * 0.6126667,
        size.height * 0.4972927,
        size.width * 0.6106667,
        size.height * 0.4935854,
        size.width * 0.6076667,
        size.height * 0.4904195);
    path_9.cubicTo(
        size.width * 0.6046667,
        size.height * 0.4872507,
        size.width * 0.5937892,
        size.height * 0.4901268,
        size.width * 0.5957500,
        size.height * 0.4947902);
    path_9.cubicTo(
        size.width * 0.6014559,
        size.height * 0.5084195,
        size.width * 0.6121667,
        size.height * 0.5146244,
        size.width * 0.6262892,
        size.height * 0.5165415);
    path_9.cubicTo(
        size.width * 0.6330000,
        size.height * 0.5174585,
        size.width * 0.6407059,
        size.height * 0.5142098,
        size.width * 0.6420392,
        size.height * 0.5076244);
    path_9.cubicTo(
        size.width * 0.6433333,
        size.height * 0.5010439,
        size.width * 0.6388333,
        size.height * 0.4957512,
        size.width * 0.6364559,
        size.height * 0.4908341);
    path_9.cubicTo(
        size.width * 0.6340833,
        size.height * 0.4859171,
        size.width * 0.6305392,
        size.height * 0.4821673,
        size.width * 0.6275392,
        size.height * 0.4787922);
    path_9.cubicTo(
        size.width * 0.6245392,
        size.height * 0.4753756,
        size.width * 0.6140000,
        size.height * 0.4778337,
        size.width * 0.6169167,
        size.height * 0.4821673);
    path_9.cubicTo(
        size.width * 0.6231225,
        size.height * 0.4914195,
        size.width * 0.6302892,
        size.height * 0.4980000,
        size.width * 0.6312059,
        size.height * 0.5095024);
    path_9.cubicTo(
        size.width * 0.6312500,
        size.height * 0.5101659,
        size.width * 0.6307500,
        size.height * 0.5106244,
        size.width * 0.6314167,
        size.height * 0.5101659);
    path_9.cubicTo(
        size.width * 0.6320833,
        size.height * 0.5097073,
        size.width * 0.6308725,
        size.height * 0.5102488,
        size.width * 0.6302892,
        size.height * 0.5101659);
    path_9.cubicTo(
        size.width * 0.6297059,
        size.height * 0.5100829,
        size.width * 0.6287059,
        size.height * 0.5101659,
        size.width * 0.6278333,
        size.height * 0.5098732);
    path_9.cubicTo(
        size.width * 0.6235833,
        size.height * 0.5083756,
        size.width * 0.6203725,
        size.height * 0.5067512,
        size.width * 0.6170000,
        size.height * 0.5033317);
    path_9.cubicTo(
        size.width * 0.6136225,
        size.height * 0.4999171,
        size.width * 0.6104559,
        size.height * 0.4953756,
        size.width * 0.6081667,
        size.height * 0.4909610);
    path_9.cubicTo(
        size.width * 0.6037892,
        size.height * 0.4923756,
        size.width * 0.5995392,
        size.height * 0.4940000,
        size.width * 0.5953333,
        size.height * 0.4957902);
    path_9.cubicTo(
        size.width * 0.5998725,
        size.height * 0.5017073,
        size.width * 0.6037892,
        size.height * 0.5072927,
        size.width * 0.6060833,
        size.height * 0.5144585);
    path_9.cubicTo(
        size.width * 0.6060833,
        size.height * 0.5145854,
        size.width * 0.6057892,
        size.height * 0.5162098,
        size.width * 0.6062892,
        size.height * 0.5158732);
    path_9.cubicTo(
        size.width * 0.6067892,
        size.height * 0.5155415,
        size.width * 0.6115392,
        size.height * 0.5146683,
        size.width * 0.6109167,
        size.height * 0.5132098);
    path_9.cubicTo(
        size.width * 0.6102892,
        size.height * 0.5117512,
        size.width * 0.6088725,
        size.height * 0.5120829,
        size.width * 0.6077500,
        size.height * 0.5112488);
    path_9.cubicTo(
        size.width * 0.6066225,
        size.height * 0.5104195,
        size.width * 0.6056225,
        size.height * 0.5096244,
        size.width * 0.6044559,
        size.height * 0.5087073);
    path_9.cubicTo(
        size.width * 0.6014167,
        size.height * 0.5063317,
        size.width * 0.5996667,
        size.height * 0.5035024,
        size.width * 0.5963725,
        size.height * 0.5010439);
    path_9.cubicTo(
        size.width * 0.5930392,
        size.height * 0.4985854,
        size.width * 0.5840000,
        size.height * 0.5022927,
        size.width * 0.5850000,
        size.height * 0.5067073);
    path_9.cubicTo(
        size.width * 0.5872500,
        size.height * 0.5168732,
        size.width * 0.5909559,
        size.height * 0.5256244,
        size.width * 0.5900000,
        size.height * 0.5357512);
    path_9.cubicTo(
        size.width * 0.5897892,
        size.height * 0.5381268,
        size.width * 0.5887059,
        size.height * 0.5391268,
        size.width * 0.5870833,
        size.height * 0.5395024);
    path_9.cubicTo(
        size.width * 0.5835392,
        size.height * 0.5403317,
        size.width * 0.5798333,
        size.height * 0.5395024,
        size.width * 0.5769559,
        size.height * 0.5380829);
    path_9.cubicTo(
        size.width * 0.5699167,
        size.height * 0.5347512,
        size.width * 0.5652500,
        size.height * 0.5297902,
        size.width * 0.5606667,
        size.height * 0.5239171);
    path_9.cubicTo(
        size.width * 0.5577059,
        size.height * 0.5201268,
        size.width * 0.5560833,
        size.height * 0.5162927,
        size.width * 0.5539559,
        size.height * 0.5121659);
    path_9.cubicTo(
        size.width * 0.5505833,
        size.height * 0.5142098,
        size.width * 0.5471225,
        size.height * 0.5162098,
        size.width * 0.5437059,
        size.height * 0.5182927);
    path_9.cubicTo(
        size.width * 0.5478725,
        size.height * 0.5279171,
        size.width * 0.5502500,
        size.height * 0.5375024,
        size.width * 0.5503333,
        size.height * 0.5478732);
    path_9.cubicTo(
        size.width * 0.5503333,
        size.height * 0.5500000,
        size.width * 0.5487500,
        size.height * 0.5532927,
        size.width * 0.5478333,
        size.height * 0.5542927);
    path_9.cubicTo(
        size.width * 0.5469167,
        size.height * 0.5552927,
        size.width * 0.5487500,
        size.height * 0.5532927,
        size.width * 0.5478333,
        size.height * 0.5542927);
    path_9.cubicTo(
        size.width * 0.5469167,
        size.height * 0.5552927,
        size.width * 0.5466225,
        size.height * 0.5547902,
        size.width * 0.5460392,
        size.height * 0.5549171);
    path_9.cubicTo(
        size.width * 0.5438333,
        size.height * 0.5554195,
        size.width * 0.5415392,
        size.height * 0.5554585,
        size.width * 0.5396667,
        size.height * 0.5549171);
    path_9.cubicTo(
        size.width * 0.5319559,
        size.height * 0.5525854,
        size.width * 0.5271667,
        size.height * 0.5480829,
        size.width * 0.5230000,
        size.height * 0.5415024);
    path_9.cubicTo(
        size.width * 0.5200000,
        size.height * 0.5368341,
        size.width * 0.5187500,
        size.height * 0.5320000,
        size.width * 0.5169559,
        size.height * 0.5269171);
    path_9.cubicTo(
        size.width * 0.5134559,
        size.height * 0.5285854,
        size.width * 0.5099167,
        size.height * 0.5302927,
        size.width * 0.5064167,
        size.height * 0.5320000);
    path_9.cubicTo(
        size.width * 0.5065833,
        size.height * 0.5328732,
        size.width * 0.5064167,
        size.height * 0.5317073,
        size.width * 0.5064559,
        size.height * 0.5325024);
    path_9.cubicTo(
        size.width * 0.5064559,
        size.height * 0.5332927,
        size.width * 0.5068725,
        size.height * 0.5345415,
        size.width * 0.5069559,
        size.height * 0.5354585);
    path_9.cubicTo(
        size.width * 0.5072059,
        size.height * 0.5382927,
        size.width * 0.5080000,
        size.height * 0.5416683,
        size.width * 0.5075833,
        size.height * 0.5444585);
    path_9.cubicTo(
        size.width * 0.5065392,
        size.height * 0.5511659,
        size.width * 0.5065392,
        size.height * 0.5562927,
        size.width * 0.4990833,
        size.height * 0.5589610);
    path_9.cubicTo(
        size.width * 0.4916225,
        size.height * 0.5616244,
        size.width * 0.4823328,
        size.height * 0.5572927,
        size.width * 0.4784578,
        size.height * 0.5502488);
    path_9.cubicTo(
        size.width * 0.4745828,
        size.height * 0.5432098,
        size.width * 0.4756662,
        size.height * 0.5357073,
        size.width * 0.4766245,
        size.height * 0.5283756);
    path_9.cubicTo(
        size.width * 0.4771245,
        size.height * 0.5243756,
        size.width * 0.4784578,
        size.height * 0.5215024,
        size.width * 0.4794162,
        size.height * 0.5179610);
    path_9.cubicTo(
        size.width * 0.4797495,
        size.height * 0.5167512,
        size.width * 0.4803328,
        size.height * 0.5153756,
        size.width * 0.4806245,
        size.height * 0.5145854);
    path_9.cubicTo(
        size.width * 0.4808745,
        size.height * 0.5137902,
        size.width * 0.4809995,
        size.height * 0.5137902,
        size.width * 0.4810828,
        size.height * 0.5133756);
    path_9.cubicTo(
        size.width * 0.4811662,
        size.height * 0.5129610,
        size.width * 0.4807495,
        size.height * 0.5142488,
        size.width * 0.4809995,
        size.height * 0.5135415);
    path_9.cubicTo(
        size.width * 0.4774578,
        size.height * 0.5134585,
        size.width * 0.4739162,
        size.height * 0.5132488,
        size.width * 0.4703745,
        size.height * 0.5131659);
    path_9.cubicTo(
        size.width * 0.4703745,
        size.height * 0.5148732,
        size.width * 0.4707495,
        size.height * 0.5157902,
        size.width * 0.4704995,
        size.height * 0.5176683);
    path_9.cubicTo(
        size.width * 0.4700412,
        size.height * 0.5211268,
        size.width * 0.4704995,
        size.height * 0.5242488,
        size.width * 0.4690412,
        size.height * 0.5279610);
    path_9.cubicTo(
        size.width * 0.4654162,
        size.height * 0.5372927,
        size.width * 0.4585828,
        size.height * 0.5433317,
        size.width * 0.4492495,
        size.height * 0.5471659);
    path_9.cubicTo(
        size.width * 0.4464995,
        size.height * 0.5482927,
        size.width * 0.4434578,
        size.height * 0.5489171,
        size.width * 0.4409162,
        size.height * 0.5473317);
    path_9.cubicTo(
        size.width * 0.4383745,
        size.height * 0.5457512,
        size.width * 0.4374578,
        size.height * 0.5428341,
        size.width * 0.4371245,
        size.height * 0.5400439);
    path_9.cubicTo(
        size.width * 0.4362912,
        size.height * 0.5323317,
        size.width * 0.4375412,
        size.height * 0.5260829,
        size.width * 0.4388328,
        size.height * 0.5183317);
    path_9.cubicTo(
        size.width * 0.4397495,
        size.height * 0.5130000,
        size.width * 0.4410412,
        size.height * 0.5063317,
        size.width * 0.4419578,
        size.height * 0.5007512);
    path_9.cubicTo(
        size.width * 0.4378328,
        size.height * 0.5012098,
        size.width * 0.4339162,
        size.height * 0.5014585,
        size.width * 0.4297912,
        size.height * 0.5026683);
    path_9.cubicTo(
        size.width * 0.4301245,
        size.height * 0.5120829,
        size.width * 0.4248745,
        size.height * 0.5265024,
        size.width * 0.4132912,
        size.height * 0.5233317);
    path_9.cubicTo(
        size.width * 0.3964995,
        size.height * 0.5187512,
        size.width * 0.4048745,
        size.height * 0.5009171,
        size.width * 0.4102078,
        size.height * 0.4905415);
    path_9.cubicTo(
        size.width * 0.4124578,
        size.height * 0.4862088,
        size.width * 0.4141245,
        size.height * 0.4847088,
        size.width * 0.4161662,
        size.height * 0.4814171);
    path_9.cubicTo(
        size.width * 0.4169995,
        size.height * 0.4800839,
        size.width * 0.4183745,
        size.height * 0.4794590,
        size.width * 0.4185412,
        size.height * 0.4785420);
    path_9.cubicTo(
        size.width * 0.4194578,
        size.height * 0.4735420,
        size.width * 0.4112912,
        size.height * 0.4722088,
        size.width * 0.4094995,
        size.height * 0.4758337);
    path_9.cubicTo(
        size.width * 0.4094162,
        size.height * 0.4759590,
        size.width * 0.4095828,
        size.height * 0.4757507,
        size.width * 0.4095828,
        size.height * 0.4757922);
    path_9.lineTo(size.width * 0.4097078, size.height * 0.4757922);
    path_9.cubicTo(
        size.width * 0.4097078,
        size.height * 0.4757922,
        size.width * 0.4097078,
        size.height * 0.4757922,
        size.width * 0.4097078,
        size.height * 0.4758337);
    path_9.lineTo(size.width * 0.4097078, size.height * 0.4757088);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4020000, size.height * 0.3759166);
    path_10.cubicTo(
        size.width * 0.4016250,
        size.height * 0.3934166,
        size.width * 0.4065000,
        size.height * 0.4078332,
        size.width * 0.4130000,
        size.height * 0.4080000);
    path_10.cubicTo(
        size.width * 0.4194167,
        size.height * 0.4082917,
        size.width * 0.4249583,
        size.height * 0.3942502,
        size.width * 0.4253333,
        size.height * 0.3767502);
    path_10.cubicTo(
        size.width * 0.4257083,
        size.height * 0.3592502,
        size.width * 0.4208333,
        size.height * 0.3448332,
        size.width * 0.4143333,
        size.height * 0.3446668);
    path_10.cubicTo(
        size.width * 0.4079167,
        size.height * 0.3443751,
        size.width * 0.4023750,
        size.height * 0.3584166,
        size.width * 0.4020000,
        size.height * 0.3759166);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.5993775, size.height * 0.3800005);
    path_11.cubicTo(
        size.width * 0.5990000,
        size.height * 0.3975005,
        size.width * 0.6038775,
        size.height * 0.4119171,
        size.width * 0.6103775,
        size.height * 0.4120839);
    path_11.cubicTo(
        size.width * 0.6167941,
        size.height * 0.4123756,
        size.width * 0.6223333,
        size.height * 0.3983337,
        size.width * 0.6227108,
        size.height * 0.3808337);
    path_11.cubicTo(
        size.width * 0.6230833,
        size.height * 0.3633337,
        size.width * 0.6182108,
        size.height * 0.3489171,
        size.width * 0.6117108,
        size.height * 0.3487502);
    path_11.cubicTo(
        size.width * 0.6052941,
        size.height * 0.3484585,
        size.width * 0.5997500,
        size.height * 0.3625005,
        size.width * 0.5993775,
        size.height * 0.3800005);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.3809176, size.height * 0.3428337);
    path_12.cubicTo(
        size.width * 0.3809176,
        size.height * 0.3428337,
        size.width * 0.3909593,
        size.height * 0.3319171,
        size.width * 0.4084593,
        size.height * 0.3272922);
    path_12.cubicTo(
        size.width * 0.4233343,
        size.height * 0.3233756,
        size.width * 0.4291260,
        size.height * 0.3135005,
        size.width * 0.4160010,
        size.height * 0.3088756);
    path_12.cubicTo(
        size.width * 0.4011260,
        size.height * 0.3036673,
        size.width * 0.3897093,
        size.height * 0.3047922,
        size.width * 0.3727510,
        size.height * 0.3167507);
    path_12.cubicTo(
        size.width * 0.3547093,
        size.height * 0.3294171,
        size.width * 0.3505010,
        size.height * 0.3786673,
        size.width * 0.3635010,
        size.height * 0.3663337);
    path_12.lineTo(size.width * 0.3809176, size.height * 0.3428337);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.6339608, size.height * 0.3418337);
    path_13.cubicTo(
        size.width * 0.6339608,
        size.height * 0.3418337,
        size.width * 0.6239167,
        size.height * 0.3309166,
        size.width * 0.6064167,
        size.height * 0.3262917);
    path_13.cubicTo(
        size.width * 0.5915441,
        size.height * 0.3223751,
        size.width * 0.5857500,
        size.height * 0.3125000,
        size.width * 0.5988775,
        size.height * 0.3078751);
    path_13.cubicTo(
        size.width * 0.6137500,
        size.height * 0.3026668,
        size.width * 0.6251667,
        size.height * 0.3037917,
        size.width * 0.6421275,
        size.height * 0.3157502);
    path_13.cubicTo(
        size.width * 0.6601667,
        size.height * 0.3284166,
        size.width * 0.6643775,
        size.height * 0.3776668,
        size.width * 0.6513775,
        size.height * 0.3653337);
    path_13.lineTo(size.width * 0.6339608, size.height * 0.3418337);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.4689593, size.height * 0.3775834);
    path_14.cubicTo(
        size.width * 0.4687093,
        size.height * 0.4079580,
        size.width * 0.4495010,
        size.height * 0.4360000,
        size.width * 0.4207093,
        size.height * 0.4462083);
    path_14.cubicTo(
        size.width * 0.3918760,
        size.height * 0.4564166,
        size.width * 0.3596260,
        size.height * 0.4474580,
        size.width * 0.3401676,
        size.height * 0.4241663);
    path_14.cubicTo(
        size.width * 0.3207093,
        size.height * 0.4008746,
        size.width * 0.3180010,
        size.height * 0.3658746,
        size.width * 0.3339593,
        size.height * 0.3396663);
    path_14.cubicTo(
        size.width * 0.3500010,
        size.height * 0.3134580,
        size.width * 0.3808343,
        size.height * 0.3001663,
        size.width * 0.4105010,
        size.height * 0.3061663);
    path_14.cubicTo(
        size.width * 0.4442926,
        size.height * 0.3130000,
        size.width * 0.4687093,
        size.height * 0.3432917,
        size.width * 0.4689593,
        size.height * 0.3775834);
    path_14.cubicTo(
        size.width * 0.4689593,
        size.height * 0.3810415,
        size.width * 0.4743343,
        size.height * 0.3810415,
        size.width * 0.4743343,
        size.height * 0.3775834);
    path_14.cubicTo(
        size.width * 0.4740843,
        size.height * 0.3450834,
        size.width * 0.4537093,
        size.height * 0.3155415,
        size.width * 0.4230843,
        size.height * 0.3042083);
    path_14.cubicTo(
        size.width * 0.3924593,
        size.height * 0.2928746,
        size.width * 0.3564593,
        size.height * 0.3025829,
        size.width * 0.3357093,
        size.height * 0.3280000);
    path_14.cubicTo(
        size.width * 0.3150010,
        size.height * 0.3533746,
        size.width * 0.3122510,
        size.height * 0.3901249,
        size.width * 0.3293343,
        size.height * 0.4181663);
    path_14.cubicTo(
        size.width * 0.3464176,
        size.height * 0.4462083,
        size.width * 0.3798343,
        size.height * 0.4605415,
        size.width * 0.4119176,
        size.height * 0.4540834);
    path_14.cubicTo(
        size.width * 0.4479593,
        size.height * 0.4467498,
        size.width * 0.4740010,
        size.height * 0.4141249,
        size.width * 0.4742926,
        size.height * 0.3775415);
    path_14.cubicTo(
        size.width * 0.4742926,
        size.height * 0.3740834,
        size.width * 0.4689176,
        size.height * 0.3740834,
        size.width * 0.4689176,
        size.height * 0.3775415);
    path_14.lineTo(size.width * 0.4689593, size.height * 0.3775415);
    path_14.lineTo(size.width * 0.4689593, size.height * 0.3775834);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.4724588, size.height * 0.3745420);
    path_15.cubicTo(
        size.width * 0.4789172,
        size.height * 0.3689590,
        size.width * 0.4868755,
        size.height * 0.3651673,
        size.width * 0.4946275,
        size.height * 0.3628337);
    path_15.cubicTo(
        size.width * 0.5129167,
        size.height * 0.3572922,
        size.width * 0.5311275,
        size.height * 0.3619590,
        size.width * 0.5464608,
        size.height * 0.3745420);
    path_15.cubicTo(
        size.width * 0.5492108,
        size.height * 0.3767502,
        size.width * 0.5518333,
        size.height * 0.3715420,
        size.width * 0.5490833,
        size.height * 0.3692922);
    path_15.cubicTo(
        size.width * 0.5331667,
        size.height * 0.3562088,
        size.width * 0.5140441,
        size.height * 0.3513337,
        size.width * 0.4950000,
        size.height * 0.3564590);
    path_15.cubicTo(
        size.width * 0.4862505,
        size.height * 0.3587922,
        size.width * 0.4783755,
        size.height * 0.3630005,
        size.width * 0.4710838,
        size.height * 0.3692922);
    path_15.cubicTo(
        size.width * 0.4684172,
        size.height * 0.3715839,
        size.width * 0.4697088,
        size.height * 0.3768756,
        size.width * 0.4724172,
        size.height * 0.3745420);
    path_15.lineTo(size.width * 0.4724588, size.height * 0.3745420);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.6980441, size.height * 0.3775834);
    path_16.cubicTo(
        size.width * 0.6977941,
        size.height * 0.4079580,
        size.width * 0.6785833,
        size.height * 0.4360000,
        size.width * 0.6497941,
        size.height * 0.4462083);
    path_16.cubicTo(
        size.width * 0.6209608,
        size.height * 0.4564166,
        size.width * 0.5887108,
        size.height * 0.4474580,
        size.width * 0.5692500,
        size.height * 0.4241663);
    path_16.cubicTo(
        size.width * 0.5497941,
        size.height * 0.4008746,
        size.width * 0.5470833,
        size.height * 0.3658746,
        size.width * 0.5630441,
        size.height * 0.3396663);
    path_16.cubicTo(
        size.width * 0.5790833,
        size.height * 0.3134580,
        size.width * 0.6099167,
        size.height * 0.3001663,
        size.width * 0.6395833,
        size.height * 0.3061663);
    path_16.cubicTo(
        size.width * 0.6733775,
        size.height * 0.3130000,
        size.width * 0.6977941,
        size.height * 0.3432917,
        size.width * 0.6980441,
        size.height * 0.3775834);
    path_16.cubicTo(
        size.width * 0.6980441,
        size.height * 0.3810415,
        size.width * 0.7034167,
        size.height * 0.3810415,
        size.width * 0.7034167,
        size.height * 0.3775834);
    path_16.cubicTo(
        size.width * 0.7031667,
        size.height * 0.3450834,
        size.width * 0.6827941,
        size.height * 0.3155415,
        size.width * 0.6521667,
        size.height * 0.3042083);
    path_16.cubicTo(
        size.width * 0.6215833,
        size.height * 0.2928746,
        size.width * 0.5855441,
        size.height * 0.3025829,
        size.width * 0.5647941,
        size.height * 0.3280000);
    path_16.cubicTo(
        size.width * 0.5440833,
        size.height * 0.3533746,
        size.width * 0.5413333,
        size.height * 0.3901249,
        size.width * 0.5584167,
        size.height * 0.4181663);
    path_16.cubicTo(
        size.width * 0.5755000,
        size.height * 0.4462083,
        size.width * 0.6089167,
        size.height * 0.4605415,
        size.width * 0.6410000,
        size.height * 0.4540834);
    path_16.cubicTo(
        size.width * 0.6770441,
        size.height * 0.4467498,
        size.width * 0.7030833,
        size.height * 0.4141249,
        size.width * 0.7033775,
        size.height * 0.3775415);
    path_16.cubicTo(
        size.width * 0.7033775,
        size.height * 0.3740834,
        size.width * 0.6980000,
        size.height * 0.3740834,
        size.width * 0.6980000,
        size.height * 0.3775415);
    path_16.lineTo(size.width * 0.6980441, size.height * 0.3775415);
    path_16.lineTo(size.width * 0.6980441, size.height * 0.3775834);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
