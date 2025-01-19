import 'package:flutter/rendering.dart';

//Add this CustomPaint widget to the Widget Tree
/*
CustomPaint(
size: Size(200.w, (200.w*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
),
*/

//Copy this CustomPainter code to the Bottom of the File
class FrizoSearchingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1760415, size.height * 0.4719585);
    path_0.cubicTo(
        size.width * 0.1760415,
        size.height * 0.4719585,
        size.width * 0.1173335,
        size.height * 0.4651665,
        size.width * 0.1237085,
        size.height * 0.5073350);
    path_0.cubicTo(
        size.width * 0.1300835,
        size.height * 0.5495000,
        size.width * 0.1851665,
        size.height * 0.5698350,
        size.width * 0.1851665,
        size.height * 0.5698350);
    path_0.lineTo(size.width * 0.1760415, size.height * 0.4719585);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2160415, size.height * 0.2299165);
    path_1.cubicTo(
        size.width * 0.2160415,
        size.height * 0.2299165,
        size.width * 0.1563750,
        size.height * 0.3089165,
        size.width * 0.1542500,
        size.height * 0.3869165);
    path_1.cubicTo(
        size.width * 0.1542500,
        size.height * 0.3869165,
        size.width * 0.1700415,
        size.height * 0.3109580,
        size.width * 0.2160415,
        size.height * 0.2299165);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4034585, size.height * 0.3716670);
    path_2.cubicTo(
        size.width * 0.4105415,
        size.height * 0.3664585,
        size.width * 0.4191250,
        size.height * 0.3628750,
        size.width * 0.4275835,
        size.height * 0.3606250);
    path_2.cubicTo(
        size.width * 0.4475000,
        size.height * 0.3554170,
        size.width * 0.4673335,
        size.height * 0.3598335,
        size.width * 0.4840415,
        size.height * 0.3716670);
    path_2.cubicTo(
        size.width * 0.4870415,
        size.height * 0.3737500,
        size.width * 0.4899165,
        size.height * 0.3688335,
        size.width * 0.4869165,
        size.height * 0.3667500);
    path_2.cubicTo(
        size.width * 0.4695835,
        size.height * 0.3544585,
        size.width * 0.4487500,
        size.height * 0.3498750,
        size.width * 0.4280000,
        size.height * 0.3547085);
    path_2.cubicTo(
        size.width * 0.4184585,
        size.height * 0.3569170,
        size.width * 0.4084585,
        size.height * 0.3608750,
        size.width * 0.4005415,
        size.height * 0.3667500);
    path_2.cubicTo(
        size.width * 0.3976665,
        size.height * 0.3689585,
        size.width * 0.4004585,
        size.height * 0.3738750,
        size.width * 0.4034165,
        size.height * 0.3716670);
    path_2.lineTo(size.width * 0.4034585, size.height * 0.3716670);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4361665, size.height * 0.06116650);
    path_3.cubicTo(
        size.width * 0.4361665,
        size.height * 0.06116650,
        size.width * 0.4601665,
        size.height * 0.05174950,
        size.width * 0.4590835,
        size.height * 0.1064165);
    path_3.cubicTo(
        size.width * 0.4590835,
        size.height * 0.1064165,
        size.width * 0.4712085,
        size.height * 0.06454150,
        size.width * 0.4931665,
        size.height * 0.06899950);
    path_3.cubicTo(
        size.width * 0.5151250,
        size.height * 0.07349950,
        size.width * 0.4773750,
        size.height * 0.1189165,
        size.width * 0.4773750,
        size.height * 0.1189165);
    path_3.cubicTo(
        size.width * 0.4773750,
        size.height * 0.1189165,
        size.width * 0.5173750,
        size.height * 0.08366650,
        size.width * 0.5330850,
        size.height * 0.1022915);
    path_3.cubicTo(
        size.width * 0.5487500,
        size.height * 0.1209165,
        size.width * 0.4887915,
        size.height * 0.1363745,
        size.width * 0.4887915,
        size.height * 0.1363745);
    path_3.cubicTo(
        size.width * 0.4887915,
        size.height * 0.1363745,
        size.width * 0.6370850,
        size.height * 0.09566650,
        size.width * 0.7052500,
        size.height * 0.2128745);
    path_3.cubicTo(
        size.width * 0.7052500,
        size.height * 0.2128745,
        size.width * 0.6264600,
        size.height * 0.1118330,
        size.width * 0.4811665,
        size.height * 0.1467915);
    path_3.cubicTo(
        size.width * 0.4811665,
        size.height * 0.1467915,
        size.width * 0.4676250,
        size.height * 0.1392915,
        size.width * 0.4870000,
        size.height * 0.1322495);
    path_3.cubicTo(
        size.width * 0.5063750,
        size.height * 0.1251665,
        size.width * 0.5297900,
        size.height * 0.1139165,
        size.width * 0.5264600,
        size.height * 0.1058745);
    path_3.cubicTo(
        size.width * 0.5231250,
        size.height * 0.09774950,
        size.width * 0.4701250,
        size.height * 0.1285830,
        size.width * 0.4701250,
        size.height * 0.1285830);
    path_3.cubicTo(
        size.width * 0.4701250,
        size.height * 0.1285830,
        size.width * 0.4944585,
        size.height * 0.08474950,
        size.width * 0.4844585,
        size.height * 0.07949950);
    path_3.cubicTo(
        size.width * 0.4745000,
        size.height * 0.07429150,
        size.width * 0.4559165,
        size.height * 0.1229580,
        size.width * 0.4559165,
        size.height * 0.1229580);
    path_3.cubicTo(
        size.width * 0.4559165,
        size.height * 0.1229580,
        size.width * 0.4602085,
        size.height * 0.06766650,
        size.width * 0.4361250,
        size.height * 0.06129150);
    path_3.lineTo(size.width * 0.4361250, size.height * 0.06120800);
    path_3.lineTo(size.width * 0.4361665, size.height * 0.06116650);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.2339585, size.height * 0.1834165);
    path_4.cubicTo(
        size.width * 0.2339585,
        size.height * 0.1834165,
        size.width * 0.2929585,
        size.height * 0.09162500,
        size.width * 0.4316250,
        size.height * 0.1363330);
    path_4.cubicTo(
        size.width * 0.4316250,
        size.height * 0.1363330,
        size.width * 0.3123750,
        size.height * 0.1165415,
        size.width * 0.2339585,
        size.height * 0.1834165);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.7144150, size.height * 0.5536250);
    path_5.cubicTo(
        size.width * 0.7144150,
        size.height * 0.5536250,
        size.width * 0.8210400,
        size.height * 0.5659600,
        size.width * 0.8272900,
        size.height * 0.4873750);
    path_5.cubicTo(
        size.width * 0.8328350,
        size.height * 0.4182500,
        size.width * 0.8326250,
        size.height * 0.4145830,
        size.width * 0.8362100,
        size.height * 0.4023750);
    path_5.cubicTo(
        size.width * 0.8392100,
        size.height * 0.3920830,
        size.width * 0.8433350,
        size.height * 0.3820830,
        size.width * 0.8468750,
        size.height * 0.3749165);
    path_5.lineTo(size.width * 0.8553750, size.height * 0.3612915);
    path_5.cubicTo(
        size.width * 0.8553750,
        size.height * 0.3612915,
        size.width * 0.8848750,
        size.height * 0.3620415,
        size.width * 0.8942900,
        size.height * 0.3543330);
    path_5.cubicTo(
        size.width * 0.9067900,
        size.height * 0.3441665,
        size.width * 0.8587100,
        size.height * 0.3504580,
        size.width * 0.8587100,
        size.height * 0.3504580);
    path_5.cubicTo(
        size.width * 0.8587100,
        size.height * 0.3504580,
        size.width * 0.8908350,
        size.height * 0.3417500,
        size.width * 0.8862900,
        size.height * 0.3337500);
    path_5.cubicTo(
        size.width * 0.8817500,
        size.height * 0.3257500,
        size.width * 0.8447100,
        size.height * 0.3424165,
        size.width * 0.8447100,
        size.height * 0.3424165);
    path_5.cubicTo(
        size.width * 0.8447100,
        size.height * 0.3424165,
        size.width * 0.8656650,
        size.height * 0.3284165,
        size.width * 0.8621650,
        size.height * 0.3257915);
    path_5.cubicTo(
        size.width * 0.8565850,
        size.height * 0.3215000,
        size.width * 0.8227500,
        size.height * 0.3421250,
        size.width * 0.8227500,
        size.height * 0.3421250);
    path_5.cubicTo(
        size.width * 0.8227500,
        size.height * 0.3421250,
        size.width * 0.8056250,
        size.height * 0.3220000,
        size.width * 0.8045850,
        size.height * 0.3374165);
    path_5.cubicTo(
        size.width * 0.8035400,
        size.height * 0.3527500,
        size.width * 0.8141250,
        size.height * 0.3578330,
        size.width * 0.8141250,
        size.height * 0.3578330);
    path_5.cubicTo(
        size.width * 0.8147900,
        size.height * 0.3586665,
        size.width * 0.7980850,
        size.height * 0.3662500,
        size.width * 0.7881250,
        size.height * 0.4498330);
    path_5.cubicTo(
        size.width * 0.7785850,
        size.height * 0.5301650,
        size.width * 0.7142900,
        size.height * 0.4948745,
        size.width * 0.7142900,
        size.height * 0.4948745);
    path_5.lineTo(size.width * 0.7142900, size.height * 0.5537500);
    path_5.lineTo(size.width * 0.7143350, size.height * 0.5537500);
    path_5.lineTo(size.width * 0.7144150, size.height * 0.5536250);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.3717085, size.height * 0.6893750);
    path_6.lineTo(size.width * 0.4232085, size.height * 0.9230850);
    path_6.cubicTo(
        size.width * 0.4232085,
        size.height * 0.9230850,
        size.width * 0.3375415,
        size.height * 0.9105850,
        size.width * 0.3392500,
        size.height * 0.9305850);
    path_6.cubicTo(
        size.width * 0.3409585,
        size.height * 0.9505400,
        size.width * 0.4507085,
        size.height * 0.9305850,
        size.width * 0.4507085,
        size.height * 0.9305850);
    path_6.lineTo(size.width * 0.4507085, size.height * 0.6836250);
    path_6.lineTo(size.width * 0.3717085, size.height * 0.6894600);
    path_6.lineTo(size.width * 0.3717085, size.height * 0.6893750);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.5679600, size.height * 0.6893750);
    path_7.lineTo(size.width * 0.5164600, size.height * 0.9230850);
    path_7.cubicTo(
        size.width * 0.5164600,
        size.height * 0.9230850,
        size.width * 0.6021250,
        size.height * 0.9105850,
        size.width * 0.6004150,
        size.height * 0.9305850);
    path_7.cubicTo(
        size.width * 0.5987100,
        size.height * 0.9505400,
        size.width * 0.4890000,
        size.height * 0.9305850,
        size.width * 0.4890000,
        size.height * 0.9305850);
    path_7.lineTo(size.width * 0.4890000, size.height * 0.6836250);
    path_7.lineTo(size.width * 0.5680000, size.height * 0.6894600);
    path_7.lineTo(size.width * 0.5680000, size.height * 0.6893750);
    path_7.lineTo(size.width * 0.5679600, size.height * 0.6893750);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.3077500, size.height * 0.6812100);
    path_8.cubicTo(
        size.width * 0.3077500,
        size.height * 0.6812100,
        size.width * 0.3072085,
        size.height * 0.6852100,
        size.width * 0.3067500,
        size.height * 0.6916250);
    path_8.cubicTo(
        size.width * 0.3077085,
        size.height * 0.6855850,
        size.width * 0.3077500,
        size.height * 0.6812100,
        size.width * 0.3077500,
        size.height * 0.6812100);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.2385835, size.height * 0.2105830);
    path_9.cubicTo(
        size.width * 0.2403750,
        size.height * 0.2097915,
        size.width * 0.2415835,
        size.height * 0.2091250,
        size.width * 0.2415835,
        size.height * 0.2091250);
    path_9.cubicTo(
        size.width * 0.2405835,
        size.height * 0.2095830,
        size.width * 0.2395835,
        size.height * 0.2100415,
        size.width * 0.2385835,
        size.height * 0.2105830);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4067085, size.height * 0.7035000);
    path_10.cubicTo(
        size.width * 0.4072915,
        size.height * 0.6977900,
        size.width * 0.4075000,
        size.height * 0.6942900,
        size.width * 0.4075000,
        size.height * 0.6942900);
    path_10.cubicTo(
        size.width * 0.4075000,
        size.height * 0.6942900,
        size.width * 0.4067500,
        size.height * 0.6980400,
        size.width * 0.4067085,
        size.height * 0.7035000);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.6927500, size.height * 0.2344585);
    path_11.cubicTo(
        size.width * 0.7135400,
        size.height * 0.2336670,
        size.width * 0.7052100,
        size.height * 0.2128755,
        size.width * 0.7052100,
        size.height * 0.2128755);
    path_11.cubicTo(
        size.width * 0.6495000,
        size.height * 0.1039585,
        size.width * 0.4887500,
        size.height * 0.1363755,
        size.width * 0.4887500,
        size.height * 0.1363755);
    path_11.cubicTo(
        size.width * 0.4887500,
        size.height * 0.1363755,
        size.width * 0.5522100,
        size.height * 0.1189170,
        size.width * 0.5330400,
        size.height * 0.1022920);
    path_11.cubicTo(
        size.width * 0.5139150,
        size.height * 0.08566700,
        size.width * 0.4773335,
        size.height * 0.1189170,
        size.width * 0.4773335,
        size.height * 0.1189170);
    path_11.cubicTo(
        size.width * 0.4773335,
        size.height * 0.1189170,
        size.width * 0.5156250,
        size.height * 0.07233350,
        size.width * 0.4931250,
        size.height * 0.06900050);
    path_11.cubicTo(
        size.width * 0.4706250,
        size.height * 0.06566700,
        size.width * 0.4590415,
        size.height * 0.1064170,
        size.width * 0.4590415,
        size.height * 0.1064170);
    path_11.cubicTo(
        size.width * 0.4590415,
        size.height * 0.1064170,
        size.width * 0.4615415,
        size.height * 0.06070850,
        size.width * 0.4391250,
        size.height * 0.06070850);
    path_11.cubicTo(
        size.width * 0.4167085,
        size.height * 0.06070850,
        size.width * 0.4316250,
        size.height * 0.1364170,
        size.width * 0.4316250,
        size.height * 0.1364170);
    path_11.cubicTo(
        size.width * 0.2929585,
        size.height * 0.09420850,
        size.width * 0.2260415,
        size.height * 0.1860835,
        size.width * 0.2216665,
        size.height * 0.2042085);
    path_11.cubicTo(
        size.width * 0.2182915,
        size.height * 0.2182920,
        size.width * 0.2322500,
        size.height * 0.2134170,
        size.width * 0.2386250,
        size.height * 0.2106255);
    path_11.cubicTo(
        size.width * 0.2396250,
        size.height * 0.2101255,
        size.width * 0.2406250,
        size.height * 0.2096255,
        size.width * 0.2416250,
        size.height * 0.2091670);
    path_11.cubicTo(
        size.width * 0.2416250,
        size.height * 0.2091670,
        size.width * 0.2404165,
        size.height * 0.2098335,
        size.width * 0.2386250,
        size.height * 0.2106255);
    path_11.cubicTo(
        size.width * 0.2338335,
        size.height * 0.2130835,
        size.width * 0.2291665,
        size.height * 0.2165420,
        size.width * 0.2245835,
        size.height * 0.2208755);
    path_11.cubicTo(
        size.width * 0.2473335,
        size.height * 0.2170835,
        size.width * 0.2704585,
        size.height * 0.2052085,
        size.width * 0.2915000,
        size.height * 0.1979585);
    path_11.cubicTo(
        size.width * 0.2915000,
        size.height * 0.2004585,
        size.width * 0.2927500,
        size.height * 0.2029170,
        size.width * 0.2915000,
        size.height * 0.2041670);
    path_11.cubicTo(
        size.width * 0.2777500,
        size.height * 0.2228755,
        size.width * 0.2490835,
        size.height * 0.2390420,
        size.width * 0.2566250,
        size.height * 0.2590835);
    path_11.cubicTo(
        size.width * 0.2641250,
        size.height * 0.2802920,
        size.width * 0.2990415,
        size.height * 0.2677920,
        size.width * 0.3190000,
        size.height * 0.2578335);
    path_11.cubicTo(
        size.width * 0.3439585,
        size.height * 0.2440835,
        size.width * 0.3676250,
        size.height * 0.2279170,
        size.width * 0.3938335,
        size.height * 0.2179170);
    path_11.cubicTo(
        size.width * 0.3925835,
        size.height * 0.2403755,
        size.width * 0.3826250,
        size.height * 0.2603335,
        size.width * 0.3851250,
        size.height * 0.2827920);
    path_11.cubicTo(
        size.width * 0.4275415,
        size.height * 0.2927505,
        size.width * 0.4562085,
        size.height * 0.2515835,
        size.width * 0.4725000,
        size.height * 0.2191670);
    path_11.cubicTo(
        size.width * 0.4937085,
        size.height * 0.2303755,
        size.width * 0.4912085,
        size.height * 0.2615835,
        size.width * 0.5136650,
        size.height * 0.2690835);
    path_11.cubicTo(
        size.width * 0.5423750,
        size.height * 0.2777920,
        size.width * 0.5572500,
        size.height * 0.2491255,
        size.width * 0.5535850,
        size.height * 0.2228755);
    path_11.cubicTo(
        size.width * 0.5535850,
        size.height * 0.2203755,
        size.width * 0.5573350,
        size.height * 0.2216255,
        size.width * 0.5585400,
        size.height * 0.2216255);
    path_11.cubicTo(
        size.width * 0.5835000,
        size.height * 0.2377920,
        size.width * 0.6035000,
        size.height * 0.2678335,
        size.width * 0.6333750,
        size.height * 0.2552920);
    path_11.cubicTo(
        size.width * 0.6508350,
        size.height * 0.2477920,
        size.width * 0.6395850,
        size.height * 0.2216255,
        size.width * 0.6420850,
        size.height * 0.2041670);
    path_11.cubicTo(
        size.width * 0.6482900,
        size.height * 0.2054170,
        size.width * 0.6520400,
        size.height * 0.2103755,
        size.width * 0.6545400,
        size.height * 0.2141255);
    path_11.cubicTo(
        size.width * 0.6700400,
        size.height * 0.2368335,
        size.width * 0.6901250,
        size.height * 0.2569170,
        size.width * 0.7144150,
        size.height * 0.2627505);
    path_11.cubicTo(
        size.width * 0.7032100,
        size.height * 0.2395005,
        size.width * 0.6928750,
        size.height * 0.2344585,
        size.width * 0.6928750,
        size.height * 0.2344585);
    path_11.lineTo(size.width * 0.6928750, size.height * 0.2343755);
    path_11.lineTo(size.width * 0.6927900, size.height * 0.2342920);
    path_11.lineTo(size.width * 0.6928750, size.height * 0.2344585);
    path_11.lineTo(size.width * 0.6927500, size.height * 0.2344585);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.7214150, size.height * 0.5500000);
    path_12.cubicTo(
        size.width * 0.7372100,
        size.height * 0.5517100,
        size.width * 0.7380400,
        size.height * 0.5296250,
        size.width * 0.7380400,
        size.height * 0.5296250);
    path_12.cubicTo(
        size.width * 0.7492500,
        size.height * 0.3717495,
        size.width * 0.7308750,
        size.height * 0.2971665,
        size.width * 0.7142900,
        size.height * 0.2626665);
    path_12.cubicTo(
        size.width * 0.6900000,
        size.height * 0.2568330,
        size.width * 0.6699600,
        size.height * 0.2367495,
        size.width * 0.6544150,
        size.height * 0.2140415);
    path_12.cubicTo(
        size.width * 0.6519150,
        size.height * 0.2102915,
        size.width * 0.6482100,
        size.height * 0.2053330,
        size.width * 0.6419600,
        size.height * 0.2040830);
    path_12.cubicTo(
        size.width * 0.6394600,
        size.height * 0.2215415,
        size.width * 0.6506650,
        size.height * 0.2476665,
        size.width * 0.6332500,
        size.height * 0.2552080);
    path_12.cubicTo(
        size.width * 0.6033350,
        size.height * 0.2676665,
        size.width * 0.5833350,
        size.height * 0.2377495,
        size.width * 0.5584150,
        size.height * 0.2215415);
    path_12.cubicTo(
        size.width * 0.5571650,
        size.height * 0.2215415,
        size.width * 0.5534600,
        size.height * 0.2202915,
        size.width * 0.5534600,
        size.height * 0.2227915);
    path_12.cubicTo(
        size.width * 0.5572100,
        size.height * 0.2489580,
        size.width * 0.5422100,
        size.height * 0.2777080,
        size.width * 0.5135400,
        size.height * 0.2689995);
    path_12.cubicTo(
        size.width * 0.4910835,
        size.height * 0.2614995,
        size.width * 0.4936250,
        size.height * 0.2303330,
        size.width * 0.4723750,
        size.height * 0.2190830);
    path_12.cubicTo(
        size.width * 0.4562085,
        size.height * 0.2515415,
        size.width * 0.4274165,
        size.height * 0.2927080,
        size.width * 0.3850000,
        size.height * 0.2827080);
    path_12.cubicTo(
        size.width * 0.3825000,
        size.height * 0.2602495,
        size.width * 0.3925000,
        size.height * 0.2402915,
        size.width * 0.3937085,
        size.height * 0.2178330);
    path_12.cubicTo(
        size.width * 0.3675415,
        size.height * 0.2277915,
        size.width * 0.3437915,
        size.height * 0.2440000,
        size.width * 0.3188750,
        size.height * 0.2577500);
    path_12.cubicTo(
        size.width * 0.2989165,
        size.height * 0.2677080,
        size.width * 0.2639585,
        size.height * 0.2802080,
        size.width * 0.2565000,
        size.height * 0.2590000);
    path_12.cubicTo(
        size.width * 0.2490000,
        size.height * 0.2390415,
        size.width * 0.2777085,
        size.height * 0.2228330,
        size.width * 0.2913750,
        size.height * 0.2040830);
    path_12.cubicTo(
        size.width * 0.2926250,
        size.height * 0.2028330,
        size.width * 0.2913750,
        size.height * 0.2003330,
        size.width * 0.2913750,
        size.height * 0.1978750);
    path_12.cubicTo(
        size.width * 0.2703335,
        size.height * 0.2050830,
        size.width * 0.2472915,
        size.height * 0.2170000,
        size.width * 0.2244585,
        size.height * 0.2207915);
    path_12.cubicTo(
        size.width * 0.1830000,
        size.height * 0.2595000,
        size.width * 0.1508335,
        size.height * 0.3637495,
        size.width * 0.1541665,
        size.height * 0.3868330);
    path_12.cubicTo(
        size.width * 0.1579165,
        size.height * 0.4129995,
        size.width * 0.1716250,
        size.height * 0.4098750,
        size.width * 0.1716250,
        size.height * 0.4098750);
    path_12.cubicTo(
        size.width * 0.1647085,
        size.height * 0.4610000,
        size.width * 0.1666665,
        size.height * 0.5442100,
        size.width * 0.1759165,
        size.height * 0.6017100);
    path_12.cubicTo(
        size.width * 0.1892915,
        size.height * 0.5925850,
        size.width * 0.2027085,
        size.height * 0.5827500,
        size.width * 0.2190415,
        size.height * 0.5807100);
    path_12.cubicTo(
        size.width * 0.2190415,
        size.height * 0.6006250,
        size.width * 0.2128335,
        size.height * 0.6293350,
        size.width * 0.2290000,
        size.height * 0.6380400);
    path_12.cubicTo(
        size.width * 0.2489585,
        size.height * 0.6480000,
        size.width * 0.2638750,
        size.height * 0.6168350,
        size.width * 0.2839165,
        size.height * 0.6081250);
    path_12.cubicTo(
        size.width * 0.2864165,
        size.height * 0.6068750,
        size.width * 0.2901250,
        size.height * 0.6081250,
        size.width * 0.2901250,
        size.height * 0.6093750);
    path_12.cubicTo(
        size.width * 0.2938750,
        size.height * 0.6280850,
        size.width * 0.2888750,
        size.height * 0.6517900,
        size.width * 0.3013335,
        size.height * 0.6617900);
    path_12.cubicTo(
        size.width * 0.3150835,
        size.height * 0.6717500,
        size.width * 0.3262915,
        size.height * 0.6443350,
        size.width * 0.3412500,
        size.height * 0.6343750);
    path_12.cubicTo(
        size.width * 0.3487500,
        size.height * 0.6294150,
        size.width * 0.3550000,
        size.height * 0.6356250,
        size.width * 0.3562500,
        size.height * 0.6430850);
    path_12.cubicTo(
        size.width * 0.3587500,
        size.height * 0.6605400,
        size.width * 0.3624585,
        size.height * 0.6904600,
        size.width * 0.3836665,
        size.height * 0.6792500);
    path_12.cubicTo(
        size.width * 0.4011250,
        size.height * 0.6680400,
        size.width * 0.4036250,
        size.height * 0.6430850,
        size.width * 0.4198335,
        size.height * 0.6306250);
    path_12.cubicTo(
        size.width * 0.4223335,
        size.height * 0.6281250,
        size.width * 0.4273335,
        size.height * 0.6281250,
        size.width * 0.4310415,
        size.height * 0.6306250);
    path_12.cubicTo(
        size.width * 0.4447915,
        size.height * 0.6430850,
        size.width * 0.4485000,
        size.height * 0.6605400,
        size.width * 0.4597500,
        size.height * 0.6742900);
    path_12.cubicTo(
        size.width * 0.4710000,
        size.height * 0.6867500,
        size.width * 0.4847085,
        size.height * 0.6767900,
        size.width * 0.4922085,
        size.height * 0.6655850);
    path_12.cubicTo(
        size.width * 0.4997085,
        size.height * 0.6518350,
        size.width * 0.5059600,
        size.height * 0.6193750,
        size.width * 0.5209150,
        size.height * 0.6343750);
    path_12.cubicTo(
        size.width * 0.5383750,
        size.height * 0.6493750,
        size.width * 0.5545850,
        size.height * 0.6842900,
        size.width * 0.5782500,
        size.height * 0.6730400);
    path_12.cubicTo(
        size.width * 0.5920000,
        size.height * 0.6668350,
        size.width * 0.5832100,
        size.height * 0.6431250,
        size.width * 0.5932500,
        size.height * 0.6280850);
    path_12.cubicTo(
        size.width * 0.5945000,
        size.height * 0.6268350,
        size.width * 0.5982100,
        size.height * 0.6268350,
        size.width * 0.6007500,
        size.height * 0.6293350);
    path_12.cubicTo(
        size.width * 0.6132500,
        size.height * 0.6467900,
        size.width * 0.6319600,
        size.height * 0.6692500,
        size.width * 0.6481250,
        size.height * 0.6580400);
    path_12.cubicTo(
        size.width * 0.6593750,
        size.height * 0.6505400,
        size.width * 0.6556250,
        size.height * 0.6281250,
        size.width * 0.6605850,
        size.height * 0.6130850);
    path_12.cubicTo(
        size.width * 0.6618350,
        size.height * 0.6105850,
        size.width * 0.6655400,
        size.height * 0.6068750,
        size.width * 0.6667900,
        size.height * 0.6081250);
    path_12.cubicTo(
        size.width * 0.6772500,
        size.height * 0.6208750,
        size.width * 0.6918350,
        size.height * 0.6354150,
        size.width * 0.7066250,
        size.height * 0.6403350);
    path_12.cubicTo(
        size.width * 0.7248350,
        size.height * 0.5961650,
        size.width * 0.7212500,
        size.height * 0.5498750,
        size.width * 0.7212500,
        size.height * 0.5498750);
    path_12.lineTo(size.width * 0.7213350, size.height * 0.5500400);
    path_12.lineTo(size.width * 0.7213350, size.height * 0.5501250);
    path_12.lineTo(size.width * 0.7213350, size.height * 0.5499600);
    path_12.lineTo(size.width * 0.7214150, size.height * 0.5500000);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.6669600, size.height * 0.6082100);
    path_13.cubicTo(
        size.width * 0.6657100,
        size.height * 0.6069600,
        size.width * 0.6620000,
        size.height * 0.6107100,
        size.width * 0.6607500,
        size.height * 0.6131650);
    path_13.cubicTo(
        size.width * 0.6557900,
        size.height * 0.6281650,
        size.width * 0.6595000,
        size.height * 0.6505850,
        size.width * 0.6482900,
        size.height * 0.6581250);
    path_13.cubicTo(
        size.width * 0.6321250,
        size.height * 0.6693750,
        size.width * 0.6134150,
        size.height * 0.6469150,
        size.width * 0.6009150,
        size.height * 0.6294600);
    path_13.cubicTo(
        size.width * 0.5984150,
        size.height * 0.6269600,
        size.width * 0.5947100,
        size.height * 0.6269600,
        size.width * 0.5934150,
        size.height * 0.6282100);
    path_13.cubicTo(
        size.width * 0.5834600,
        size.height * 0.6432100,
        size.width * 0.5921650,
        size.height * 0.6668750,
        size.width * 0.5784150,
        size.height * 0.6731650);
    path_13.cubicTo(
        size.width * 0.5547100,
        size.height * 0.6843750,
        size.width * 0.5385000,
        size.height * 0.6494600,
        size.width * 0.5210850,
        size.height * 0.6345000);
    path_13.cubicTo(
        size.width * 0.5060850,
        size.height * 0.6195000,
        size.width * 0.4998750,
        size.height * 0.6519600,
        size.width * 0.4923750,
        size.height * 0.6657100);
    path_13.cubicTo(
        size.width * 0.4848750,
        size.height * 0.6769600,
        size.width * 0.4711665,
        size.height * 0.6869150,
        size.width * 0.4599165,
        size.height * 0.6744150);
    path_13.cubicTo(
        size.width * 0.4487085,
        size.height * 0.6606650,
        size.width * 0.4449165,
        size.height * 0.6432100,
        size.width * 0.4312085,
        size.height * 0.6307500);
    path_13.cubicTo(
        size.width * 0.4274165,
        size.height * 0.6282500,
        size.width * 0.4225000,
        size.height * 0.6282500,
        size.width * 0.4199585,
        size.height * 0.6307500);
    path_13.cubicTo(
        size.width * 0.4037915,
        size.height * 0.6432100,
        size.width * 0.4012500,
        size.height * 0.6681650,
        size.width * 0.3837915,
        size.height * 0.6793750);
    path_13.cubicTo(
        size.width * 0.3625835,
        size.height * 0.6906250,
        size.width * 0.3588335,
        size.height * 0.6606650,
        size.width * 0.3563750,
        size.height * 0.6432100);
    path_13.cubicTo(
        size.width * 0.3551250,
        size.height * 0.6357100,
        size.width * 0.3488750,
        size.height * 0.6294600,
        size.width * 0.3413750,
        size.height * 0.6345000);
    path_13.cubicTo(
        size.width * 0.3263750,
        size.height * 0.6444600,
        size.width * 0.3152085,
        size.height * 0.6719150,
        size.width * 0.3014585,
        size.height * 0.6619150);
    path_13.cubicTo(
        size.width * 0.2890000,
        size.height * 0.6519600,
        size.width * 0.2939585,
        size.height * 0.6282500,
        size.width * 0.2902500,
        size.height * 0.6095000);
    path_13.cubicTo(
        size.width * 0.2902500,
        size.height * 0.6082500,
        size.width * 0.2865000,
        size.height * 0.6070000,
        size.width * 0.2840415,
        size.height * 0.6082500);
    path_13.cubicTo(
        size.width * 0.2640835,
        size.height * 0.6169600,
        size.width * 0.2491665,
        size.height * 0.6481650,
        size.width * 0.2291250,
        size.height * 0.6381650);
    path_13.cubicTo(
        size.width * 0.2129585,
        size.height * 0.6294600,
        size.width * 0.2191665,
        size.height * 0.6007500,
        size.width * 0.2191665,
        size.height * 0.5808350);
    path_13.cubicTo(
        size.width * 0.2028335,
        size.height * 0.5828750,
        size.width * 0.1895000,
        size.height * 0.5926650,
        size.width * 0.1760415,
        size.height * 0.6018350);
    path_13.cubicTo(
        size.width * 0.1793335,
        size.height * 0.6222100,
        size.width * 0.1835000,
        size.height * 0.6393350,
        size.width * 0.1885415,
        size.height * 0.6507100);
    path_13.cubicTo(
        size.width * 0.2079165,
        size.height * 0.6943750,
        size.width * 0.2447085,
        size.height * 0.6512900,
        size.width * 0.2447085,
        size.height * 0.6512900);
    path_13.cubicTo(
        size.width * 0.2447085,
        size.height * 0.6512900,
        size.width * 0.2434585,
        size.height * 0.7223750,
        size.width * 0.2752500,
        size.height * 0.7261250);
    path_13.cubicTo(
        size.width * 0.2975000,
        size.height * 0.7287500,
        size.width * 0.3044585,
        size.height * 0.7056650,
        size.width * 0.3067085,
        size.height * 0.6915850);
    path_13.cubicTo(
        size.width * 0.3071665,
        size.height * 0.6851650,
        size.width * 0.3077085,
        size.height * 0.6811650,
        size.width * 0.3077085,
        size.height * 0.6811650);
    path_13.cubicTo(
        size.width * 0.3077085,
        size.height * 0.6811650,
        size.width * 0.3076250,
        size.height * 0.6855400,
        size.width * 0.3067085,
        size.height * 0.6915850);
    path_13.cubicTo(
        size.width * 0.3049585,
        size.height * 0.7172500,
        size.width * 0.3048335,
        size.height * 0.7820850,
        size.width * 0.3482085,
        size.height * 0.7890850);
    path_13.cubicTo(
        size.width * 0.3924585,
        size.height * 0.7962100,
        size.width * 0.4039165,
        size.height * 0.7286650,
        size.width * 0.4067085,
        size.height * 0.7035000);
    path_13.cubicTo(
        size.width * 0.4067915,
        size.height * 0.6980400,
        size.width * 0.4075000,
        size.height * 0.6942900,
        size.width * 0.4075000,
        size.height * 0.6942900);
    path_13.cubicTo(
        size.width * 0.4075000,
        size.height * 0.6942900,
        size.width * 0.4073335,
        size.height * 0.6978350,
        size.width * 0.4067085,
        size.height * 0.7035000);
    path_13.cubicTo(
        size.width * 0.4066250,
        size.height * 0.7163350,
        size.width * 0.4100835,
        size.height * 0.7388350,
        size.width * 0.4349165,
        size.height * 0.7466650);
    path_13.cubicTo(
        size.width * 0.4704585,
        size.height * 0.7578750,
        size.width * 0.4829585,
        size.height * 0.7142100,
        size.width * 0.4829585,
        size.height * 0.7142100);
    path_13.cubicTo(
        size.width * 0.4879170,
        size.height * 0.7285400,
        size.width * 0.5060000,
        size.height * 0.7098750,
        size.width * 0.5060000,
        size.height * 0.7098750);
    path_13.cubicTo(
        size.width * 0.5109600,
        size.height * 0.7372900,
        size.width * 0.5302900,
        size.height * 0.7155000,
        size.width * 0.5302900,
        size.height * 0.7155000);
    path_13.cubicTo(
        size.width * 0.5334150,
        size.height * 0.7372900,
        size.width * 0.5477500,
        size.height * 0.7230000,
        size.width * 0.5477500,
        size.height * 0.7230000);
    path_13.cubicTo(
        size.width * 0.5458750,
        size.height * 0.7423750,
        size.width * 0.5539600,
        size.height * 0.7447900,
        size.width * 0.5539600,
        size.height * 0.7447900);
    path_13.cubicTo(
        size.width * 0.5687500,
        size.height * 0.7475000,
        size.width * 0.5755000,
        size.height * 0.7402900,
        size.width * 0.5785400,
        size.height * 0.7320850);
    path_13.cubicTo(
        size.width * 0.5788750,
        size.height * 0.7210400,
        size.width * 0.5807500,
        size.height * 0.7123750,
        size.width * 0.5807500,
        size.height * 0.7123750);
    path_13.cubicTo(
        size.width * 0.5807500,
        size.height * 0.7123750,
        size.width * 0.5819600,
        size.height * 0.7229150,
        size.width * 0.5785400,
        size.height * 0.7320850);
    path_13.cubicTo(
        size.width * 0.5779600,
        size.height * 0.7501650,
        size.width * 0.5814150,
        size.height * 0.7746250,
        size.width * 0.6035850,
        size.height * 0.7782900);
    path_13.cubicTo(
        size.width * 0.6393350,
        size.height * 0.7841250,
        size.width * 0.6401650,
        size.height * 0.7092900,
        size.width * 0.6401650,
        size.height * 0.7092900);
    path_13.cubicTo(
        size.width * 0.6751650,
        size.height * 0.6952100,
        size.width * 0.6951650,
        size.height * 0.6682100,
        size.width * 0.7065850,
        size.height * 0.6405400);
    path_13.cubicTo(
        size.width * 0.6917900,
        size.height * 0.6355850,
        size.width * 0.6772100,
        size.height * 0.6210400,
        size.width * 0.6667500,
        size.height * 0.6083350);
    path_13.lineTo(size.width * 0.6667500, size.height * 0.6082500);
    path_13.lineTo(size.width * 0.6668350, size.height * 0.6081650);
    path_13.lineTo(size.width * 0.6669150, size.height * 0.6081650);
    path_13.lineTo(size.width * 0.6669600, size.height * 0.6082100);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.5808750, size.height * 0.7124150);
    path_14.cubicTo(
        size.width * 0.5808750,
        size.height * 0.7124150,
        size.width * 0.5790400,
        size.height * 0.7211250,
        size.width * 0.5786650,
        size.height * 0.7321250);
    path_14.cubicTo(
        size.width * 0.5820400,
        size.height * 0.7229150,
        size.width * 0.5808750,
        size.height * 0.7124150,
        size.width * 0.5808750,
        size.height * 0.7124150);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.3571665, size.height * 0.4012080);
    path_15.cubicTo(
        size.width * 0.3491665,
        size.height * 0.4116250,
        size.width * 0.3403335,
        size.height * 0.4244165,
        size.width * 0.3384165,
        size.height * 0.4376250);
    path_15.cubicTo(
        size.width * 0.3371665,
        size.height * 0.4457080,
        size.width * 0.3407915,
        size.height * 0.4520000,
        size.width * 0.3489165,
        size.height * 0.4540000);
    path_15.cubicTo(
        size.width * 0.3588750,
        size.height * 0.4564580,
        size.width * 0.3683335,
        size.height * 0.4519580,
        size.width * 0.3742915,
        size.height * 0.4438750);
    path_15.cubicTo(
        size.width * 0.3781250,
        size.height * 0.4386665,
        size.width * 0.3809165,
        size.height * 0.4323330,
        size.width * 0.3822915,
        size.height * 0.4259165);
    path_15.cubicTo(
        size.width * 0.3833335,
        size.height * 0.4212915,
        size.width * 0.3737500,
        size.height * 0.4233750,
        size.width * 0.3725415,
        size.height * 0.4268330);
    path_15.cubicTo(
        size.width * 0.3705835,
        size.height * 0.4323750,
        size.width * 0.3690415,
        size.height * 0.4380830,
        size.width * 0.3677500,
        size.height * 0.4437500);
    path_15.cubicTo(
        size.width * 0.3656665,
        size.height * 0.4529580,
        size.width * 0.3636250,
        size.height * 0.4631665,
        size.width * 0.3655000,
        size.height * 0.4725830);
    path_15.cubicTo(
        size.width * 0.3674585,
        size.height * 0.4819580,
        size.width * 0.3753750,
        size.height * 0.4854165,
        size.width * 0.3844165,
        size.height * 0.4834165);
    path_15.cubicTo(
        size.width * 0.3970000,
        size.height * 0.4806665,
        size.width * 0.4064585,
        size.height * 0.4716665,
        size.width * 0.4106665,
        size.height * 0.4596665);
    path_15.cubicTo(
        size.width * 0.4132915,
        size.height * 0.4521665,
        size.width * 0.4142500,
        size.height * 0.4438330,
        size.width * 0.4135000,
        size.height * 0.4358750);
    path_15.cubicTo(
        size.width * 0.4131665,
        size.height * 0.4320830,
        size.width * 0.4050000,
        size.height * 0.4342915,
        size.width * 0.4040835,
        size.height * 0.4367915);
    path_15.cubicTo(
        size.width * 0.4022085,
        size.height * 0.4420000,
        size.width * 0.4007500,
        size.height * 0.4473750,
        size.width * 0.3998335,
        size.height * 0.4529165);
    path_15.cubicTo(
        size.width * 0.3985000,
        size.height * 0.4609165,
        size.width * 0.3977085,
        size.height * 0.4711665,
        size.width * 0.4030000,
        size.height * 0.4779580);
    path_15.cubicTo(
        size.width * 0.4096250,
        size.height * 0.4865000,
        size.width * 0.4235415,
        size.height * 0.4850415,
        size.width * 0.4322500,
        size.height * 0.4810000);
    path_15.cubicTo(
        size.width * 0.4420000,
        size.height * 0.4765000,
        size.width * 0.4477500,
        size.height * 0.4672915,
        size.width * 0.4503750,
        size.height * 0.4572080);
    path_15.cubicTo(
        size.width * 0.4520835,
        size.height * 0.4507915,
        size.width * 0.4526250,
        size.height * 0.4438330,
        size.width * 0.4521250,
        size.height * 0.4371665);
    path_15.cubicTo(
        size.width * 0.4518335,
        size.height * 0.4332500,
        size.width * 0.4421250,
        size.height * 0.4354165,
        size.width * 0.4424165,
        size.height * 0.4397915);
    path_15.cubicTo(
        size.width * 0.4434165,
        size.height * 0.4531665,
        size.width * 0.4479585,
        size.height * 0.4712915,
        size.width * 0.4605835,
        size.height * 0.4783750);
    path_15.cubicTo(
        size.width * 0.4681665,
        size.height * 0.4826250,
        size.width * 0.4785415,
        size.height * 0.4823750,
        size.width * 0.4839585,
        size.height * 0.4749580);
    path_15.cubicTo(
        size.width * 0.4885835,
        size.height * 0.4685830,
        size.width * 0.4885415,
        size.height * 0.4595830,
        size.width * 0.4882085,
        size.height * 0.4520415);
    path_15.cubicTo(
        size.width * 0.4879165,
        size.height * 0.4460000,
        size.width * 0.4872085,
        size.height * 0.4399580,
        size.width * 0.4859585,
        size.height * 0.4340830);
    path_15.cubicTo(
        size.width * 0.4851250,
        size.height * 0.4300000,
        size.width * 0.4754585,
        size.height * 0.4325000,
        size.width * 0.4762500,
        size.height * 0.4367080);
    path_15.cubicTo(
        size.width * 0.4787500,
        size.height * 0.4495415,
        size.width * 0.4840000,
        size.height * 0.4650830,
        size.width * 0.4945835,
        size.height * 0.4734580);
    path_15.cubicTo(
        size.width * 0.5012100,
        size.height * 0.4786665,
        size.width * 0.5114600,
        size.height * 0.4799580,
        size.width * 0.5181650,
        size.height * 0.4742500);
    path_15.cubicTo(
        size.width * 0.5240850,
        size.height * 0.4692915,
        size.width * 0.5242500,
        size.height * 0.4607080,
        size.width * 0.5237500,
        size.height * 0.4536250);
    path_15.cubicTo(
        size.width * 0.5233350,
        size.height * 0.4477080,
        size.width * 0.5222500,
        size.height * 0.4416250,
        size.width * 0.5206250,
        size.height * 0.4359165);
    path_15.lineTo(size.width * 0.5113350, size.height * 0.4392915);
    path_15.cubicTo(
        size.width * 0.5139600,
        size.height * 0.4435830,
        size.width * 0.5170400,
        size.height * 0.4478330,
        size.width * 0.5207500,
        size.height * 0.4512915);
    path_15.cubicTo(
        size.width * 0.5248350,
        size.height * 0.4550415,
        size.width * 0.5334600,
        size.height * 0.4584165,
        size.width * 0.5369150,
        size.height * 0.4518750);
    path_15.cubicTo(
        size.width * 0.5392500,
        size.height * 0.4475830,
        size.width * 0.5355400,
        size.height * 0.4410415,
        size.width * 0.5337500,
        size.height * 0.4372080);
    path_15.cubicTo(
        size.width * 0.5319600,
        size.height * 0.4333750,
        size.width * 0.5299150,
        size.height * 0.4295415,
        size.width * 0.5277100,
        size.height * 0.4258750);
    path_15.cubicTo(
        size.width * 0.5259600,
        size.height * 0.4228750,
        size.width * 0.5170000,
        size.height * 0.4255830,
        size.width * 0.5184150,
        size.height * 0.4292500);
    path_15.cubicTo(
        size.width * 0.5225850,
        size.height * 0.4400000,
        size.width * 0.5310400,
        size.height * 0.4530415,
        size.width * 0.5437100,
        size.height * 0.4537500);
    path_15.cubicTo(
        size.width * 0.5497500,
        size.height * 0.4540830,
        size.width * 0.5570850,
        size.height * 0.4514165,
        size.width * 0.5572900,
        size.height * 0.4444580);
    path_15.cubicTo(
        size.width * 0.5575000,
        size.height * 0.4383330,
        size.width * 0.5538750,
        size.height * 0.4322080,
        size.width * 0.5508750,
        size.height * 0.4271250);
    path_15.cubicTo(
        size.width * 0.5484150,
        size.height * 0.4228330,
        size.width * 0.5456650,
        size.height * 0.4186250,
        size.width * 0.5426250,
        size.height * 0.4146665);
    path_15.cubicTo(
        size.width * 0.5401650,
        size.height * 0.4115000,
        size.width * 0.5308750,
        size.height * 0.4151250,
        size.width * 0.5336650,
        size.height * 0.4187500);
    path_15.cubicTo(
        size.width * 0.5395850,
        size.height * 0.4265830,
        size.width * 0.5470000,
        size.height * 0.4364580,
        size.width * 0.5473750,
        size.height * 0.4465830);
    path_15.cubicTo(
        size.width * 0.5473750,
        size.height * 0.4471665,
        size.width * 0.5467100,
        size.height * 0.4480415,
        size.width * 0.5475850,
        size.height * 0.4472915);
    path_15.cubicTo(
        size.width * 0.5482500,
        size.height * 0.4467080,
        size.width * 0.5475000,
        size.height * 0.4473750,
        size.width * 0.5467500,
        size.height * 0.4472915);
    path_15.cubicTo(
        size.width * 0.5459600,
        size.height * 0.4472080,
        size.width * 0.5454150,
        size.height * 0.4471250,
        size.width * 0.5446650,
        size.height * 0.4468750);
    path_15.cubicTo(
        size.width * 0.5410400,
        size.height * 0.4457500,
        size.width * 0.5380850,
        size.height * 0.4427500,
        size.width * 0.5357500,
        size.height * 0.4398750);
    path_15.cubicTo(
        size.width * 0.5325850,
        size.height * 0.4359580,
        size.width * 0.5298750,
        size.height * 0.4313750,
        size.width * 0.5280400,
        size.height * 0.4266665);
    path_15.lineTo(size.width * 0.5187500, size.height * 0.4300415);
    path_15.cubicTo(
        size.width * 0.5221250,
        size.height * 0.4358330,
        size.width * 0.5268350,
        size.height * 0.4429165,
        size.width * 0.5276650,
        size.height * 0.4497080);
    path_15.cubicTo(
        size.width * 0.5276650,
        size.height * 0.4497915,
        size.width * 0.5277500,
        size.height * 0.4514580,
        size.width * 0.5276650,
        size.height * 0.4514580);
    path_15.cubicTo(
        size.width * 0.5270850,
        size.height * 0.4509165,
        size.width * 0.5326250,
        size.height * 0.4504165,
        size.width * 0.5315850,
        size.height * 0.4488330);
    path_15.cubicTo(
        size.width * 0.5311250,
        size.height * 0.4481250,
        size.width * 0.5296250,
        size.height * 0.4474580,
        size.width * 0.5290000,
        size.height * 0.4467915);
    path_15.cubicTo(
        size.width * 0.5280400,
        size.height * 0.4459580,
        size.width * 0.5272500,
        size.height * 0.4449580,
        size.width * 0.5263750,
        size.height * 0.4439580);
    path_15.cubicTo(
        size.width * 0.5240850,
        size.height * 0.4412500,
        size.width * 0.5220000,
        size.height * 0.4383750,
        size.width * 0.5200850,
        size.height * 0.4353330);
    path_15.cubicTo(
        size.width * 0.5182100,
        size.height * 0.4322915,
        size.width * 0.5096650,
        size.height * 0.4348750,
        size.width * 0.5107900,
        size.height * 0.4387080);
    path_15.cubicTo(
        size.width * 0.5133350,
        size.height * 0.4475000,
        size.width * 0.5162500,
        size.height * 0.4597500,
        size.width * 0.5125850,
        size.height * 0.4685830);
    path_15.cubicTo(
        size.width * 0.5117500,
        size.height * 0.4706665,
        size.width * 0.5108350,
        size.height * 0.4717080,
        size.width * 0.5094150,
        size.height * 0.4716250);
    path_15.cubicTo(
        size.width * 0.5062900,
        size.height * 0.4714165,
        size.width * 0.5035000,
        size.height * 0.4697500,
        size.width * 0.5012100,
        size.height * 0.4677080);
    path_15.cubicTo(
        size.width * 0.4956250,
        size.height * 0.4626250,
        size.width * 0.4922915,
        size.height * 0.4552500,
        size.width * 0.4897500,
        size.height * 0.4482915);
    path_15.cubicTo(
        size.width * 0.4881250,
        size.height * 0.4437500,
        size.width * 0.4866665,
        size.height * 0.4390830,
        size.width * 0.4857500,
        size.height * 0.4342915);
    path_15.lineTo(size.width * 0.4760415, size.height * 0.4369165);
    path_15.cubicTo(
        size.width * 0.4782500,
        size.height * 0.4470830,
        size.width * 0.4798750,
        size.height * 0.4590000,
        size.width * 0.4770835,
        size.height * 0.4691665);
    path_15.cubicTo(
        size.width * 0.4765000,
        size.height * 0.4712500,
        size.width * 0.4752085,
        size.height * 0.4740830,
        size.width * 0.4737500,
        size.height * 0.4748750);
    path_15.cubicTo(
        size.width * 0.4732500,
        size.height * 0.4748750,
        size.width * 0.4745415,
        size.height * 0.4744165,
        size.width * 0.4737500,
        size.height * 0.4748750);
    path_15.cubicTo(
        size.width * 0.4732085,
        size.height * 0.4748750,
        size.width * 0.4727085,
        size.height * 0.4748750,
        size.width * 0.4722085,
        size.height * 0.4747915);
    path_15.cubicTo(
        size.width * 0.4703335,
        size.height * 0.4745000,
        size.width * 0.4685415,
        size.height * 0.4737500,
        size.width * 0.4669165,
        size.height * 0.4727080);
    path_15.cubicTo(
        size.width * 0.4603335,
        size.height * 0.4685415,
        size.width * 0.4570000,
        size.height * 0.4604165,
        size.width * 0.4548750,
        size.height * 0.4532500);
    path_15.cubicTo(
        size.width * 0.4533750,
        size.height * 0.4481250,
        size.width * 0.4522500,
        size.height * 0.4427500,
        size.width * 0.4518750,
        size.height * 0.4373750);
    path_15.lineTo(size.width * 0.4421665, size.height * 0.4400000);
    path_15.cubicTo(
        size.width * 0.4422500,
        size.height * 0.4407915,
        size.width * 0.4421665,
        size.height * 0.4399165,
        size.width * 0.4421665,
        size.height * 0.4402915);
    path_15.cubicTo(
        size.width * 0.4420835,
        size.height * 0.4413330,
        size.width * 0.4421665,
        size.height * 0.4423750,
        size.width * 0.4421665,
        size.height * 0.4434165);
    path_15.cubicTo(
        size.width * 0.4421665,
        size.height * 0.4465830,
        size.width * 0.4418750,
        size.height * 0.4498330,
        size.width * 0.4413750,
        size.height * 0.4529580);
    path_15.cubicTo(
        size.width * 0.4401665,
        size.height * 0.4605415,
        size.width * 0.4375835,
        size.height * 0.4688750,
        size.width * 0.4314165,
        size.height * 0.4739165);
    path_15.cubicTo(
        size.width * 0.4260415,
        size.height * 0.4782915,
        size.width * 0.4160415,
        size.height * 0.4802080,
        size.width * 0.4114165,
        size.height * 0.4739165);
    path_15.cubicTo(
        size.width * 0.4071665,
        size.height * 0.4682080,
        size.width * 0.4081250,
        size.height * 0.4595000,
        size.width * 0.4091665,
        size.height * 0.4529165);
    path_15.cubicTo(
        size.width * 0.4097500,
        size.height * 0.4493330,
        size.width * 0.4105415,
        size.height * 0.4457500,
        size.width * 0.4116250,
        size.height * 0.4422080);
    path_15.cubicTo(
        size.width * 0.4119585,
        size.height * 0.4410000,
        size.width * 0.4123335,
        size.height * 0.4398330,
        size.width * 0.4126665,
        size.height * 0.4386250);
    path_15.cubicTo(
        size.width * 0.4127500,
        size.height * 0.4382915,
        size.width * 0.4130000,
        size.height * 0.4378750,
        size.width * 0.4130000,
        size.height * 0.4375415);
    path_15.cubicTo(
        size.width * 0.4130000,
        size.height * 0.4377500,
        size.width * 0.4127085,
        size.height * 0.4383330,
        size.width * 0.4129165,
        size.height * 0.4378750);
    path_15.lineTo(size.width * 0.4035000, size.height * 0.4387915);
    path_15.cubicTo(
        size.width * 0.4035835,
        size.height * 0.4402500,
        size.width * 0.4036665,
        size.height * 0.4412915,
        size.width * 0.4035835,
        size.height * 0.4433330);
    path_15.cubicTo(
        size.width * 0.4035000,
        size.height * 0.4471665,
        size.width * 0.4031250,
        size.height * 0.4510000,
        size.width * 0.4022915,
        size.height * 0.4547500);
    path_15.cubicTo(
        size.width * 0.4002500,
        size.height * 0.4642080,
        size.width * 0.3951250,
        size.height * 0.4735830,
        size.width * 0.3854165,
        size.height * 0.4769165);
    path_15.cubicTo(
        size.width * 0.3825835,
        size.height * 0.4779165,
        size.width * 0.3800000,
        size.height * 0.4784580,
        size.width * 0.3778335,
        size.height * 0.4766665);
    path_15.cubicTo(
        size.width * 0.3754585,
        size.height * 0.4745830,
        size.width * 0.3747915,
        size.height * 0.4709580,
        size.width * 0.3744585,
        size.height * 0.4679580);
    path_15.cubicTo(
        size.width * 0.3734585,
        size.height * 0.4597080,
        size.width * 0.3752915,
        size.height * 0.4508330,
        size.width * 0.3772500,
        size.height * 0.4427915);
    path_15.cubicTo(
        size.width * 0.3785415,
        size.height * 0.4372080,
        size.width * 0.3800835,
        size.height * 0.4315830,
        size.width * 0.3819585,
        size.height * 0.4261665);
    path_15.lineTo(size.width * 0.3722085, size.height * 0.4270830);
    path_15.cubicTo(
        size.width * 0.3704585,
        size.height * 0.4350000,
        size.width * 0.3646250,
        size.height * 0.4502080,
        size.width * 0.3543335,
        size.height * 0.4481250);
    path_15.cubicTo(
        size.width * 0.3393335,
        size.height * 0.4450415,
        size.width * 0.3530000,
        size.height * 0.4222080,
        size.width * 0.3571665,
        size.height * 0.4152915);
    path_15.cubicTo(
        size.width * 0.3589165,
        size.height * 0.4124165,
        size.width * 0.3607500,
        size.height * 0.4095830,
        size.width * 0.3627500,
        size.height * 0.4067915);
    path_15.cubicTo(
        size.width * 0.3635415,
        size.height * 0.4056665,
        size.width * 0.3642500,
        size.height * 0.4046665,
        size.width * 0.3649585,
        size.height * 0.4037915);
    path_15.cubicTo(
        size.width * 0.3686250,
        size.height * 0.3990000,
        size.width * 0.3593750,
        size.height * 0.3982080,
        size.width * 0.3569585,
        size.height * 0.4013330);
    path_15.lineTo(size.width * 0.3570415, size.height * 0.4012500);
    path_15.lineTo(size.width * 0.3572085, size.height * 0.4012500);
    path_15.lineTo(size.width * 0.3571665, size.height * 0.4012080);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.3311665, size.height * 0.3674170);
    path_16.cubicTo(
        size.width * 0.3307500,
        size.height * 0.3861250,
        size.width * 0.3360000,
        size.height * 0.4015000,
        size.width * 0.3429165,
        size.height * 0.4017085);
    path_16.cubicTo(
        size.width * 0.3497915,
        size.height * 0.4020000,
        size.width * 0.3557085,
        size.height * 0.3870420,
        size.width * 0.3561250,
        size.height * 0.3682920);
    path_16.cubicTo(
        size.width * 0.3565415,
        size.height * 0.3495420,
        size.width * 0.3512915,
        size.height * 0.3342085,
        size.width * 0.3443750,
        size.height * 0.3340000);
    path_16.cubicTo(
        size.width * 0.3375000,
        size.height * 0.3337085,
        size.width * 0.3315835,
        size.height * 0.3486670,
        size.width * 0.3311665,
        size.height * 0.3674170);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.5296250, size.height * 0.3674170);
    path_17.cubicTo(
        size.width * 0.5292100,
        size.height * 0.3861250,
        size.width * 0.5344600,
        size.height * 0.4015000,
        size.width * 0.5413750,
        size.height * 0.4017085);
    path_17.cubicTo(
        size.width * 0.5482500,
        size.height * 0.4020000,
        size.width * 0.5541650,
        size.height * 0.3870420,
        size.width * 0.5545850,
        size.height * 0.3682920);
    path_17.cubicTo(
        size.width * 0.5550000,
        size.height * 0.3495835,
        size.width * 0.5497500,
        size.height * 0.3342085,
        size.width * 0.5428350,
        size.height * 0.3340000);
    path_17.cubicTo(
        size.width * 0.5359600,
        size.height * 0.3337085,
        size.width * 0.5300400,
        size.height * 0.3486670,
        size.width * 0.5296250,
        size.height * 0.3674170);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.3429165, size.height * 0.3005000);
    path_18.cubicTo(
        size.width * 0.3502915,
        size.height * 0.3010415,
        size.width * 0.3532500,
        size.height * 0.3103750,
        size.width * 0.3478750,
        size.height * 0.3153750);
    path_18.cubicTo(
        size.width * 0.3325000,
        size.height * 0.3297500,
        size.width * 0.2966250,
        size.height * 0.3605830,
        size.width * 0.2855000,
        size.height * 0.3459165);
    path_18.cubicTo(
        size.width * 0.2740000,
        size.height * 0.3307500,
        size.width * 0.3193335,
        size.height * 0.2987915,
        size.width * 0.3428335,
        size.height * 0.3004585);
    path_18.lineTo(size.width * 0.3428750, size.height * 0.3004585);
    path_18.lineTo(size.width * 0.3429165, size.height * 0.3005000);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.5328350, size.height * 0.3022915);
    path_19.cubicTo(
        size.width * 0.5263350,
        size.height * 0.3057915,
        size.width * 0.5274150,
        size.height * 0.3155000,
        size.width * 0.5343750,
        size.height * 0.3179165);
    path_19.cubicTo(
        size.width * 0.5542900,
        size.height * 0.3247500,
        size.width * 0.5996650,
        size.height * 0.3381665,
        size.width * 0.6037500,
        size.height * 0.3202915);
    path_19.cubicTo(
        size.width * 0.6080400,
        size.height * 0.3017500,
        size.width * 0.5535850,
        size.height * 0.2911665,
        size.width * 0.5328750,
        size.height * 0.3022500);
    path_19.lineTo(size.width * 0.5328350, size.height * 0.3022500);
    path_19.lineTo(size.width * 0.5328350, size.height * 0.3022915);
    path_19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.3991665, size.height * 0.3691670);
    path_20.cubicTo(
        size.width * 0.3989165,
        size.height * 0.4016250,
        size.width * 0.3783750,
        size.height * 0.4315835,
        size.width * 0.3475835,
        size.height * 0.4425000);
    path_20.cubicTo(
        size.width * 0.3167915,
        size.height * 0.4534170,
        size.width * 0.2823335,
        size.height * 0.4438335,
        size.width * 0.2615415,
        size.height * 0.4189585);
    path_20.cubicTo(
        size.width * 0.2407500,
        size.height * 0.3940835,
        size.width * 0.2378335,
        size.height * 0.3567085,
        size.width * 0.2549165,
        size.height * 0.3286670);
    path_20.cubicTo(
        size.width * 0.2720415,
        size.height * 0.3006250,
        size.width * 0.3050000,
        size.height * 0.2864585,
        size.width * 0.3367085,
        size.height * 0.2928750);
    path_20.cubicTo(
        size.width * 0.3727915,
        size.height * 0.3002085,
        size.width * 0.3989165,
        size.height * 0.3325420,
        size.width * 0.3991665,
        size.height * 0.3691670);
    path_20.cubicTo(
        size.width * 0.3991665,
        size.height * 0.3728335,
        size.width * 0.4048750,
        size.height * 0.3728335,
        size.width * 0.4048750,
        size.height * 0.3691670);
    path_20.cubicTo(
        size.width * 0.4046250,
        size.height * 0.3344170,
        size.width * 0.3828335,
        size.height * 0.3028750,
        size.width * 0.3501250,
        size.height * 0.2907500);
    path_20.cubicTo(
        size.width * 0.3174165,
        size.height * 0.2786250,
        size.width * 0.2789585,
        size.height * 0.2890000,
        size.width * 0.2567500,
        size.height * 0.3161670);
    path_20.cubicTo(
        size.width * 0.2345835,
        size.height * 0.3432920,
        size.width * 0.2316665,
        size.height * 0.3825835,
        size.width * 0.2499165,
        size.height * 0.4125420);
    path_20.cubicTo(
        size.width * 0.2681665,
        size.height * 0.4425000,
        size.width * 0.3038750,
        size.height * 0.4578335,
        size.width * 0.3381665,
        size.height * 0.4509170);
    path_20.cubicTo(
        size.width * 0.3767085,
        size.height * 0.4430835,
        size.width * 0.4045000,
        size.height * 0.4082085,
        size.width * 0.4048335,
        size.height * 0.3691250);
    path_20.cubicTo(
        size.width * 0.4048335,
        size.height * 0.3654585,
        size.width * 0.3991250,
        size.height * 0.3654585,
        size.width * 0.3991250,
        size.height * 0.3691250);
    path_20.lineTo(size.width * 0.3991665, size.height * 0.3691250);
    path_20.lineTo(size.width * 0.3991665, size.height * 0.3691670);
    path_20.close();

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.6439600, size.height * 0.3691665);
    path_21.cubicTo(
        size.width * 0.6437100,
        size.height * 0.4016245,
        size.width * 0.6231650,
        size.height * 0.4315830,
        size.width * 0.5923750,
        size.height * 0.4424995);
    path_21.cubicTo(
        size.width * 0.5615850,
        size.height * 0.4534165,
        size.width * 0.5271250,
        size.height * 0.4438330,
        size.width * 0.5063350,
        size.height * 0.4189580);
    path_21.cubicTo(
        size.width * 0.4855415,
        size.height * 0.3940830,
        size.width * 0.4826250,
        size.height * 0.3567080,
        size.width * 0.4997085,
        size.height * 0.3286665);
    path_21.cubicTo(
        size.width * 0.5168350,
        size.height * 0.3006245,
        size.width * 0.5497900,
        size.height * 0.2864580,
        size.width * 0.5815000,
        size.height * 0.2928745);
    path_21.cubicTo(
        size.width * 0.6175850,
        size.height * 0.3002080,
        size.width * 0.6437100,
        size.height * 0.3325415,
        size.width * 0.6439600,
        size.height * 0.3691665);
    path_21.cubicTo(
        size.width * 0.6439600,
        size.height * 0.3728330,
        size.width * 0.6496650,
        size.height * 0.3728330,
        size.width * 0.6496650,
        size.height * 0.3691665);
    path_21.cubicTo(
        size.width * 0.6494150,
        size.height * 0.3344165,
        size.width * 0.6276250,
        size.height * 0.3028745,
        size.width * 0.5949150,
        size.height * 0.2907495);
    path_21.cubicTo(
        size.width * 0.5622100,
        size.height * 0.2786665,
        size.width * 0.5237500,
        size.height * 0.2889995,
        size.width * 0.5015400,
        size.height * 0.3161665);
    path_21.cubicTo(
        size.width * 0.4793750,
        size.height * 0.3432915,
        size.width * 0.4764585,
        size.height * 0.3825830,
        size.width * 0.4947085,
        size.height * 0.4125415);
    path_21.cubicTo(
        size.width * 0.5129600,
        size.height * 0.4424995,
        size.width * 0.5486650,
        size.height * 0.4578330,
        size.width * 0.5829600,
        size.height * 0.4509165);
    path_21.cubicTo(
        size.width * 0.6215000,
        size.height * 0.4430830,
        size.width * 0.6492900,
        size.height * 0.4082080,
        size.width * 0.6496250,
        size.height * 0.3691245);
    path_21.cubicTo(
        size.width * 0.6496250,
        size.height * 0.3654580,
        size.width * 0.6439150,
        size.height * 0.3654580,
        size.width * 0.6439150,
        size.height * 0.3691245);
    path_21.lineTo(size.width * 0.6439600, size.height * 0.3691245);
    path_21.lineTo(size.width * 0.6439600, size.height * 0.3691665);
    path_21.close();

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.1851665, size.height * 0.4973335);
    path_22.cubicTo(
        size.width * 0.1851665,
        size.height * 0.4973335,
        size.width * 0.2285835,
        size.height * 0.5180850,
        size.width * 0.2155415,
        size.height * 0.5325000);
    path_22.cubicTo(
        size.width * 0.2025000,
        size.height * 0.5469150,
        size.width * 0.1760415,
        size.height * 0.5220000,
        size.width * 0.1760415,
        size.height * 0.5220000);
    path_22.cubicTo(
        size.width * 0.1760415,
        size.height * 0.5220000,
        size.width * 0.2139165,
        size.height * 0.5418750,
        size.width * 0.2025000,
        size.height * 0.5469600);
    path_22.cubicTo(
        size.width * 0.1910415,
        size.height * 0.5520400,
        size.width * 0.1625000,
        size.height * 0.5495000,
        size.width * 0.1605415,
        size.height * 0.5325400);
    path_22.cubicTo(
        size.width * 0.1585835,
        size.height * 0.5155850,
        size.width * 0.1956665,
        size.height * 0.5691250,
        size.width * 0.1760415,
        size.height * 0.5637500);
    path_22.cubicTo(
        size.width * 0.1563750,
        size.height * 0.5583750,
        size.width * 0.1337500,
        size.height * 0.5396250,
        size.width * 0.1376665,
        size.height * 0.5270850);
    path_22.cubicTo(
        size.width * 0.1415835,
        size.height * 0.5145400,
        size.width * 0.1851665,
        size.height * 0.4973750,
        size.width * 0.1851665,
        size.height * 0.4973750);
    path_22.lineTo(size.width * 0.1851665, size.height * 0.4973335);
    path_22.close();

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.4029585, size.height * 0.3785650);
    path_23.cubicTo(
        size.width * 0.4100995,
        size.height * 0.3731610,
        size.width * 0.4188605,
        size.height * 0.3694880,
        size.width * 0.4274130,
        size.height * 0.3672080);
    path_23.cubicTo(
        size.width * 0.4475915,
        size.height * 0.3618460,
        size.width * 0.4676870,
        size.height * 0.3663635,
        size.width * 0.4845850,
        size.height * 0.3785650);
    path_23.cubicTo(
        size.width * 0.4876160,
        size.height * 0.3807185,
        size.width * 0.4905225,
        size.height * 0.3756520,
        size.width * 0.4874915,
        size.height * 0.3734985);
    path_23.cubicTo(
        size.width * 0.4699290,
        size.height * 0.3608330,
        size.width * 0.4488370,
        size.height * 0.3561045,
        size.width * 0.4278285,
        size.height * 0.3610860);
    path_23.cubicTo(
        size.width * 0.4181545,
        size.height * 0.3633660,
        size.width * 0.4080240,
        size.height * 0.3674190,
        size.width * 0.4000105,
        size.height * 0.3734985);
    path_23.cubicTo(
        size.width * 0.3970625,
        size.height * 0.3757365,
        size.width * 0.3999275,
        size.height * 0.3808450,
        size.width * 0.4029170,
        size.height * 0.3785650);
    path_23.lineTo(size.width * 0.4029585, size.height * 0.3785650);
    path_23.close();

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_23, paint23Fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.1065835, size.height * 0.5717900);
    path_24.cubicTo(
        size.width * 0.1118750,
        size.height * 0.5795000,
        size.width * 0.1225415,
        size.height * 0.5815000,
        size.width * 0.1302500,
        size.height * 0.5762100);
    path_24.lineTo(size.width * 0.2495835, size.height * 0.4944170);
    path_24.cubicTo(
        size.width * 0.2572915,
        size.height * 0.4891250,
        size.width * 0.2592915,
        size.height * 0.4784585,
        size.width * 0.2540000,
        size.height * 0.4707500);
    path_24.cubicTo(
        size.width * 0.2487085,
        size.height * 0.4630420,
        size.width * 0.2380415,
        size.height * 0.4610420,
        size.width * 0.2303335,
        size.height * 0.4663335);
    path_24.lineTo(size.width * 0.1110000, size.height * 0.5481250);
    path_24.cubicTo(
        size.width * 0.1032915,
        size.height * 0.5534150,
        size.width * 0.1012915,
        size.height * 0.5640850,
        size.width * 0.1065835,
        size.height * 0.5717900);
    path_24.close();

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color = const Color(0xff9CABC4).withOpacity(1.0);
    canvas.drawPath(path_24, paint24Fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.1270835, size.height * 0.5577500);
    path_25.cubicTo(
        size.width * 0.1309165,
        size.height * 0.5633750,
        size.width * 0.1318335,
        size.height * 0.5701650,
        size.width * 0.1301250,
        size.height * 0.5762900);
    path_25.cubicTo(
        size.width * 0.1224165,
        size.height * 0.5815000,
        size.width * 0.1118335,
        size.height * 0.5795000,
        size.width * 0.1065835,
        size.height * 0.5717900);
    path_25.cubicTo(
        size.width * 0.1013335,
        size.height * 0.5641250,
        size.width * 0.1032500,
        size.height * 0.5535400,
        size.width * 0.1108750,
        size.height * 0.5482100);
    path_25.cubicTo(
        size.width * 0.1172085,
        size.height * 0.5488350,
        size.width * 0.1232085,
        size.height * 0.5521250,
        size.width * 0.1270835,
        size.height * 0.5577500);
    path_25.close();

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color = const Color(0xff808DA9).withOpacity(1.0);
    canvas.drawPath(path_25, paint25Fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.2251665, size.height * 0.4635415);
    path_26.lineTo(size.width * 0.2437500, size.height * 0.4507915);
    path_26.cubicTo(
        size.width * 0.2466250,
        size.height * 0.4575415,
        size.width * 0.2502085,
        size.height * 0.4641250,
        size.width * 0.2545000,
        size.height * 0.4704165);
    path_26.cubicTo(
        size.width * 0.2587915,
        size.height * 0.4767085,
        size.width * 0.2636665,
        size.height * 0.4824165,
        size.width * 0.2689165,
        size.height * 0.4875415);
    path_26.lineTo(size.width * 0.2503335, size.height * 0.5002900);
    path_26.cubicTo(
        size.width * 0.2402500,
        size.height * 0.5072100,
        size.width * 0.2262915,
        size.height * 0.5046250,
        size.width * 0.2193750,
        size.height * 0.4945000);
    path_26.cubicTo(
        size.width * 0.2124585,
        size.height * 0.4844165,
        size.width * 0.2150415,
        size.height * 0.4704585,
        size.width * 0.2251665,
        size.height * 0.4635415);
    path_26.close();

    Paint paint26Fill = Paint()..style = PaintingStyle.fill;
    paint26Fill.color = const Color(0xff748098).withOpacity(1.0);
    canvas.drawPath(path_26, paint26Fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.2520835, size.height * 0.4722920);
    path_27.cubicTo(
        size.width * 0.2855415,
        size.height * 0.5211250,
        size.width * 0.3522915,
        size.height * 0.5335850,
        size.width * 0.4011250,
        size.height * 0.5001250);
    path_27.cubicTo(
        size.width * 0.4499585,
        size.height * 0.4666670,
        size.width * 0.4624165,
        size.height * 0.3999170,
        size.width * 0.4289585,
        size.height * 0.3510835);
    path_27.cubicTo(
        size.width * 0.3955000,
        size.height * 0.3022500,
        size.width * 0.3287500,
        size.height * 0.2897920,
        size.width * 0.2799165,
        size.height * 0.3232500);
    path_27.cubicTo(
        size.width * 0.2310835,
        size.height * 0.3567085,
        size.width * 0.2186250,
        size.height * 0.4234585,
        size.width * 0.2520835,
        size.height * 0.4722920);
    path_27.close();
    path_27.moveTo(size.width * 0.2899585, size.height * 0.3379170);
    path_27.cubicTo(
        size.width * 0.3307085,
        size.height * 0.3100000,
        size.width * 0.3863750,
        size.height * 0.3203750,
        size.width * 0.4142915,
        size.height * 0.3611250);
    path_27.cubicTo(
        size.width * 0.4422085,
        size.height * 0.4018750,
        size.width * 0.4318335,
        size.height * 0.4575420,
        size.width * 0.3910835,
        size.height * 0.4854585);
    path_27.cubicTo(
        size.width * 0.3503335,
        size.height * 0.5133750,
        size.width * 0.2946665,
        size.height * 0.5030000,
        size.width * 0.2667500,
        size.height * 0.4622500);
    path_27.cubicTo(
        size.width * 0.2388335,
        size.height * 0.4215000,
        size.width * 0.2492085,
        size.height * 0.3658335,
        size.width * 0.2899585,
        size.height * 0.3379170);
    path_27.close();

    Paint paint27Fill = Paint()..style = PaintingStyle.fill;
    paint27Fill.color = const Color(0xff9CABC4).withOpacity(1.0);
    canvas.drawPath(path_27, paint27Fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.2616250, size.height * 0.4657500);
    path_28.cubicTo(
        size.width * 0.2915000,
        size.height * 0.5093350,
        size.width * 0.3510000,
        size.height * 0.5204150,
        size.width * 0.3945835,
        size.height * 0.4905835);
    path_28.cubicTo(
        size.width * 0.4381665,
        size.height * 0.4607085,
        size.width * 0.4492500,
        size.height * 0.4012085,
        size.width * 0.4194165,
        size.height * 0.3576250);
    path_28.cubicTo(
        size.width * 0.3895415,
        size.height * 0.3140415,
        size.width * 0.3300415,
        size.height * 0.3029585,
        size.width * 0.2864585,
        size.height * 0.3327915);
    path_28.cubicTo(
        size.width * 0.2428750,
        size.height * 0.3626665,
        size.width * 0.2317915,
        size.height * 0.4221665,
        size.width * 0.2616250,
        size.height * 0.4657500);
    path_28.close();
    path_28.moveTo(size.width * 0.2899585, size.height * 0.3379165);
    path_28.cubicTo(
        size.width * 0.3307085,
        size.height * 0.3100000,
        size.width * 0.3863750,
        size.height * 0.3203750,
        size.width * 0.4142915,
        size.height * 0.3611250);
    path_28.cubicTo(
        size.width * 0.4422085,
        size.height * 0.4018750,
        size.width * 0.4318335,
        size.height * 0.4575415,
        size.width * 0.3910835,
        size.height * 0.4854585);
    path_28.cubicTo(
        size.width * 0.3503335,
        size.height * 0.5133750,
        size.width * 0.2946665,
        size.height * 0.5030000,
        size.width * 0.2667500,
        size.height * 0.4622500);
    path_28.cubicTo(
        size.width * 0.2388335,
        size.height * 0.4215000,
        size.width * 0.2492085,
        size.height * 0.3658335,
        size.width * 0.2899585,
        size.height * 0.3379165);
    path_28.close();

    Paint paint28Fill = Paint()..style = PaintingStyle.fill;
    paint28Fill.color = const Color(0xff808DA9).withOpacity(1.0);
    canvas.drawPath(path_28, paint28Fill);

    Paint paint29Fill = Paint()..style = PaintingStyle.fill;
    paint29Fill.color = const Color(0xff93BCE2).withOpacity(0.35);
    canvas.drawCircle(Offset(size.width * 0.3419500, size.height * 0.4119500),
        size.width * 0.09195000, paint29Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
