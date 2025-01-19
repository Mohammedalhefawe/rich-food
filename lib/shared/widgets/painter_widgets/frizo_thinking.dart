import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
/*
CustomPaint(
size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
)
*/

//Copy this CustomPainter code to the Bottom of the File
class FrizoThinkingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7285400, size.height * 0.8456650);
    path_0.lineTo(size.width * 0.8937100, size.height * 0.8414600);
    path_0.lineTo(size.width * 0.8937100, size.height * 0.9310000);
    path_0.lineTo(size.width * 0.7285400, size.height * 0.9365000);
    path_0.lineTo(size.width * 0.7285400, size.height * 0.8456650);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE0E0E0).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7305850, size.height * 0.8466250);
    path_1.lineTo(size.width * 0.8957900, size.height * 0.8424150);
    path_1.lineTo(size.width * 0.8957900, size.height * 0.9319600);
    path_1.lineTo(size.width * 0.7305850, size.height * 0.9374600);
    path_1.lineTo(size.width * 0.7305850, size.height * 0.8466250);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffD1D1D1).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.7351650, size.height * 0.8474150);
    path_2.lineTo(size.width * 0.9003750, size.height * 0.8432100);
    path_2.lineTo(size.width * 0.9003750, size.height * 0.9327900);
    path_2.lineTo(size.width * 0.7351650, size.height * 0.9382900);
    path_2.lineTo(size.width * 0.7351650, size.height * 0.8474150);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffE0E0E0).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.7434150, size.height * 0.4557080);
    path_3.cubicTo(
        size.width * 0.7434150,
        size.height * 0.4557080,
        size.width * 0.7865000,
        size.height * 0.4949995,
        size.width * 0.7928350,
        size.height * 0.6445400);
    path_3.cubicTo(
        size.width * 0.7991650,
        size.height * 0.7940850,
        size.width * 0.7928350,
        size.height * 0.8053750,
        size.width * 0.7928350,
        size.height * 0.8053750);
    path_3.cubicTo(
        size.width * 0.7928350,
        size.height * 0.8053750,
        size.width * 0.7712950,
        size.height * 0.8378350,
        size.width * 0.7725450,
        size.height * 0.8441650);
    path_3.lineTo(size.width * 0.7883750, size.height * 0.8441650);
    path_3.cubicTo(
        size.width * 0.7883750,
        size.height * 0.8441650,
        size.width * 0.7792900,
        size.height * 0.9035000,
        size.width * 0.7860400,
        size.height * 0.9035000);
    path_3.cubicTo(
        size.width * 0.7927900,
        size.height * 0.9035000,
        size.width * 0.8000000,
        size.height * 0.8621250,
        size.width * 0.8000000,
        size.height * 0.8621250);
    path_3.cubicTo(
        size.width * 0.8000000,
        size.height * 0.8621250,
        size.width * 0.7995850,
        size.height * 0.8988750,
        size.width * 0.8076250,
        size.height * 0.9035000);
    path_3.cubicTo(
        size.width * 0.8156700,
        size.height * 0.9081650,
        size.width * 0.8147950,
        size.height * 0.8616650,
        size.width * 0.8147950,
        size.height * 0.8616650);
    path_3.cubicTo(
        size.width * 0.8147950,
        size.height * 0.8616650,
        size.width * 0.8207100,
        size.height * 0.8980000,
        size.width * 0.8291250,
        size.height * 0.8988350);
    path_3.cubicTo(
        size.width * 0.8375850,
        size.height * 0.8997100,
        size.width * 0.8274150,
        size.height * 0.8304150,
        size.width * 0.8143350,
        size.height * 0.8029150);
    path_3.cubicTo(
        size.width * 0.8143350,
        size.height * 0.8029150,
        size.width * 0.8384150,
        size.height * 0.4847910,
        size.width * 0.7686650,
        size.height * 0.3985830);
    path_3.cubicTo(
        size.width * 0.7686650,
        size.height * 0.3985830,
        size.width * 0.7382500,
        size.height * 0.4175825,
        size.width * 0.7433350,
        size.height * 0.4556245);
    path_3.lineTo(size.width * 0.7434150, size.height * 0.4557080);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4014990, size.height * 0.6847500);
    path_4.lineTo(size.width * 0.4538740, size.height * 0.9222100);
    path_4.cubicTo(
        size.width * 0.4538740,
        size.height * 0.9222100,
        size.width * 0.3668320,
        size.height * 0.9095000,
        size.width * 0.3685405,
        size.height * 0.9298350);
    path_4.cubicTo(
        size.width * 0.3702490,
        size.height * 0.9501250,
        size.width * 0.4817905,
        size.height * 0.9298350,
        size.width * 0.4817905,
        size.height * 0.9298350);
    path_4.lineTo(size.width * 0.4817905, size.height * 0.6788750);
    path_4.lineTo(size.width * 0.4014990, size.height * 0.6847900);
    path_4.lineTo(size.width * 0.4014990, size.height * 0.6847500);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.6009150, size.height * 0.6847500);
    path_5.lineTo(size.width * 0.5485400, size.height * 0.9222100);
    path_5.cubicTo(
        size.width * 0.5485400,
        size.height * 0.9222100,
        size.width * 0.6355850,
        size.height * 0.9095000,
        size.width * 0.6338750,
        size.height * 0.9298350);
    path_5.cubicTo(
        size.width * 0.6321650,
        size.height * 0.9501250,
        size.width * 0.5206650,
        size.height * 0.9298350,
        size.width * 0.5206650,
        size.height * 0.9298350);
    path_5.lineTo(size.width * 0.5206650, size.height * 0.6788750);
    path_5.lineTo(size.width * 0.6009150, size.height * 0.6847900);
    path_5.lineTo(size.width * 0.6009150, size.height * 0.6847500);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.3364590, size.height * 0.6764600);
    path_6.cubicTo(
        size.width * 0.3364590,
        size.height * 0.6764600,
        size.width * 0.3359175,
        size.height * 0.6805000,
        size.width * 0.3354590,
        size.height * 0.6870400);
    path_6.cubicTo(
        size.width * 0.3364175,
        size.height * 0.6809150,
        size.width * 0.3364590,
        size.height * 0.6764600,
        size.width * 0.3364590,
        size.height * 0.6764600);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.2662085, size.height * 0.1982090);
    path_7.cubicTo(
        size.width * 0.2680420,
        size.height * 0.1973755,
        size.width * 0.2692500,
        size.height * 0.1967505,
        size.width * 0.2692500,
        size.height * 0.1967505);
    path_7.cubicTo(
        size.width * 0.2682500,
        size.height * 0.1972090,
        size.width * 0.2672500,
        size.height * 0.1976670,
        size.width * 0.2662085,
        size.height * 0.1982090);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.4370410, size.height * 0.6991250);
    path_8.cubicTo(
        size.width * 0.4376660,
        size.height * 0.6933350,
        size.width * 0.4378325,
        size.height * 0.6897900,
        size.width * 0.4378325,
        size.height * 0.6897900);
    path_8.cubicTo(
        size.width * 0.4378325,
        size.height * 0.6897900,
        size.width * 0.4370825,
        size.height * 0.6935850,
        size.width * 0.4370410,
        size.height * 0.6991250);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.7277100, size.height * 0.2225000);
    path_9.cubicTo(
        size.width * 0.7488350,
        size.height * 0.2216670,
        size.width * 0.7403750,
        size.height * 0.2005420,
        size.width * 0.7403750,
        size.height * 0.2005420);
    path_9.cubicTo(
        size.width * 0.6837900,
        size.height * 0.08987500,
        size.width * 0.5204150,
        size.height * 0.1227915,
        size.width * 0.5204150,
        size.height * 0.1227915);
    path_9.cubicTo(
        size.width * 0.5204150,
        size.height * 0.1227915,
        size.width * 0.5849150,
        size.height * 0.1050415,
        size.width * 0.5654600,
        size.height * 0.08812500);
    path_9.cubicTo(
        size.width * 0.5460400,
        size.height * 0.07120850,
        size.width * 0.5088750,
        size.height * 0.1050415,
        size.width * 0.5088750,
        size.height * 0.1050415);
    path_9.cubicTo(
        size.width * 0.5088750,
        size.height * 0.1050415,
        size.width * 0.5477500,
        size.height * 0.05770850,
        size.width * 0.5249150,
        size.height * 0.05433350);
    path_9.cubicTo(
        size.width * 0.5020850,
        size.height * 0.05095850,
        size.width * 0.4902500,
        size.height * 0.09237500,
        size.width * 0.4902500,
        size.height * 0.09237500);
    path_9.cubicTo(
        size.width * 0.4902500,
        size.height * 0.09237500,
        size.width * 0.4927915,
        size.height * 0.04591675,
        size.width * 0.4700000,
        size.height * 0.04591675);
    path_9.cubicTo(
        size.width * 0.4472085,
        size.height * 0.04591675,
        size.width * 0.4623750,
        size.height * 0.1228335,
        size.width * 0.4623750,
        size.height * 0.1228335);
    path_9.cubicTo(
        size.width * 0.3214585,
        size.height * 0.07995850,
        size.width * 0.2534585,
        size.height * 0.1732915,
        size.width * 0.2490000,
        size.height * 0.1917085);
    path_9.cubicTo(
        size.width * 0.2455415,
        size.height * 0.2060420,
        size.width * 0.2597915,
        size.height * 0.2010835,
        size.width * 0.2662500,
        size.height * 0.1982500);
    path_9.cubicTo(
        size.width * 0.2672500,
        size.height * 0.1977500,
        size.width * 0.2682500,
        size.height * 0.1972500,
        size.width * 0.2692915,
        size.height * 0.1967920);
    path_9.cubicTo(
        size.width * 0.2692915,
        size.height * 0.1967920,
        size.width * 0.2680835,
        size.height * 0.1974585,
        size.width * 0.2662500,
        size.height * 0.1982500);
    path_9.cubicTo(
        size.width * 0.2614165,
        size.height * 0.2007500,
        size.width * 0.2566250,
        size.height * 0.2042920,
        size.width * 0.2520000,
        size.height * 0.2086670);
    path_9.cubicTo(
        size.width * 0.2751250,
        size.height * 0.2048335,
        size.width * 0.2986250,
        size.height * 0.1927500,
        size.width * 0.3200000,
        size.height * 0.1854170);
    path_9.cubicTo(
        size.width * 0.3200000,
        size.height * 0.1879585,
        size.width * 0.3212500,
        size.height * 0.1905000,
        size.width * 0.3200000,
        size.height * 0.1917500);
    path_9.cubicTo(
        size.width * 0.3060415,
        size.height * 0.2107500,
        size.width * 0.2769165,
        size.height * 0.2272085,
        size.width * 0.2845415,
        size.height * 0.2475420);
    path_9.cubicTo(
        size.width * 0.2921665,
        size.height * 0.2690835,
        size.width * 0.3276250,
        size.height * 0.2564170,
        size.width * 0.3479165,
        size.height * 0.2462920);
    path_9.cubicTo(
        size.width * 0.3732500,
        size.height * 0.2323335,
        size.width * 0.3973335,
        size.height * 0.2158750,
        size.width * 0.4239585,
        size.height * 0.2057500);
    path_9.cubicTo(
        size.width * 0.4227085,
        size.height * 0.2285835,
        size.width * 0.4125835,
        size.height * 0.2488335,
        size.width * 0.4150835,
        size.height * 0.2716665);
    path_9.cubicTo(
        size.width * 0.4581665,
        size.height * 0.2817915,
        size.width * 0.4873335,
        size.height * 0.2399585,
        size.width * 0.5038350,
        size.height * 0.2070415);
    path_9.cubicTo(
        size.width * 0.5253750,
        size.height * 0.2184165,
        size.width * 0.5228350,
        size.height * 0.2501250,
        size.width * 0.5456650,
        size.height * 0.2577500);
    path_9.cubicTo(
        size.width * 0.5748350,
        size.height * 0.2666250,
        size.width * 0.5900000,
        size.height * 0.2374585,
        size.width * 0.5862100,
        size.height * 0.2108335);
    path_9.cubicTo(
        size.width * 0.5862100,
        size.height * 0.2082915,
        size.width * 0.5900000,
        size.height * 0.2095835,
        size.width * 0.5912900,
        size.height * 0.2095835);
    path_9.cubicTo(
        size.width * 0.6166250,
        size.height * 0.2260420,
        size.width * 0.6369600,
        size.height * 0.2565000,
        size.width * 0.6673350,
        size.height * 0.2437920);
    path_9.cubicTo(
        size.width * 0.6850850,
        size.height * 0.2361665,
        size.width * 0.6736650,
        size.height * 0.2095835,
        size.width * 0.6762100,
        size.height * 0.1918335);
    path_9.cubicTo(
        size.width * 0.6825400,
        size.height * 0.1930835,
        size.width * 0.6863350,
        size.height * 0.1981670,
        size.width * 0.6888750,
        size.height * 0.2019585);
    path_9.cubicTo(
        size.width * 0.7045850,
        size.height * 0.2250420,
        size.width * 0.7250400,
        size.height * 0.2454585,
        size.width * 0.7497100,
        size.height * 0.2513750);
    path_9.cubicTo(
        size.width * 0.7383350,
        size.height * 0.2277500,
        size.width * 0.7277900,
        size.height * 0.2226665,
        size.width * 0.7277900,
        size.height * 0.2226665);
    path_9.lineTo(size.width * 0.7277900, size.height * 0.2225835);
    path_9.lineTo(size.width * 0.7277100, size.height * 0.2225000);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.7568350, size.height * 0.5431650);
    path_10.cubicTo(
        size.width * 0.7728750,
        size.height * 0.5448750,
        size.width * 0.7737500,
        size.height * 0.5224600,
        size.width * 0.7737500,
        size.height * 0.5224600);
    path_10.cubicTo(
        size.width * 0.7851250,
        size.height * 0.3620005,
        size.width * 0.7664600,
        size.height * 0.2862505,
        size.width * 0.7496250,
        size.height * 0.2512085);
    path_10.cubicTo(
        size.width * 0.7249600,
        size.height * 0.2452920,
        size.width * 0.7045450,
        size.height * 0.2248750,
        size.width * 0.6887950,
        size.height * 0.2017920);
    path_10.cubicTo(
        size.width * 0.6862500,
        size.height * 0.1980000,
        size.width * 0.6824600,
        size.height * 0.1929170,
        size.width * 0.6761250,
        size.height * 0.1916670);
    path_10.cubicTo(
        size.width * 0.6735850,
        size.height * 0.2094170,
        size.width * 0.6850000,
        size.height * 0.2360005,
        size.width * 0.6672500,
        size.height * 0.2436255);
    path_10.cubicTo(
        size.width * 0.6368350,
        size.height * 0.2562920,
        size.width * 0.6165450,
        size.height * 0.2258750,
        size.width * 0.5912100,
        size.height * 0.2094170);
    path_10.cubicTo(
        size.width * 0.5899600,
        size.height * 0.2094170,
        size.width * 0.5861250,
        size.height * 0.2081670,
        size.width * 0.5861250,
        size.height * 0.2106670);
    path_10.cubicTo(
        size.width * 0.5899200,
        size.height * 0.2372920,
        size.width * 0.5747100,
        size.height * 0.2664585,
        size.width * 0.5455850,
        size.height * 0.2575835);
    path_10.cubicTo(
        size.width * 0.5227500,
        size.height * 0.2499585,
        size.width * 0.5253350,
        size.height * 0.2182920,
        size.width * 0.5037500,
        size.height * 0.2068755);
    path_10.cubicTo(
        size.width * 0.4872925,
        size.height * 0.2398335,
        size.width * 0.4580845,
        size.height * 0.2816670,
        size.width * 0.4150010,
        size.height * 0.2715005);
    path_10.cubicTo(
        size.width * 0.4124595,
        size.height * 0.2486670,
        size.width * 0.4226260,
        size.height * 0.2284170,
        size.width * 0.4238760,
        size.height * 0.2055835);
    path_10.cubicTo(
        size.width * 0.3972510,
        size.height * 0.2157085,
        size.width * 0.3731675,
        size.height * 0.2322085,
        size.width * 0.3478345,
        size.height * 0.2461250);
    path_10.cubicTo(
        size.width * 0.3275425,
        size.height * 0.2562505,
        size.width * 0.2920425,
        size.height * 0.2689585,
        size.width * 0.2844595,
        size.height * 0.2473750);
    path_10.cubicTo(
        size.width * 0.2768345,
        size.height * 0.2270835,
        size.width * 0.3060010,
        size.height * 0.2106250,
        size.width * 0.3199175,
        size.height * 0.1915835);
    path_10.cubicTo(
        size.width * 0.3211675,
        size.height * 0.1903335,
        size.width * 0.3199175,
        size.height * 0.1877920,
        size.width * 0.3199175,
        size.height * 0.1852500);
    path_10.cubicTo(
        size.width * 0.2985425,
        size.height * 0.1925835,
        size.width * 0.2750845,
        size.height * 0.2046670,
        size.width * 0.2519175,
        size.height * 0.2085005);
    path_10.cubicTo(
        size.width * 0.2097925,
        size.height * 0.2478755,
        size.width * 0.1771260,
        size.height * 0.3537920,
        size.width * 0.1805010,
        size.height * 0.3772505);
    path_10.cubicTo(
        size.width * 0.1842925,
        size.height * 0.4038755,
        size.width * 0.1982510,
        size.height * 0.4006670,
        size.width * 0.1982510,
        size.height * 0.4006670);
    path_10.cubicTo(
        size.width * 0.1912095,
        size.height * 0.4526255,
        size.width * 0.1932095,
        size.height * 0.5371650,
        size.width * 0.2026260,
        size.height * 0.5956250);
    path_10.cubicTo(
        size.width * 0.2162510,
        size.height * 0.5863750,
        size.width * 0.2298345,
        size.height * 0.5763750,
        size.width * 0.2464175,
        size.height * 0.5742900);
    path_10.cubicTo(
        size.width * 0.2464175,
        size.height * 0.5945400,
        size.width * 0.2400845,
        size.height * 0.6237100,
        size.width * 0.2565425,
        size.height * 0.6325850);
    path_10.cubicTo(
        size.width * 0.2768345,
        size.height * 0.6427100,
        size.width * 0.2920010,
        size.height * 0.6110400,
        size.width * 0.3123345,
        size.height * 0.6021650);
    path_10.cubicTo(
        size.width * 0.3148760,
        size.height * 0.6009150,
        size.width * 0.3186675,
        size.height * 0.6021650,
        size.width * 0.3186675,
        size.height * 0.6034150);
    path_10.cubicTo(
        size.width * 0.3224595,
        size.height * 0.6224150,
        size.width * 0.3174175,
        size.height * 0.6465000,
        size.width * 0.3300425,
        size.height * 0.6566650);
    path_10.cubicTo(
        size.width * 0.3440010,
        size.height * 0.6667900,
        size.width * 0.3553760,
        size.height * 0.6389150,
        size.width * 0.3705845,
        size.height * 0.6287900);
    path_10.cubicTo(
        size.width * 0.3782095,
        size.height * 0.6237100,
        size.width * 0.3845425,
        size.height * 0.6300400,
        size.width * 0.3857925,
        size.height * 0.6376650);
    path_10.cubicTo(
        size.width * 0.3883345,
        size.height * 0.6554150,
        size.width * 0.3921260,
        size.height * 0.6858350,
        size.width * 0.4136675,
        size.height * 0.6744150);
    path_10.cubicTo(
        size.width * 0.4314175,
        size.height * 0.6630400,
        size.width * 0.4339595,
        size.height * 0.6376650,
        size.width * 0.4504175,
        size.height * 0.6250000);
    path_10.cubicTo(
        size.width * 0.4529595,
        size.height * 0.6224600,
        size.width * 0.4580425,
        size.height * 0.6224600,
        size.width * 0.4617925,
        size.height * 0.6250000);
    path_10.cubicTo(
        size.width * 0.4757510,
        size.height * 0.6376650,
        size.width * 0.4795425,
        size.height * 0.6554150,
        size.width * 0.4909595,
        size.height * 0.6693750);
    path_10.cubicTo(
        size.width * 0.5023750,
        size.height * 0.6820400,
        size.width * 0.5162950,
        size.height * 0.6719150,
        size.width * 0.5239200,
        size.height * 0.6605000);
    path_10.cubicTo(
        size.width * 0.5315450,
        size.height * 0.6465400,
        size.width * 0.5378750,
        size.height * 0.6135850,
        size.width * 0.5530850,
        size.height * 0.6287900);
    path_10.cubicTo(
        size.width * 0.5708350,
        size.height * 0.6440000,
        size.width * 0.5872950,
        size.height * 0.6795000,
        size.width * 0.6113750,
        size.height * 0.6680850);
    path_10.cubicTo(
        size.width * 0.6253350,
        size.height * 0.6617500,
        size.width * 0.6164600,
        size.height * 0.6376650,
        size.width * 0.6265850,
        size.height * 0.6224150);
    path_10.cubicTo(
        size.width * 0.6278350,
        size.height * 0.6211650,
        size.width * 0.6316700,
        size.height * 0.6211650,
        size.width * 0.6342100,
        size.height * 0.6236650);
    path_10.cubicTo(
        size.width * 0.6469200,
        size.height * 0.6414150,
        size.width * 0.6659200,
        size.height * 0.6642100,
        size.width * 0.6823750,
        size.height * 0.6528350);
    path_10.cubicTo(
        size.width * 0.6937950,
        size.height * 0.6452100,
        size.width * 0.6900000,
        size.height * 0.6224150,
        size.width * 0.6950450,
        size.height * 0.6071650);
    path_10.cubicTo(
        size.width * 0.6962950,
        size.height * 0.6046250,
        size.width * 0.7001250,
        size.height * 0.6008350,
        size.width * 0.7013750,
        size.height * 0.6020850);
    path_10.cubicTo(
        size.width * 0.7120000,
        size.height * 0.6150400,
        size.width * 0.7268350,
        size.height * 0.6297900,
        size.width * 0.7418350,
        size.height * 0.6348350);
    path_10.cubicTo(
        size.width * 0.7603350,
        size.height * 0.5899600,
        size.width * 0.7567100,
        size.height * 0.5429150,
        size.width * 0.7567100,
        size.height * 0.5429150);
    path_10.lineTo(size.width * 0.7567950, size.height * 0.5430850);
    path_10.lineTo(size.width * 0.7568350, size.height * 0.5431650);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.7015000, size.height * 0.6022900);
    path_11.cubicTo(
        size.width * 0.7002500,
        size.height * 0.6010400,
        size.width * 0.6964150,
        size.height * 0.6048350,
        size.width * 0.6951650,
        size.height * 0.6073750);
    path_11.cubicTo(
        size.width * 0.6900800,
        size.height * 0.6225850,
        size.width * 0.6939150,
        size.height * 0.6454150,
        size.width * 0.6825000,
        size.height * 0.6530400);
    path_11.cubicTo(
        size.width * 0.6660400,
        size.height * 0.6644600,
        size.width * 0.6470400,
        size.height * 0.6416650,
        size.width * 0.6343350,
        size.height * 0.6239150);
    path_11.cubicTo(
        size.width * 0.6317900,
        size.height * 0.6213750,
        size.width * 0.6280000,
        size.height * 0.6213750,
        size.width * 0.6267100,
        size.height * 0.6226650);
    path_11.cubicTo(
        size.width * 0.6165850,
        size.height * 0.6378750,
        size.width * 0.6254550,
        size.height * 0.6619600,
        size.width * 0.6115000,
        size.height * 0.6683350);
    path_11.cubicTo(
        size.width * 0.5874150,
        size.height * 0.6797100,
        size.width * 0.5709600,
        size.height * 0.6442500,
        size.width * 0.5532100,
        size.height * 0.6290400);
    path_11.cubicTo(
        size.width * 0.5380000,
        size.height * 0.6138350,
        size.width * 0.5316650,
        size.height * 0.6467900,
        size.width * 0.5240400,
        size.height * 0.6607500);
    path_11.cubicTo(
        size.width * 0.5164150,
        size.height * 0.6721650,
        size.width * 0.5025000,
        size.height * 0.6822900,
        size.width * 0.4910825,
        size.height * 0.6696250);
    path_11.cubicTo(
        size.width * 0.4797075,
        size.height * 0.6556650,
        size.width * 0.4758740,
        size.height * 0.6379150,
        size.width * 0.4619160,
        size.height * 0.6252500);
    path_11.cubicTo(
        size.width * 0.4580825,
        size.height * 0.6227100,
        size.width * 0.4530410,
        size.height * 0.6227100,
        size.width * 0.4504990,
        size.height * 0.6252500);
    path_11.cubicTo(
        size.width * 0.4340410,
        size.height * 0.6379150,
        size.width * 0.4314990,
        size.height * 0.6632900,
        size.width * 0.4137490,
        size.height * 0.6746650);
    path_11.cubicTo(
        size.width * 0.3922075,
        size.height * 0.6860850,
        size.width * 0.3884160,
        size.height * 0.6556650,
        size.width * 0.3858740,
        size.height * 0.6379150);
    path_11.cubicTo(
        size.width * 0.3846240,
        size.height * 0.6302900,
        size.width * 0.3782490,
        size.height * 0.6239600,
        size.width * 0.3706660,
        size.height * 0.6290400);
    path_11.cubicTo(
        size.width * 0.3554575,
        size.height * 0.6391650,
        size.width * 0.3440410,
        size.height * 0.6670850,
        size.width * 0.3301240,
        size.height * 0.6569150);
    path_11.cubicTo(
        size.width * 0.3174575,
        size.height * 0.6467900,
        size.width * 0.3224990,
        size.height * 0.6227100,
        size.width * 0.3187490,
        size.height * 0.6036650);
    path_11.cubicTo(
        size.width * 0.3187490,
        size.height * 0.6024150,
        size.width * 0.3149575,
        size.height * 0.6011250,
        size.width * 0.3124160,
        size.height * 0.6024150);
    path_11.cubicTo(
        size.width * 0.2921240,
        size.height * 0.6112900,
        size.width * 0.2769575,
        size.height * 0.6429600,
        size.width * 0.2566240,
        size.height * 0.6328350);
    path_11.cubicTo(
        size.width * 0.2401660,
        size.height * 0.6239600,
        size.width * 0.2464990,
        size.height * 0.5947900,
        size.width * 0.2464990,
        size.height * 0.5745400);
    path_11.cubicTo(
        size.width * 0.2299160,
        size.height * 0.5766250,
        size.width * 0.2163740,
        size.height * 0.5865850,
        size.width * 0.2027075,
        size.height * 0.5958750);
    path_11.cubicTo(
        size.width * 0.2060410,
        size.height * 0.6165400,
        size.width * 0.2102910,
        size.height * 0.6339600,
        size.width * 0.2154160,
        size.height * 0.6455400);
    path_11.cubicTo(
        size.width * 0.2350825,
        size.height * 0.6899150,
        size.width * 0.2724575,
        size.height * 0.6461650,
        size.width * 0.2724575,
        size.height * 0.6461650);
    path_11.cubicTo(
        size.width * 0.2724575,
        size.height * 0.6461650,
        size.width * 0.2712075,
        size.height * 0.7184150,
        size.width * 0.3034990,
        size.height * 0.7222100);
    path_11.cubicTo(
        size.width * 0.3261240,
        size.height * 0.7248750,
        size.width * 0.3332075,
        size.height * 0.7014150,
        size.width * 0.3354575,
        size.height * 0.6871250);
    path_11.cubicTo(
        size.width * 0.3359160,
        size.height * 0.6805850,
        size.width * 0.3364575,
        size.height * 0.6765400,
        size.width * 0.3364575,
        size.height * 0.6765400);
    path_11.cubicTo(
        size.width * 0.3364575,
        size.height * 0.6765400,
        size.width * 0.3363740,
        size.height * 0.6810000,
        size.width * 0.3354575,
        size.height * 0.6871250);
    path_11.cubicTo(
        size.width * 0.3336660,
        size.height * 0.7132100,
        size.width * 0.3335410,
        size.height * 0.7790850,
        size.width * 0.3776660,
        size.height * 0.7862100);
    path_11.cubicTo(
        size.width * 0.4226240,
        size.height * 0.7934600,
        size.width * 0.4342910,
        size.height * 0.7247900,
        size.width * 0.4370825,
        size.height * 0.6992500);
    path_11.cubicTo(
        size.width * 0.4371660,
        size.height * 0.6936650,
        size.width * 0.4378740,
        size.height * 0.6899150,
        size.width * 0.4378740,
        size.height * 0.6899150);
    path_11.cubicTo(
        size.width * 0.4378740,
        size.height * 0.6899150,
        size.width * 0.4377075,
        size.height * 0.6935000,
        size.width * 0.4370825,
        size.height * 0.6992500);
    path_11.cubicTo(
        size.width * 0.4369575,
        size.height * 0.7122900,
        size.width * 0.4404990,
        size.height * 0.7351650,
        size.width * 0.4657490,
        size.height * 0.7431250);
    path_11.cubicTo(
        size.width * 0.5018750,
        size.height * 0.7545000,
        size.width * 0.5145400,
        size.height * 0.7101650,
        size.width * 0.5145400,
        size.height * 0.7101650);
    path_11.cubicTo(
        size.width * 0.5196250,
        size.height * 0.7247500,
        size.width * 0.5379550,
        size.height * 0.7057500,
        size.width * 0.5379550,
        size.height * 0.7057500);
    path_11.cubicTo(
        size.width * 0.5430400,
        size.height * 0.7336250,
        size.width * 0.5626650,
        size.height * 0.7114600,
        size.width * 0.5626650,
        size.height * 0.7114600);
    path_11.cubicTo(
        size.width * 0.5658300,
        size.height * 0.7336250,
        size.width * 0.5804150,
        size.height * 0.7190850,
        size.width * 0.5804150,
        size.height * 0.7190850);
    path_11.cubicTo(
        size.width * 0.5785000,
        size.height * 0.7387500,
        size.width * 0.5867500,
        size.height * 0.7412500,
        size.width * 0.5867500,
        size.height * 0.7412500);
    path_11.cubicTo(
        size.width * 0.6017500,
        size.height * 0.7439600,
        size.width * 0.6086650,
        size.height * 0.7367100,
        size.width * 0.6117500,
        size.height * 0.7283350);
    path_11.cubicTo(
        size.width * 0.6120850,
        size.height * 0.7171250,
        size.width * 0.6140000,
        size.height * 0.7082900,
        size.width * 0.6140000,
        size.height * 0.7082900);
    path_11.cubicTo(
        size.width * 0.6140000,
        size.height * 0.7082900,
        size.width * 0.6152100,
        size.height * 0.7190000,
        size.width * 0.6117500,
        size.height * 0.7283350);
    path_11.cubicTo(
        size.width * 0.6111650,
        size.height * 0.7467100,
        size.width * 0.6146650,
        size.height * 0.7715850,
        size.width * 0.6372050,
        size.height * 0.7752500);
    path_11.cubicTo(
        size.width * 0.6735400,
        size.height * 0.7811650,
        size.width * 0.6743750,
        size.height * 0.7051250,
        size.width * 0.6743750,
        size.height * 0.7051250);
    path_11.cubicTo(
        size.width * 0.7099150,
        size.height * 0.6907900,
        size.width * 0.7302500,
        size.height * 0.6634150,
        size.width * 0.7418750,
        size.height * 0.6352500);
    path_11.cubicTo(
        size.width * 0.7268300,
        size.height * 0.6301650,
        size.width * 0.7120400,
        size.height * 0.6154150,
        size.width * 0.7014150,
        size.height * 0.6025000);
    path_11.lineTo(size.width * 0.7014150, size.height * 0.6023750);
    path_11.lineTo(size.width * 0.7015000, size.height * 0.6022900);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.6140000, size.height * 0.7081650);
    path_12.cubicTo(
        size.width * 0.6140000,
        size.height * 0.7081650,
        size.width * 0.6121250,
        size.height * 0.7170000,
        size.width * 0.6117500,
        size.height * 0.7282100);
    path_12.cubicTo(
        size.width * 0.6152100,
        size.height * 0.7188750,
        size.width * 0.6140000,
        size.height * 0.7081650,
        size.width * 0.6140000,
        size.height * 0.7081650);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.3867075, size.height * 0.3919585);
    path_13.cubicTo(
        size.width * 0.3785825,
        size.height * 0.4025420,
        size.width * 0.3696245,
        size.height * 0.4155420,
        size.width * 0.3676245,
        size.height * 0.4289585);
    path_13.cubicTo(
        size.width * 0.3663745,
        size.height * 0.4371670,
        size.width * 0.3700410,
        size.height * 0.4435835,
        size.width * 0.3782910,
        size.height * 0.4455835);
    path_13.cubicTo(
        size.width * 0.3884160,
        size.height * 0.4480420,
        size.width * 0.3980410,
        size.height * 0.4435005,
        size.width * 0.4040825,
        size.height * 0.4353335);
    path_13.cubicTo(
        size.width * 0.4079995,
        size.height * 0.4300420,
        size.width * 0.4107910,
        size.height * 0.4235835,
        size.width * 0.4122495,
        size.height * 0.4170835);
    path_13.cubicTo(
        size.width * 0.4132910,
        size.height * 0.4123755,
        size.width * 0.4035410,
        size.height * 0.4145005,
        size.width * 0.4023325,
        size.height * 0.4180005);
    path_13.cubicTo(
        size.width * 0.4003745,
        size.height * 0.4236255,
        size.width * 0.3987910,
        size.height * 0.4294170,
        size.width * 0.3974575,
        size.height * 0.4352085);
    path_13.cubicTo(
        size.width * 0.3953325,
        size.height * 0.4445420,
        size.width * 0.3932495,
        size.height * 0.4549585,
        size.width * 0.3951660,
        size.height * 0.4645005);
    path_13.cubicTo(
        size.width * 0.3971245,
        size.height * 0.4740005,
        size.width * 0.4051660,
        size.height * 0.4775420,
        size.width * 0.4143745,
        size.height * 0.4755420);
    path_13.cubicTo(
        size.width * 0.4271660,
        size.height * 0.4727505,
        size.width * 0.4367910,
        size.height * 0.4636255,
        size.width * 0.4410410,
        size.height * 0.4514170);
    path_13.cubicTo(
        size.width * 0.4437075,
        size.height * 0.4437920,
        size.width * 0.4447075,
        size.height * 0.4353335,
        size.width * 0.4439160,
        size.height * 0.4272505);
    path_13.cubicTo(
        size.width * 0.4435410,
        size.height * 0.4234170,
        size.width * 0.4352495,
        size.height * 0.4256255,
        size.width * 0.4343325,
        size.height * 0.4281670);
    path_13.cubicTo(
        size.width * 0.4324160,
        size.height * 0.4334585,
        size.width * 0.4309575,
        size.height * 0.4389585,
        size.width * 0.4300410,
        size.height * 0.4445420);
    path_13.cubicTo(
        size.width * 0.4286660,
        size.height * 0.4526670,
        size.width * 0.4278745,
        size.height * 0.4630835,
        size.width * 0.4332910,
        size.height * 0.4700005);
    path_13.cubicTo(
        size.width * 0.4400410,
        size.height * 0.4787085,
        size.width * 0.4541660,
        size.height * 0.4771670,
        size.width * 0.4630410,
        size.height * 0.4730835);
    path_13.cubicTo(
        size.width * 0.4729575,
        size.height * 0.4685420,
        size.width * 0.4787910,
        size.height * 0.4591670,
        size.width * 0.4814575,
        size.height * 0.4489170);
    path_13.cubicTo(
        size.width * 0.4831660,
        size.height * 0.4423755,
        size.width * 0.4837495,
        size.height * 0.4353335,
        size.width * 0.4832495,
        size.height * 0.4285420);
    path_13.cubicTo(
        size.width * 0.4829575,
        size.height * 0.4245420,
        size.width * 0.4730825,
        size.height * 0.4267920,
        size.width * 0.4733745,
        size.height * 0.4312085);
    path_13.cubicTo(
        size.width * 0.4743745,
        size.height * 0.4448335,
        size.width * 0.4789995,
        size.height * 0.4632505,
        size.width * 0.4918325,
        size.height * 0.4704170);
    path_13.cubicTo(
        size.width * 0.4994995,
        size.height * 0.4747085,
        size.width * 0.5100850,
        size.height * 0.4744585,
        size.width * 0.5156250,
        size.height * 0.4669170);
    path_13.cubicTo(
        size.width * 0.5203350,
        size.height * 0.4604585,
        size.width * 0.5202900,
        size.height * 0.4512920,
        size.width * 0.5199150,
        size.height * 0.4436670);
    path_13.cubicTo(
        size.width * 0.5196250,
        size.height * 0.4375420,
        size.width * 0.5189150,
        size.height * 0.4313755,
        size.width * 0.5176250,
        size.height * 0.4254170);
    path_13.cubicTo(
        size.width * 0.5167500,
        size.height * 0.4212505,
        size.width * 0.5069600,
        size.height * 0.4237920,
        size.width * 0.5077500,
        size.height * 0.4280835);
    path_13.cubicTo(
        size.width * 0.5102900,
        size.height * 0.4411255,
        size.width * 0.5156250,
        size.height * 0.4569170,
        size.width * 0.5263750,
        size.height * 0.4654170);
    path_13.cubicTo(
        size.width * 0.5330850,
        size.height * 0.4707085,
        size.width * 0.5435400,
        size.height * 0.4720420,
        size.width * 0.5503750,
        size.height * 0.4662505);
    path_13.cubicTo(
        size.width * 0.5563750,
        size.height * 0.4612085,
        size.width * 0.5565400,
        size.height * 0.4525005,
        size.width * 0.5560400,
        size.height * 0.4453335);
    path_13.cubicTo(
        size.width * 0.5556250,
        size.height * 0.4392920,
        size.width * 0.5545400,
        size.height * 0.4331670,
        size.width * 0.5528750,
        size.height * 0.4273335);
    path_13.lineTo(size.width * 0.5434150, size.height * 0.4307505);
    path_13.cubicTo(
        size.width * 0.5460850,
        size.height * 0.4350835,
        size.width * 0.5492500,
        size.height * 0.4394585,
        size.width * 0.5530000,
        size.height * 0.4429585);
    path_13.cubicTo(
        size.width * 0.5571250,
        size.height * 0.4467505,
        size.width * 0.5658750,
        size.height * 0.4501670,
        size.width * 0.5694600,
        size.height * 0.4435420);
    path_13.cubicTo(
        size.width * 0.5718350,
        size.height * 0.4392085,
        size.width * 0.5680400,
        size.height * 0.4325005,
        size.width * 0.5662100,
        size.height * 0.4286255);
    path_13.cubicTo(
        size.width * 0.5643750,
        size.height * 0.4247505,
        size.width * 0.5622900,
        size.height * 0.4208335,
        size.width * 0.5600850,
        size.height * 0.4170835);
    path_13.cubicTo(
        size.width * 0.5582900,
        size.height * 0.4140420,
        size.width * 0.5492100,
        size.height * 0.4167920,
        size.width * 0.5506250,
        size.height * 0.4205005);
    path_13.cubicTo(
        size.width * 0.5548750,
        size.height * 0.4314170,
        size.width * 0.5634600,
        size.height * 0.4446670,
        size.width * 0.5763350,
        size.height * 0.4453755);
    path_13.cubicTo(
        size.width * 0.5824600,
        size.height * 0.4457085,
        size.width * 0.5899150,
        size.height * 0.4430005,
        size.width * 0.5901650,
        size.height * 0.4359170);
    path_13.cubicTo(
        size.width * 0.5903750,
        size.height * 0.4297085,
        size.width * 0.5866650,
        size.height * 0.4234585,
        size.width * 0.5836650,
        size.height * 0.4183335);
    path_13.cubicTo(
        size.width * 0.5811650,
        size.height * 0.4140005,
        size.width * 0.5783350,
        size.height * 0.4097085,
        size.width * 0.5752500,
        size.height * 0.4057085);
    path_13.cubicTo(
        size.width * 0.5727900,
        size.height * 0.4024585,
        size.width * 0.5633350,
        size.height * 0.4061670,
        size.width * 0.5661650,
        size.height * 0.4098755);
    path_13.cubicTo(
        size.width * 0.5722100,
        size.height * 0.4178335,
        size.width * 0.5797100,
        size.height * 0.4278755,
        size.width * 0.5800850,
        size.height * 0.4381255);
    path_13.cubicTo(
        size.width * 0.5800850,
        size.height * 0.4387505,
        size.width * 0.5794150,
        size.height * 0.4395835,
        size.width * 0.5802900,
        size.height * 0.4388335);
    path_13.cubicTo(
        size.width * 0.5809600,
        size.height * 0.4382085,
        size.width * 0.5801650,
        size.height * 0.4389170,
        size.width * 0.5794150,
        size.height * 0.4388335);
    path_13.cubicTo(
        size.width * 0.5786250,
        size.height * 0.4387505,
        size.width * 0.5780400,
        size.height * 0.4386670,
        size.width * 0.5772900,
        size.height * 0.4384170);
    path_13.cubicTo(
        size.width * 0.5735850,
        size.height * 0.4372505,
        size.width * 0.5706250,
        size.height * 0.4342085,
        size.width * 0.5682500,
        size.height * 0.4312920);
    path_13.cubicTo(
        size.width * 0.5650000,
        size.height * 0.4272920,
        size.width * 0.5622900,
        size.height * 0.4226670,
        size.width * 0.5604150,
        size.height * 0.4178755);
    path_13.lineTo(size.width * 0.5509600, size.height * 0.4212920);
    path_13.cubicTo(
        size.width * 0.5544150,
        size.height * 0.4271670,
        size.width * 0.5591650,
        size.height * 0.4343755,
        size.width * 0.5600000,
        size.height * 0.4412505);
    path_13.cubicTo(
        size.width * 0.5600000,
        size.height * 0.4413335,
        size.width * 0.5600850,
        size.height * 0.4430420,
        size.width * 0.5600000,
        size.height * 0.4430005);
    path_13.cubicTo(
        size.width * 0.5594150,
        size.height * 0.4424585,
        size.width * 0.5650400,
        size.height * 0.4419170,
        size.width * 0.5640000,
        size.height * 0.4403335);
    path_13.cubicTo(
        size.width * 0.5635400,
        size.height * 0.4396255,
        size.width * 0.5620400,
        size.height * 0.4389170,
        size.width * 0.5613750,
        size.height * 0.4382505);
    path_13.cubicTo(
        size.width * 0.5604150,
        size.height * 0.4373755,
        size.width * 0.5595850,
        size.height * 0.4363755,
        size.width * 0.5587100,
        size.height * 0.4353755);
    path_13.cubicTo(
        size.width * 0.5563750,
        size.height * 0.4326255,
        size.width * 0.5542500,
        size.height * 0.4297085,
        size.width * 0.5523350,
        size.height * 0.4266255);
    path_13.cubicTo(
        size.width * 0.5504150,
        size.height * 0.4235420,
        size.width * 0.5417500,
        size.height * 0.4261670,
        size.width * 0.5428750,
        size.height * 0.4300420);
    path_13.cubicTo(
        size.width * 0.5454600,
        size.height * 0.4390005,
        size.width * 0.5484600,
        size.height * 0.4514585,
        size.width * 0.5447100,
        size.height * 0.4603755);
    path_13.cubicTo(
        size.width * 0.5438350,
        size.height * 0.4625005,
        size.width * 0.5429600,
        size.height * 0.4635420,
        size.width * 0.5414600,
        size.height * 0.4634585);
    path_13.cubicTo(
        size.width * 0.5382500,
        size.height * 0.4632505,
        size.width * 0.5354600,
        size.height * 0.4615420,
        size.width * 0.5331250,
        size.height * 0.4594585);
    path_13.cubicTo(
        size.width * 0.5274600,
        size.height * 0.4542920,
        size.width * 0.5240850,
        size.height * 0.4467920,
        size.width * 0.5215000,
        size.height * 0.4397505);
    path_13.cubicTo(
        size.width * 0.5198350,
        size.height * 0.4351255,
        size.width * 0.5183750,
        size.height * 0.4303755,
        size.width * 0.5174600,
        size.height * 0.4255420);
    path_13.lineTo(size.width * 0.5075850, size.height * 0.4282085);
    path_13.cubicTo(
        size.width * 0.5097900,
        size.height * 0.4385420,
        size.width * 0.5115000,
        size.height * 0.4506670,
        size.width * 0.5086250,
        size.height * 0.4610005);
    path_13.cubicTo(
        size.width * 0.5080000,
        size.height * 0.4631255,
        size.width * 0.5067100,
        size.height * 0.4660005,
        size.width * 0.5052500,
        size.height * 0.4668335);
    path_13.cubicTo(
        size.width * 0.5047500,
        size.height * 0.4668335,
        size.width * 0.5060400,
        size.height * 0.4663755,
        size.width * 0.5052500,
        size.height * 0.4668335);
    path_13.cubicTo(
        size.width * 0.5047100,
        size.height * 0.4668335,
        size.width * 0.5042100,
        size.height * 0.4668335,
        size.width * 0.5036650,
        size.height * 0.4667505);
    path_13.cubicTo(
        size.width * 0.5017500,
        size.height * 0.4664585,
        size.width * 0.4999160,
        size.height * 0.4657085,
        size.width * 0.4982910,
        size.height * 0.4646255);
    path_13.cubicTo(
        size.width * 0.4916245,
        size.height * 0.4603755,
        size.width * 0.4882075,
        size.height * 0.4521255,
        size.width * 0.4860410,
        size.height * 0.4448335);
    path_13.cubicTo(
        size.width * 0.4844995,
        size.height * 0.4396255,
        size.width * 0.4833745,
        size.height * 0.4341670,
        size.width * 0.4829995,
        size.height * 0.4287085);
    path_13.lineTo(size.width * 0.4731245, size.height * 0.4313755);
    path_13.cubicTo(
        size.width * 0.4732075,
        size.height * 0.4322085,
        size.width * 0.4731245,
        size.height * 0.4312920,
        size.width * 0.4731245,
        size.height * 0.4316670);
    path_13.cubicTo(
        size.width * 0.4730410,
        size.height * 0.4327085,
        size.width * 0.4731245,
        size.height * 0.4337920,
        size.width * 0.4731245,
        size.height * 0.4348335);
    path_13.cubicTo(
        size.width * 0.4731245,
        size.height * 0.4380835,
        size.width * 0.4728325,
        size.height * 0.4413335,
        size.width * 0.4722910,
        size.height * 0.4445420);
    path_13.cubicTo(
        size.width * 0.4710825,
        size.height * 0.4522505,
        size.width * 0.4684575,
        size.height * 0.4607085,
        size.width * 0.4621660,
        size.height * 0.4658335);
    path_13.cubicTo(
        size.width * 0.4567075,
        size.height * 0.4702920,
        size.width * 0.4465410,
        size.height * 0.4722085,
        size.width * 0.4418325,
        size.height * 0.4658335);
    path_13.cubicTo(
        size.width * 0.4375410,
        size.height * 0.4600005,
        size.width * 0.4384995,
        size.height * 0.4511670,
        size.width * 0.4395410,
        size.height * 0.4445005);
    path_13.cubicTo(
        size.width * 0.4401245,
        size.height * 0.4408335,
        size.width * 0.4409575,
        size.height * 0.4372085,
        size.width * 0.4419995,
        size.height * 0.4336255);
    path_13.cubicTo(
        size.width * 0.4423325,
        size.height * 0.4324170,
        size.width * 0.4427075,
        size.height * 0.4312085,
        size.width * 0.4430825,
        size.height * 0.4300005);
    path_13.cubicTo(
        size.width * 0.4431660,
        size.height * 0.4296670,
        size.width * 0.4434160,
        size.height * 0.4292505,
        size.width * 0.4434575,
        size.height * 0.4288755);
    path_13.cubicTo(
        size.width * 0.4434575,
        size.height * 0.4290835,
        size.width * 0.4431660,
        size.height * 0.4297085,
        size.width * 0.4433325,
        size.height * 0.4292085);
    path_13.lineTo(size.width * 0.4337495, size.height * 0.4301255);
    path_13.cubicTo(
        size.width * 0.4338745,
        size.height * 0.4315835,
        size.width * 0.4339160,
        size.height * 0.4326670,
        size.width * 0.4338325,
        size.height * 0.4347505);
    path_13.cubicTo(
        size.width * 0.4337495,
        size.height * 0.4386670,
        size.width * 0.4333745,
        size.height * 0.4425420,
        size.width * 0.4325410,
        size.height * 0.4463335);
    path_13.cubicTo(
        size.width * 0.4304575,
        size.height * 0.4559585,
        size.width * 0.4252495,
        size.height * 0.4654585,
        size.width * 0.4154160,
        size.height * 0.4688335);
    path_13.cubicTo(
        size.width * 0.4125410,
        size.height * 0.4698335,
        size.width * 0.4099160,
        size.height * 0.4704170,
        size.width * 0.4077495,
        size.height * 0.4685835);
    path_13.cubicTo(
        size.width * 0.4053325,
        size.height * 0.4664585,
        size.width * 0.4046660,
        size.height * 0.4627505,
        size.width * 0.4043325,
        size.height * 0.4597505);
    path_13.cubicTo(
        size.width * 0.4033325,
        size.height * 0.4513335,
        size.width * 0.4052075,
        size.height * 0.4423755,
        size.width * 0.4071660,
        size.height * 0.4341670);
    path_13.cubicTo(
        size.width * 0.4084995,
        size.height * 0.4285005,
        size.width * 0.4100410,
        size.height * 0.4227920,
        size.width * 0.4119575,
        size.height * 0.4172920);
    path_13.lineTo(size.width * 0.4020410, size.height * 0.4182085);
    path_13.cubicTo(
        size.width * 0.4002495,
        size.height * 0.4262505,
        size.width * 0.3943745,
        size.height * 0.4417505,
        size.width * 0.3838745,
        size.height * 0.4395835);
    path_13.cubicTo(
        size.width * 0.3686660,
        size.height * 0.4364585,
        size.width * 0.3824995,
        size.height * 0.4132085,
        size.width * 0.3867495,
        size.height * 0.4062085);
    path_13.cubicTo(
        size.width * 0.3884995,
        size.height * 0.4032920,
        size.width * 0.3904160,
        size.height * 0.4003755,
        size.width * 0.3924160,
        size.height * 0.3975835);
    path_13.cubicTo(
        size.width * 0.3932215,
        size.height * 0.3964170,
        size.width * 0.3939575,
        size.height * 0.3954030,
        size.width * 0.3946245,
        size.height * 0.3945420);
    path_13.cubicTo(
        size.width * 0.3983745,
        size.height * 0.3897085,
        size.width * 0.3889575,
        size.height * 0.3888755,
        size.width * 0.3864995,
        size.height * 0.3920835);
    path_13.lineTo(size.width * 0.3865825, size.height * 0.3920005);
    path_13.lineTo(size.width * 0.3867075, size.height * 0.3919585);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.3602915, size.height * 0.3576245);
    path_14.cubicTo(
        size.width * 0.3598745,
        size.height * 0.3766245,
        size.width * 0.3652080,
        size.height * 0.3922495,
        size.width * 0.3722080,
        size.height * 0.3924995);
    path_14.cubicTo(
        size.width * 0.3792080,
        size.height * 0.3927910,
        size.width * 0.3852080,
        size.height * 0.3775830,
        size.width * 0.3856245,
        size.height * 0.3585410);
    path_14.cubicTo(
        size.width * 0.3860415,
        size.height * 0.3395410,
        size.width * 0.3807080,
        size.height * 0.3239160,
        size.width * 0.3737080,
        size.height * 0.3236660);
    path_14.cubicTo(
        size.width * 0.3667495,
        size.height * 0.3233745,
        size.width * 0.3607080,
        size.height * 0.3385830,
        size.width * 0.3602915,
        size.height * 0.3576245);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.5619600, size.height * 0.3576245);
    path_15.cubicTo(
        size.width * 0.5615400,
        size.height * 0.3766245,
        size.width * 0.5668750,
        size.height * 0.3922495,
        size.width * 0.5738750,
        size.height * 0.3924995);
    path_15.cubicTo(
        size.width * 0.5808750,
        size.height * 0.3927910,
        size.width * 0.5868750,
        size.height * 0.3775830,
        size.width * 0.5872900,
        size.height * 0.3585410);
    path_15.cubicTo(
        size.width * 0.5877100,
        size.height * 0.3395410,
        size.width * 0.5823750,
        size.height * 0.3239160,
        size.width * 0.5753750,
        size.height * 0.3236660);
    path_15.cubicTo(
        size.width * 0.5684150,
        size.height * 0.3233745,
        size.width * 0.5623750,
        size.height * 0.3385830,
        size.width * 0.5619600,
        size.height * 0.3576245);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.3459990, size.height * 0.3445000);
    path_16.cubicTo(
        size.width * 0.3384990,
        size.height * 0.3439585,
        size.width * 0.3354570,
        size.height * 0.3345000,
        size.width * 0.3409155,
        size.height * 0.3293750);
    path_16.cubicTo(
        size.width * 0.3565405,
        size.height * 0.3147500,
        size.width * 0.3929990,
        size.height * 0.2834585,
        size.width * 0.4042905,
        size.height * 0.2983335);
    path_16.cubicTo(
        size.width * 0.4159570,
        size.height * 0.3137500,
        size.width * 0.3698740,
        size.height * 0.3462500,
        size.width * 0.3460405,
        size.height * 0.3445000);
    path_16.lineTo(size.width * 0.3459990, size.height * 0.3445000);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.6083350, size.height * 0.3445000);
    path_17.cubicTo(
        size.width * 0.6158350,
        size.height * 0.3439585,
        size.width * 0.6188750,
        size.height * 0.3345000,
        size.width * 0.6134150,
        size.height * 0.3293750);
    path_17.cubicTo(
        size.width * 0.5977900,
        size.height * 0.3147500,
        size.width * 0.5612900,
        size.height * 0.2835000,
        size.width * 0.5500400,
        size.height * 0.2983750);
    path_17.cubicTo(
        size.width * 0.5383750,
        size.height * 0.3137920,
        size.width * 0.5845000,
        size.height * 0.3462500,
        size.width * 0.6083350,
        size.height * 0.3445000);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.4293755, size.height * 0.3593750);
    path_18.cubicTo(
        size.width * 0.4291255,
        size.height * 0.3923750,
        size.width * 0.4082505,
        size.height * 0.4227915,
        size.width * 0.3769590,
        size.height * 0.4338750);
    path_18.cubicTo(
        size.width * 0.3456670,
        size.height * 0.4449585,
        size.width * 0.3106670,
        size.height * 0.4352500,
        size.width * 0.2895005,
        size.height * 0.4099585);
    path_18.cubicTo(
        size.width * 0.2683340,
        size.height * 0.3846665,
        size.width * 0.2654170,
        size.height * 0.3466665,
        size.width * 0.2827920,
        size.height * 0.3182085);
    path_18.cubicTo(
        size.width * 0.3001670,
        size.height * 0.2897500,
        size.width * 0.3336670,
        size.height * 0.2753335,
        size.width * 0.3659170,
        size.height * 0.2818335);
    path_18.cubicTo(
        size.width * 0.4025840,
        size.height * 0.2892915,
        size.width * 0.4291255,
        size.height * 0.3221250,
        size.width * 0.4293755,
        size.height * 0.3593750);
    path_18.cubicTo(
        size.width * 0.4293755,
        size.height * 0.3631250,
        size.width * 0.4352090,
        size.height * 0.3631250,
        size.width * 0.4351670,
        size.height * 0.3593750);
    path_18.cubicTo(
        size.width * 0.4349170,
        size.height * 0.3240835,
        size.width * 0.4127505,
        size.height * 0.2920000,
        size.width * 0.3795420,
        size.height * 0.2797085);
    path_18.cubicTo(
        size.width * 0.3463340,
        size.height * 0.2674165,
        size.width * 0.3072090,
        size.height * 0.2779585,
        size.width * 0.2846670,
        size.height * 0.3055415);
    path_18.cubicTo(
        size.width * 0.2621670,
        size.height * 0.3331250,
        size.width * 0.2591670,
        size.height * 0.3730000,
        size.width * 0.2777505,
        size.height * 0.4034585);
    path_18.cubicTo(
        size.width * 0.2963340,
        size.height * 0.4339165,
        size.width * 0.3325840,
        size.height * 0.4495000,
        size.width * 0.3674170,
        size.height * 0.4424585);
    path_18.cubicTo(
        size.width * 0.4065840,
        size.height * 0.4345000,
        size.width * 0.4348340,
        size.height * 0.3990415,
        size.width * 0.4351255,
        size.height * 0.3593335);
    path_18.cubicTo(
        size.width * 0.4351255,
        size.height * 0.3555835,
        size.width * 0.4293340,
        size.height * 0.3555835,
        size.width * 0.4293340,
        size.height * 0.3593335);
    path_18.lineTo(size.width * 0.4293755, size.height * 0.3593750);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.6781650, size.height * 0.3593750);
    path_19.cubicTo(
        size.width * 0.6779150,
        size.height * 0.3923750,
        size.width * 0.6570400,
        size.height * 0.4227915,
        size.width * 0.6257500,
        size.height * 0.4338750);
    path_19.cubicTo(
        size.width * 0.5944600,
        size.height * 0.4449585,
        size.width * 0.5594600,
        size.height * 0.4352500,
        size.width * 0.5382900,
        size.height * 0.4099585);
    path_19.cubicTo(
        size.width * 0.5171250,
        size.height * 0.3846665,
        size.width * 0.5142100,
        size.height * 0.3466665,
        size.width * 0.5315850,
        size.height * 0.3182085);
    path_19.cubicTo(
        size.width * 0.5489600,
        size.height * 0.2897500,
        size.width * 0.5824600,
        size.height * 0.2753335,
        size.width * 0.6147100,
        size.height * 0.2818335);
    path_19.cubicTo(
        size.width * 0.6513750,
        size.height * 0.2892915,
        size.width * 0.6779150,
        size.height * 0.3221250,
        size.width * 0.6781650,
        size.height * 0.3593750);
    path_19.cubicTo(
        size.width * 0.6781650,
        size.height * 0.3631250,
        size.width * 0.6840000,
        size.height * 0.3631250,
        size.width * 0.6839600,
        size.height * 0.3593750);
    path_19.cubicTo(
        size.width * 0.6837100,
        size.height * 0.3240835,
        size.width * 0.6615400,
        size.height * 0.2920000,
        size.width * 0.6283350,
        size.height * 0.2797085);
    path_19.cubicTo(
        size.width * 0.5951250,
        size.height * 0.2674165,
        size.width * 0.5560000,
        size.height * 0.2779585,
        size.width * 0.5334600,
        size.height * 0.3055415);
    path_19.cubicTo(
        size.width * 0.5109600,
        size.height * 0.3331250,
        size.width * 0.5079600,
        size.height * 0.3730000,
        size.width * 0.5265400,
        size.height * 0.4034585);
    path_19.cubicTo(
        size.width * 0.5451250,
        size.height * 0.4339165,
        size.width * 0.5813750,
        size.height * 0.4495000,
        size.width * 0.6162100,
        size.height * 0.4424585);
    path_19.cubicTo(
        size.width * 0.6553750,
        size.height * 0.4345000,
        size.width * 0.6836250,
        size.height * 0.3990415,
        size.width * 0.6839150,
        size.height * 0.3593335);
    path_19.cubicTo(
        size.width * 0.6839150,
        size.height * 0.3555835,
        size.width * 0.6781250,
        size.height * 0.3555835,
        size.width * 0.6781250,
        size.height * 0.3593335);
    path_19.lineTo(size.width * 0.6781650, size.height * 0.3593750);
    path_19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.3195410, size.height * 0.3971250);
    path_20.lineTo(size.width * 0.2432910, size.height * 0.4267500);
    path_20.lineTo(size.width * 0.3117075, size.height * 0.5820400);
    path_20.lineTo(size.width * 0.4157075, size.height * 0.5427500);
    path_20.lineTo(size.width * 0.3502495, size.height * 0.4040835);
    path_20.cubicTo(
        size.width * 0.3399575,
        size.height * 0.4017920,
        size.width * 0.3297495,
        size.height * 0.3995000,
        size.width * 0.3194575,
        size.height * 0.3971250);
    path_20.lineTo(size.width * 0.3195410, size.height * 0.3971250);
    path_20.close();

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = const Color(0xffE0E0E0).withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.1959590, size.height * 0.4267505);
    path_21.lineTo(size.width * 0.1959590, size.height * 0.4901255);
    path_21.cubicTo(
        size.width * 0.1959590,
        size.height * 0.4901255,
        size.width * 0.1541260,
        size.height * 0.5110400,
        size.width * 0.1572925,
        size.height * 0.5611250);
    path_21.cubicTo(
        size.width * 0.1604590,
        size.height * 0.6112100,
        size.width * 0.2485425,
        size.height * 0.5864600,
        size.width * 0.2688340,
        size.height * 0.5034150);
    path_21.cubicTo(
        size.width * 0.2688340,
        size.height * 0.5034150,
        size.width * 0.2614175,
        size.height * 0.4986255,
        size.width * 0.2674590,
        size.height * 0.4815005);
    path_21.lineTo(size.width * 0.2732090, size.height * 0.4945420);
    path_21.cubicTo(
        size.width * 0.2732090,
        size.height * 0.4945420,
        size.width * 0.2961260,
        size.height * 0.4533340,
        size.width * 0.2999590,
        size.height * 0.4558755);
    path_21.cubicTo(
        size.width * 0.3037510,
        size.height * 0.4584170,
        size.width * 0.2923340,
        size.height * 0.4878755,
        size.width * 0.2923340,
        size.height * 0.4878755);
    path_21.cubicTo(
        size.width * 0.2923340,
        size.height * 0.4878755,
        size.width * 0.3097510,
        size.height * 0.4675840,
        size.width * 0.3148340,
        size.height * 0.4748755);
    path_21.cubicTo(
        size.width * 0.3199175,
        size.height * 0.4821670,
        size.width * 0.3015425,
        size.height * 0.4955005,
        size.width * 0.3015425,
        size.height * 0.4955005);
    path_21.cubicTo(
        size.width * 0.3015425,
        size.height * 0.4955005,
        size.width * 0.3240425,
        size.height * 0.4875840,
        size.width * 0.3256260,
        size.height * 0.4961670);
    path_21.cubicTo(
        size.width * 0.3272090,
        size.height * 0.5047500,
        size.width * 0.2844175,
        size.height * 0.5158350,
        size.width * 0.2844175,
        size.height * 0.5158350);
    path_21.cubicTo(
        size.width * 0.2844175,
        size.height * 0.5158350,
        size.width * 0.2660425,
        size.height * 0.6067900,
        size.width * 0.1633760,
        size.height * 0.6194150);
    path_21.cubicTo(
        size.width * 0.06070900,
        size.height * 0.6320850,
        size.width * 0.1107925,
        size.height * 0.4600420,
        size.width * 0.1960425,
        size.height * 0.4267505);
    path_21.lineTo(size.width * 0.1959590, size.height * 0.4267505);
    path_21.close();

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.3271240, size.height * 0.4131250);
    path_22.lineTo(size.width * 0.3503740, size.height * 0.4041250);
    path_22.cubicTo(
        size.width * 0.3401240,
        size.height * 0.4017500,
        size.width * 0.3298740,
        size.height * 0.3994165,
        size.width * 0.3195825,
        size.height * 0.3971665);
    path_22.lineTo(size.width * 0.3271240, size.height * 0.4131670);
    path_22.lineTo(size.width * 0.3271240, size.height * 0.4131250);
    path_22.close();

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xffD1D1D1).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.4337510, size.height * 0.3619165);
    path_23.cubicTo(
        size.width * 0.4409175,
        size.height * 0.3565835,
        size.width * 0.4497090,
        size.height * 0.3529585,
        size.width * 0.4582925,
        size.height * 0.3507085);
    path_23.cubicTo(
        size.width * 0.4785425,
        size.height * 0.3454165,
        size.width * 0.4987090,
        size.height * 0.3498750,
        size.width * 0.5156700,
        size.height * 0.3619165);
    path_23.cubicTo(
        size.width * 0.5187100,
        size.height * 0.3640415,
        size.width * 0.5216250,
        size.height * 0.3590415,
        size.width * 0.5185850,
        size.height * 0.3569165);
    path_23.cubicTo(
        size.width * 0.5009600,
        size.height * 0.3444165,
        size.width * 0.4797925,
        size.height * 0.3397500,
        size.width * 0.4587090,
        size.height * 0.3446665);
    path_23.cubicTo(
        size.width * 0.4490010,
        size.height * 0.3469165,
        size.width * 0.4388340,
        size.height * 0.3509165,
        size.width * 0.4307925,
        size.height * 0.3569165);
    path_23.cubicTo(
        size.width * 0.4278340,
        size.height * 0.3591250,
        size.width * 0.4307090,
        size.height * 0.3641665,
        size.width * 0.4337090,
        size.height * 0.3619165);
    path_23.lineTo(size.width * 0.4337510, size.height * 0.3619165);
    path_23.close();

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_23, paint23Fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.4669580, size.height * 0.04637540);
    path_24.cubicTo(
        size.width * 0.4669580,
        size.height * 0.04637540,
        size.width * 0.4913330,
        size.height * 0.03679205,
        size.width * 0.4902495,
        size.height * 0.09233350);
    path_24.cubicTo(
        size.width * 0.4902495,
        size.height * 0.09233350,
        size.width * 0.5025850,
        size.height * 0.04979205,
        size.width * 0.5249150,
        size.height * 0.05429200);
    path_24.cubicTo(
        size.width * 0.5472100,
        size.height * 0.05883350,
        size.width * 0.5088750,
        size.height * 0.1050005,
        size.width * 0.5088750,
        size.height * 0.1050005);
    path_24.cubicTo(
        size.width * 0.5088750,
        size.height * 0.1050005,
        size.width * 0.5495400,
        size.height * 0.06916700,
        size.width * 0.5654600,
        size.height * 0.08808350);
    path_24.cubicTo(
        size.width * 0.5814150,
        size.height * 0.1070005,
        size.width * 0.5204150,
        size.height * 0.1227505,
        size.width * 0.5204150,
        size.height * 0.1227505);
    path_24.cubicTo(
        size.width * 0.5204150,
        size.height * 0.1227505,
        size.width * 0.6710850,
        size.height * 0.08137550,
        size.width * 0.7403750,
        size.height * 0.2005005);
    path_24.cubicTo(
        size.width * 0.7403750,
        size.height * 0.2005005,
        size.width * 0.6602900,
        size.height * 0.09783350,
        size.width * 0.5126650,
        size.height * 0.1333335);
    path_24.cubicTo(
        size.width * 0.5126650,
        size.height * 0.1333335,
        size.width * 0.4989165,
        size.height * 0.1257085,
        size.width * 0.5185850,
        size.height * 0.1185420);
    path_24.cubicTo(
        size.width * 0.5382500,
        size.height * 0.1113755,
        size.width * 0.5620850,
        size.height * 0.09991700,
        size.width * 0.5587100,
        size.height * 0.09170850);
    path_24.cubicTo(
        size.width * 0.5553350,
        size.height * 0.08345850,
        size.width * 0.5014600,
        size.height * 0.1147505,
        size.width * 0.5014600,
        size.height * 0.1147505);
    path_24.cubicTo(
        size.width * 0.5014600,
        size.height * 0.1147505,
        size.width * 0.5262100,
        size.height * 0.07020850,
        size.width * 0.5160400,
        size.height * 0.06487550);
    path_24.cubicTo(
        size.width * 0.5059150,
        size.height * 0.05958350,
        size.width * 0.4870830,
        size.height * 0.1090420,
        size.width * 0.4870830,
        size.height * 0.1090420);
    path_24.cubicTo(
        size.width * 0.4870830,
        size.height * 0.1090420,
        size.width * 0.4914165,
        size.height * 0.05283350,
        size.width * 0.4669580,
        size.height * 0.04637540);
    path_24.close();

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_24, paint24Fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.2614990, size.height * 0.1706245);
    path_25.cubicTo(
        size.width * 0.2614990,
        size.height * 0.1706245,
        size.width * 0.3214575,
        size.height * 0.07737450,
        size.width * 0.4623325,
        size.height * 0.1227910);
    path_25.cubicTo(
        size.width * 0.4623325,
        size.height * 0.1227910,
        size.width * 0.3411240,
        size.height * 0.1026660,
        size.width * 0.2614990,
        size.height * 0.1706245);
    path_25.close();

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_25, paint25Fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.2432920, size.height * 0.2178335);
    path_26.cubicTo(
        size.width * 0.2432920,
        size.height * 0.2178335,
        size.width * 0.1826670,
        size.height * 0.2981250,
        size.width * 0.1805420,
        size.height * 0.3773750);
    path_26.cubicTo(
        size.width * 0.1805420,
        size.height * 0.3773750,
        size.width * 0.1965835,
        size.height * 0.3001665,
        size.width * 0.2432920,
        size.height * 0.2178335);
    path_26.close();

    Paint paint26Fill = Paint()..style = PaintingStyle.fill;
    paint26Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_26, paint26Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
