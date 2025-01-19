import 'package:flutter/rendering.dart';

//Add this CustomPaint widget to the Widget Tree
/*
CustomPaint(
size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
)
*/

//Copy this CustomPainter code to the Bottom of the File
class FrizoQuestMarksPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2811250, size.height * 0.3639580);
    path_0.cubicTo(
        size.width * 0.2811250,
        size.height * 0.3639580,
        size.width * 0.2311665,
        size.height * 0.4300830,
        size.width * 0.2294165,
        size.height * 0.4953750);
    path_0.cubicTo(
        size.width * 0.2294165,
        size.height * 0.4953750,
        size.width * 0.2426250,
        size.height * 0.4317915,
        size.width * 0.2811250,
        size.height * 0.3639580);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4380000, size.height * 0.4826250);
    path_1.cubicTo(
        size.width * 0.4439165,
        size.height * 0.4782500,
        size.width * 0.4511250,
        size.height * 0.4752500,
        size.width * 0.4582085,
        size.height * 0.4733750);
    path_1.cubicTo(
        size.width * 0.4748750,
        size.height * 0.4690000,
        size.width * 0.4915000,
        size.height * 0.4727080,
        size.width * 0.5054600,
        size.height * 0.4826250);
    path_1.cubicTo(
        size.width * 0.5079600,
        size.height * 0.4843750,
        size.width * 0.5103750,
        size.height * 0.4802500,
        size.width * 0.5078750,
        size.height * 0.4785000);
    path_1.cubicTo(
        size.width * 0.4933750,
        size.height * 0.4682080,
        size.width * 0.4759165,
        size.height * 0.4643750,
        size.width * 0.4585415,
        size.height * 0.4684165);
    path_1.cubicTo(
        size.width * 0.4505415,
        size.height * 0.4702500,
        size.width * 0.4421665,
        size.height * 0.4735830,
        size.width * 0.4355415,
        size.height * 0.4785000);
    path_1.cubicTo(
        size.width * 0.4331250,
        size.height * 0.4803330,
        size.width * 0.4354585,
        size.height * 0.4844580,
        size.width * 0.4379585,
        size.height * 0.4826250);
    path_1.lineTo(size.width * 0.4380000, size.height * 0.4826250);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4653750, size.height * 0.2227085);
    path_2.cubicTo(
        size.width * 0.4653750,
        size.height * 0.2227085,
        size.width * 0.4854585,
        size.height * 0.2148335,
        size.width * 0.4845415,
        size.height * 0.2605835);
    path_2.cubicTo(
        size.width * 0.4845415,
        size.height * 0.2605835,
        size.width * 0.4947080,
        size.height * 0.2255415,
        size.width * 0.5130850,
        size.height * 0.2292500);
    path_2.cubicTo(
        size.width * 0.5314600,
        size.height * 0.2330000,
        size.width * 0.4998750,
        size.height * 0.2710415,
        size.width * 0.4998750,
        size.height * 0.2710415);
    path_2.cubicTo(
        size.width * 0.4998750,
        size.height * 0.2710415,
        size.width * 0.5333750,
        size.height * 0.2415415,
        size.width * 0.5465000,
        size.height * 0.2571250);
    path_2.cubicTo(
        size.width * 0.5596250,
        size.height * 0.2727085,
        size.width * 0.5094150,
        size.height * 0.2856665,
        size.width * 0.5094150,
        size.height * 0.2856665);
    path_2.cubicTo(
        size.width * 0.5094150,
        size.height * 0.2856665,
        size.width * 0.6335400,
        size.height * 0.2515835,
        size.width * 0.6906250,
        size.height * 0.3497085);
    path_2.cubicTo(
        size.width * 0.6906250,
        size.height * 0.3497085,
        size.width * 0.6246650,
        size.height * 0.2651250,
        size.width * 0.5030400,
        size.height * 0.2943750);
    path_2.cubicTo(
        size.width * 0.5030400,
        size.height * 0.2943750,
        size.width * 0.4917085,
        size.height * 0.2880835,
        size.width * 0.5079150,
        size.height * 0.2822085);
    path_2.cubicTo(
        size.width * 0.5241250,
        size.height * 0.2762915,
        size.width * 0.5437500,
        size.height * 0.2668750,
        size.width * 0.5409600,
        size.height * 0.2601250);
    path_2.cubicTo(
        size.width * 0.5381650,
        size.height * 0.2533335,
        size.width * 0.4937915,
        size.height * 0.2791250,
        size.width * 0.4937915,
        size.height * 0.2791250);
    path_2.cubicTo(
        size.width * 0.4937915,
        size.height * 0.2791250,
        size.width * 0.5141650,
        size.height * 0.2424165,
        size.width * 0.5057900,
        size.height * 0.2380415);
    path_2.cubicTo(
        size.width * 0.4974585,
        size.height * 0.2336665,
        size.width * 0.4819165,
        size.height * 0.2744165,
        size.width * 0.4819165,
        size.height * 0.2744165);
    path_2.cubicTo(
        size.width * 0.4819165,
        size.height * 0.2744165,
        size.width * 0.4855000,
        size.height * 0.2281250,
        size.width * 0.4653335,
        size.height * 0.2227915);
    path_2.lineTo(size.width * 0.4653750, size.height * 0.2227085);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2961250, size.height * 0.3250415);
    path_3.cubicTo(
        size.width * 0.2961250,
        size.height * 0.3250415,
        size.width * 0.3455000,
        size.height * 0.2482080,
        size.width * 0.4615830,
        size.height * 0.2856250);
    path_3.cubicTo(
        size.width * 0.4615830,
        size.height * 0.2856250,
        size.width * 0.3617500,
        size.height * 0.2690415,
        size.width * 0.2961250,
        size.height * 0.3250415);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.2432085, size.height * 0.6384600);
    path_4.cubicTo(
        size.width * 0.2432085,
        size.height * 0.6384600,
        size.width * 0.1539585,
        size.height * 0.6487900,
        size.width * 0.1487085,
        size.height * 0.5830000);
    path_4.cubicTo(
        size.width * 0.1440835,
        size.height * 0.5251250,
        size.width * 0.1442500,
        size.height * 0.5220850,
        size.width * 0.1412500,
        size.height * 0.5118350);
    path_4.cubicTo(
        size.width * 0.1387500,
        size.height * 0.5032100,
        size.width * 0.1352915,
        size.height * 0.4948330,
        size.width * 0.1323335,
        size.height * 0.4888330);
    path_4.lineTo(size.width * 0.1252085, size.height * 0.4774165);
    path_4.cubicTo(
        size.width * 0.1252085,
        size.height * 0.4774165,
        size.width * 0.1005000,
        size.height * 0.4780415,
        size.width * 0.09262500,
        size.height * 0.4715830);
    path_4.cubicTo(
        size.width * 0.08216650,
        size.height * 0.4630830,
        size.width * 0.1224165,
        size.height * 0.4683330,
        size.width * 0.1224165,
        size.height * 0.4683330);
    path_4.cubicTo(
        size.width * 0.1224165,
        size.height * 0.4683330,
        size.width * 0.09554150,
        size.height * 0.4610415,
        size.width * 0.09933350,
        size.height * 0.4543330);
    path_4.cubicTo(
        size.width * 0.1031250,
        size.height * 0.4476245,
        size.width * 0.1341250,
        size.height * 0.4615830,
        size.width * 0.1341250,
        size.height * 0.4615830);
    path_4.cubicTo(
        size.width * 0.1341250,
        size.height * 0.4615830,
        size.width * 0.1165835,
        size.height * 0.4498745,
        size.width * 0.1195000,
        size.height * 0.4476665);
    path_4.cubicTo(
        size.width * 0.1241665,
        size.height * 0.4440830,
        size.width * 0.1525000,
        size.height * 0.4613330,
        size.width * 0.1525000,
        size.height * 0.4613330);
    path_4.cubicTo(
        size.width * 0.1525000,
        size.height * 0.4613330,
        size.width * 0.1668335,
        size.height * 0.4444995,
        size.width * 0.1677085,
        size.height * 0.4573745);
    path_4.cubicTo(
        size.width * 0.1685835,
        size.height * 0.4702495,
        size.width * 0.1597085,
        size.height * 0.4744580,
        size.width * 0.1597085,
        size.height * 0.4744580);
    path_4.cubicTo(
        size.width * 0.1591665,
        size.height * 0.4751665,
        size.width * 0.1731250,
        size.height * 0.4814995,
        size.width * 0.1814585,
        size.height * 0.5514600);
    path_4.cubicTo(
        size.width * 0.1894585,
        size.height * 0.6187100,
        size.width * 0.2432500,
        size.height * 0.5891650,
        size.width * 0.2432500,
        size.height * 0.5891650);
    path_4.lineTo(size.width * 0.2432500, size.height * 0.6384600);
    path_4.lineTo(size.width * 0.2432085, size.height * 0.6384600);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.6982900, size.height * 0.6349600);
    path_5.cubicTo(
        size.width * 0.6982900,
        size.height * 0.6349600,
        size.width * 0.7875400,
        size.height * 0.6452900,
        size.width * 0.7927900,
        size.height * 0.5795000);
    path_5.cubicTo(
        size.width * 0.7974150,
        size.height * 0.5216250,
        size.width * 0.7972500,
        size.height * 0.5185850,
        size.width * 0.8002500,
        size.height * 0.5083350);
    path_5.cubicTo(
        size.width * 0.8027500,
        size.height * 0.4997085,
        size.width * 0.8062100,
        size.height * 0.4913335,
        size.width * 0.8091650,
        size.height * 0.4853335);
    path_5.lineTo(size.width * 0.8162900, size.height * 0.4739165);
    path_5.cubicTo(
        size.width * 0.8162900,
        size.height * 0.4739165,
        size.width * 0.8410000,
        size.height * 0.4745415,
        size.width * 0.8488750,
        size.height * 0.4680835);
    path_5.cubicTo(
        size.width * 0.8593350,
        size.height * 0.4595835,
        size.width * 0.8190850,
        size.height * 0.4648335,
        size.width * 0.8190850,
        size.height * 0.4648335);
    path_5.cubicTo(
        size.width * 0.8190850,
        size.height * 0.4648335,
        size.width * 0.8459600,
        size.height * 0.4575415,
        size.width * 0.8421650,
        size.height * 0.4508335);
    path_5.cubicTo(
        size.width * 0.8383750,
        size.height * 0.4441250,
        size.width * 0.8073750,
        size.height * 0.4580835,
        size.width * 0.8073750,
        size.height * 0.4580835);
    path_5.cubicTo(
        size.width * 0.8073750,
        size.height * 0.4580835,
        size.width * 0.8249150,
        size.height * 0.4463750,
        size.width * 0.8220000,
        size.height * 0.4441665);
    path_5.cubicTo(
        size.width * 0.8173350,
        size.height * 0.4405835,
        size.width * 0.7890000,
        size.height * 0.4578335,
        size.width * 0.7890000,
        size.height * 0.4578335);
    path_5.cubicTo(
        size.width * 0.7890000,
        size.height * 0.4578335,
        size.width * 0.7746650,
        size.height * 0.4410000,
        size.width * 0.7737900,
        size.height * 0.4538750);
    path_5.cubicTo(
        size.width * 0.7729150,
        size.height * 0.4667085,
        size.width * 0.7817900,
        size.height * 0.4709585,
        size.width * 0.7817900,
        size.height * 0.4709585);
    path_5.cubicTo(
        size.width * 0.7823350,
        size.height * 0.4716665,
        size.width * 0.7683750,
        size.height * 0.4780000,
        size.width * 0.7600400,
        size.height * 0.5479600);
    path_5.cubicTo(
        size.width * 0.7520400,
        size.height * 0.6152100,
        size.width * 0.6982500,
        size.height * 0.5856650,
        size.width * 0.6982500,
        size.height * 0.5856650);
    path_5.lineTo(size.width * 0.6982500, size.height * 0.6349600);
    path_5.lineTo(size.width * 0.6982900, size.height * 0.6349600);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.4114165, size.height * 0.7485850);
    path_6.lineTo(size.width * 0.4545415, size.height * 0.9442100);
    path_6.cubicTo(
        size.width * 0.4545415,
        size.height * 0.9442100,
        size.width * 0.3828335,
        size.height * 0.9337500,
        size.width * 0.3842500,
        size.height * 0.9505000);
    path_6.cubicTo(
        size.width * 0.3856665,
        size.height * 0.9672100,
        size.width * 0.4775415,
        size.height * 0.9505000,
        size.width * 0.4775415,
        size.height * 0.9505000);
    path_6.lineTo(size.width * 0.4775415, size.height * 0.7437900);
    path_6.lineTo(size.width * 0.4114165, size.height * 0.7486650);
    path_6.lineTo(size.width * 0.4114165, size.height * 0.7485850);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.5757100, size.height * 0.7485850);
    path_7.lineTo(size.width * 0.5325850, size.height * 0.9442100);
    path_7.cubicTo(
        size.width * 0.5325850,
        size.height * 0.9442100,
        size.width * 0.6042900,
        size.height * 0.9337500,
        size.width * 0.6028750,
        size.height * 0.9505000);
    path_7.cubicTo(
        size.width * 0.6014600,
        size.height * 0.9672100,
        size.width * 0.5096250,
        size.height * 0.9505000,
        size.width * 0.5096250,
        size.height * 0.9505000);
    path_7.lineTo(size.width * 0.5096250, size.height * 0.7437900);
    path_7.lineTo(size.width * 0.5757500, size.height * 0.7486650);
    path_7.lineTo(size.width * 0.5757100, size.height * 0.7485850);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.3578750, size.height * 0.7417500);
    path_8.cubicTo(
        size.width * 0.3578750,
        size.height * 0.7417500,
        size.width * 0.3574165,
        size.height * 0.7450850,
        size.width * 0.3570415,
        size.height * 0.7504600);
    path_8.cubicTo(
        size.width * 0.3578335,
        size.height * 0.7454150,
        size.width * 0.3578750,
        size.height * 0.7417500,
        size.width * 0.3578750,
        size.height * 0.7417500);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.3000000, size.height * 0.3477915);
    path_9.cubicTo(
        size.width * 0.3015000,
        size.height * 0.3471250,
        size.width * 0.3025000,
        size.height * 0.3465835,
        size.width * 0.3025000,
        size.height * 0.3465835);
    path_9.cubicTo(
        size.width * 0.3016665,
        size.height * 0.3469585,
        size.width * 0.3008335,
        size.height * 0.3473335,
        size.width * 0.3000000,
        size.height * 0.3477915);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4407085, size.height * 0.7604150);
    path_10.cubicTo(
        size.width * 0.4412085,
        size.height * 0.7556250,
        size.width * 0.4413750,
        size.height * 0.7527100,
        size.width * 0.4413750,
        size.height * 0.7527100);
    path_10.cubicTo(
        size.width * 0.4413750,
        size.height * 0.7527100,
        size.width * 0.4407500,
        size.height * 0.7558350,
        size.width * 0.4407085,
        size.height * 0.7604150);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.6801650, size.height * 0.3677915);
    path_11.cubicTo(
        size.width * 0.6975850,
        size.height * 0.3671250,
        size.width * 0.6905850,
        size.height * 0.3497085,
        size.width * 0.6905850,
        size.height * 0.3497085);
    path_11.cubicTo(
        size.width * 0.6439600,
        size.height * 0.2585415,
        size.width * 0.5093750,
        size.height * 0.2856665,
        size.width * 0.5093750,
        size.height * 0.2856665);
    path_11.cubicTo(
        size.width * 0.5093750,
        size.height * 0.2856665,
        size.width * 0.5625000,
        size.height * 0.2710415,
        size.width * 0.5464600,
        size.height * 0.2571250);
    path_11.cubicTo(
        size.width * 0.5304600,
        size.height * 0.2432085,
        size.width * 0.4998335,
        size.height * 0.2710415,
        size.width * 0.4998335,
        size.height * 0.2710415);
    path_11.cubicTo(
        size.width * 0.4998335,
        size.height * 0.2710415,
        size.width * 0.5318750,
        size.height * 0.2320415,
        size.width * 0.5130400,
        size.height * 0.2292500);
    path_11.cubicTo(
        size.width * 0.4942085,
        size.height * 0.2264585,
        size.width * 0.4845000,
        size.height * 0.2605835,
        size.width * 0.4845000,
        size.height * 0.2605835);
    path_11.cubicTo(
        size.width * 0.4845000,
        size.height * 0.2605835,
        size.width * 0.4865835,
        size.height * 0.2223335,
        size.width * 0.4678335,
        size.height * 0.2223335);
    path_11.cubicTo(
        size.width * 0.4490835,
        size.height * 0.2223335,
        size.width * 0.4615415,
        size.height * 0.2857085,
        size.width * 0.4615415,
        size.height * 0.2857085);
    path_11.cubicTo(
        size.width * 0.3454585,
        size.height * 0.2503750,
        size.width * 0.2894585,
        size.height * 0.3272915,
        size.width * 0.2857915,
        size.height * 0.3424585);
    path_11.cubicTo(
        size.width * 0.2829585,
        size.height * 0.3542500,
        size.width * 0.2946665,
        size.height * 0.3501665,
        size.width * 0.3000000,
        size.height * 0.3478335);
    path_11.cubicTo(
        size.width * 0.3008335,
        size.height * 0.3474165,
        size.width * 0.3016665,
        size.height * 0.3470000,
        size.width * 0.3025000,
        size.height * 0.3466250);
    path_11.cubicTo(
        size.width * 0.3025000,
        size.height * 0.3466250,
        size.width * 0.3015000,
        size.height * 0.3471665,
        size.width * 0.3000000,
        size.height * 0.3478335);
    path_11.cubicTo(
        size.width * 0.2960000,
        size.height * 0.3498750,
        size.width * 0.2920835,
        size.height * 0.3527915,
        size.width * 0.2882500,
        size.height * 0.3564165);
    path_11.cubicTo(
        size.width * 0.3072915,
        size.height * 0.3532500,
        size.width * 0.3266665,
        size.height * 0.3432915,
        size.width * 0.3442500,
        size.height * 0.3372500);
    path_11.cubicTo(
        size.width * 0.3442500,
        size.height * 0.3393335,
        size.width * 0.3452915,
        size.height * 0.3414165,
        size.width * 0.3442500,
        size.height * 0.3424585);
    path_11.cubicTo(
        size.width * 0.3327500,
        size.height * 0.3581250,
        size.width * 0.3087500,
        size.height * 0.3716665,
        size.width * 0.3150415,
        size.height * 0.3884165);
    path_11.cubicTo(
        size.width * 0.3213335,
        size.height * 0.4061665,
        size.width * 0.3505415,
        size.height * 0.3957085,
        size.width * 0.3672500,
        size.height * 0.3873750);
    path_11.cubicTo(
        size.width * 0.3881250,
        size.height * 0.3758750,
        size.width * 0.4079585,
        size.height * 0.3623335,
        size.width * 0.4298750,
        size.height * 0.3539585);
    path_11.cubicTo(
        size.width * 0.4288335,
        size.height * 0.3727500,
        size.width * 0.4205000,
        size.height * 0.3894585,
        size.width * 0.4225835,
        size.height * 0.4082500);
    path_11.cubicTo(
        size.width * 0.4580830,
        size.height * 0.4165835,
        size.width * 0.4820835,
        size.height * 0.3821250,
        size.width * 0.4957085,
        size.height * 0.3550000);
    path_11.cubicTo(
        size.width * 0.5134600,
        size.height * 0.3643750,
        size.width * 0.5113750,
        size.height * 0.3905000,
        size.width * 0.5301650,
        size.height * 0.3967915);
    path_11.cubicTo(
        size.width * 0.5542100,
        size.height * 0.4040835,
        size.width * 0.5666650,
        size.height * 0.3800835,
        size.width * 0.5635850,
        size.height * 0.3581250);
    path_11.cubicTo(
        size.width * 0.5635850,
        size.height * 0.3560415,
        size.width * 0.5667100,
        size.height * 0.3570835,
        size.width * 0.5677500,
        size.height * 0.3570835);
    path_11.cubicTo(
        size.width * 0.5886250,
        size.height * 0.3706250,
        size.width * 0.6053750,
        size.height * 0.3957500,
        size.width * 0.6303750,
        size.height * 0.3852500);
    path_11.cubicTo(
        size.width * 0.6450000,
        size.height * 0.3789585,
        size.width * 0.6355850,
        size.height * 0.3570835,
        size.width * 0.6376650,
        size.height * 0.3424585);
    path_11.cubicTo(
        size.width * 0.6428750,
        size.height * 0.3435000,
        size.width * 0.6460000,
        size.height * 0.3476665,
        size.width * 0.6480850,
        size.height * 0.3507915);
    path_11.cubicTo(
        size.width * 0.6610400,
        size.height * 0.3697915,
        size.width * 0.6778750,
        size.height * 0.3866250,
        size.width * 0.6982100,
        size.height * 0.3915000);
    path_11.cubicTo(
        size.width * 0.6888350,
        size.height * 0.3720415,
        size.width * 0.6801650,
        size.height * 0.3678335,
        size.width * 0.6801650,
        size.height * 0.3678335);
    path_11.lineTo(size.width * 0.6801650, size.height * 0.3677500);
    path_11.lineTo(size.width * 0.6800850, size.height * 0.3676665);
    path_11.lineTo(size.width * 0.6801650, size.height * 0.3677915);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.7041650, size.height * 0.6319150);
    path_12.cubicTo(
        size.width * 0.7173750,
        size.height * 0.6333350,
        size.width * 0.7180850,
        size.height * 0.6148750,
        size.width * 0.7180850,
        size.height * 0.6148750);
    path_12.cubicTo(
        size.width * 0.7274600,
        size.height * 0.4827085,
        size.width * 0.7120850,
        size.height * 0.4202920,
        size.width * 0.6982100,
        size.height * 0.3914170);
    path_12.cubicTo(
        size.width * 0.6778750,
        size.height * 0.3865420,
        size.width * 0.6610850,
        size.height * 0.3697085,
        size.width * 0.6480850,
        size.height * 0.3507085);
    path_12.cubicTo(
        size.width * 0.6460000,
        size.height * 0.3475835,
        size.width * 0.6428750,
        size.height * 0.3434165,
        size.width * 0.6376650,
        size.height * 0.3423750);
    path_12.cubicTo(
        size.width * 0.6355850,
        size.height * 0.3570000,
        size.width * 0.6449600,
        size.height * 0.3788750,
        size.width * 0.6303750,
        size.height * 0.3851670);
    path_12.cubicTo(
        size.width * 0.6053350,
        size.height * 0.3955835,
        size.width * 0.5885850,
        size.height * 0.3705420,
        size.width * 0.5677500,
        size.height * 0.3570000);
    path_12.cubicTo(
        size.width * 0.5667100,
        size.height * 0.3570000,
        size.width * 0.5635850,
        size.height * 0.3559585,
        size.width * 0.5635850,
        size.height * 0.3580420);
    path_12.cubicTo(
        size.width * 0.5667100,
        size.height * 0.3799585,
        size.width * 0.5541650,
        size.height * 0.4040000,
        size.width * 0.5301650,
        size.height * 0.3967085);
    path_12.cubicTo(
        size.width * 0.5113750,
        size.height * 0.3904170,
        size.width * 0.5135000,
        size.height * 0.3643335,
        size.width * 0.4957085,
        size.height * 0.3549170);
    path_12.cubicTo(
        size.width * 0.4821665,
        size.height * 0.3820835,
        size.width * 0.4580835,
        size.height * 0.4165420,
        size.width * 0.4225835,
        size.height * 0.4081670);
    path_12.cubicTo(
        size.width * 0.4205000,
        size.height * 0.3893750,
        size.width * 0.4288750,
        size.height * 0.3726670,
        size.width * 0.4298750,
        size.height * 0.3538750);
    path_12.cubicTo(
        size.width * 0.4079585,
        size.height * 0.3622085,
        size.width * 0.3880835,
        size.height * 0.3757915,
        size.width * 0.3672500,
        size.height * 0.3872915);
    path_12.cubicTo(
        size.width * 0.3505415,
        size.height * 0.3956250,
        size.width * 0.3212915,
        size.height * 0.4060835,
        size.width * 0.3150415,
        size.height * 0.3883335);
    path_12.cubicTo(
        size.width * 0.3087500,
        size.height * 0.3716250,
        size.width * 0.3327915,
        size.height * 0.3580415,
        size.width * 0.3442500,
        size.height * 0.3423750);
    path_12.cubicTo(
        size.width * 0.3452915,
        size.height * 0.3413335,
        size.width * 0.3442500,
        size.height * 0.3392500,
        size.width * 0.3442500,
        size.height * 0.3371665);
    path_12.cubicTo(
        size.width * 0.3266250,
        size.height * 0.3432085,
        size.width * 0.3073335,
        size.height * 0.3531665,
        size.width * 0.2882500,
        size.height * 0.3563335);
    path_12.cubicTo(
        size.width * 0.2535415,
        size.height * 0.3887500,
        size.width * 0.2266250,
        size.height * 0.4760000,
        size.width * 0.2294165,
        size.height * 0.4953335);
    path_12.cubicTo(
        size.width * 0.2325415,
        size.height * 0.5172500,
        size.width * 0.2440415,
        size.height * 0.5146250,
        size.width * 0.2440415,
        size.height * 0.5146250);
    path_12.cubicTo(
        size.width * 0.2382500,
        size.height * 0.5574150,
        size.width * 0.2398750,
        size.height * 0.6270850,
        size.width * 0.2476250,
        size.height * 0.6752100);
    path_12.cubicTo(
        size.width * 0.2588335,
        size.height * 0.6675850,
        size.width * 0.2700415,
        size.height * 0.6593350,
        size.width * 0.2837085,
        size.height * 0.6576250);
    path_12.cubicTo(
        size.width * 0.2837085,
        size.height * 0.6742900,
        size.width * 0.2785000,
        size.height * 0.6983350,
        size.width * 0.2920415,
        size.height * 0.7056250);
    path_12.cubicTo(
        size.width * 0.3087500,
        size.height * 0.7139600,
        size.width * 0.3212500,
        size.height * 0.6878750,
        size.width * 0.3380000,
        size.height * 0.6805850);
    path_12.cubicTo(
        size.width * 0.3400835,
        size.height * 0.6795400,
        size.width * 0.3432085,
        size.height * 0.6805850,
        size.width * 0.3432085,
        size.height * 0.6816250);
    path_12.cubicTo(
        size.width * 0.3463335,
        size.height * 0.6972900,
        size.width * 0.3421665,
        size.height * 0.7171250,
        size.width * 0.3525835,
        size.height * 0.7255000);
    path_12.cubicTo(
        size.width * 0.3640835,
        size.height * 0.7338350,
        size.width * 0.3734585,
        size.height * 0.7108750,
        size.width * 0.3860000,
        size.height * 0.7025400);
    path_12.cubicTo(
        size.width * 0.3922915,
        size.height * 0.6983750,
        size.width * 0.3975000,
        size.height * 0.7035850,
        size.width * 0.3985415,
        size.height * 0.7098350);
    path_12.cubicTo(
        size.width * 0.4006250,
        size.height * 0.7244600,
        size.width * 0.4037500,
        size.height * 0.7495000,
        size.width * 0.4215000,
        size.height * 0.7401250);
    path_12.cubicTo(
        size.width * 0.4361250,
        size.height * 0.7307500,
        size.width * 0.4382085,
        size.height * 0.7098350,
        size.width * 0.4517915,
        size.height * 0.6994150);
    path_12.cubicTo(
        size.width * 0.4538750,
        size.height * 0.6973350,
        size.width * 0.4580835,
        size.height * 0.6973350,
        size.width * 0.4611665,
        size.height * 0.6994150);
    path_12.cubicTo(
        size.width * 0.4726665,
        size.height * 0.7098350,
        size.width * 0.4757915,
        size.height * 0.7244600,
        size.width * 0.4852085,
        size.height * 0.7359600);
    path_12.cubicTo(
        size.width * 0.4946250,
        size.height * 0.7463750,
        size.width * 0.5060850,
        size.height * 0.7380400,
        size.width * 0.5123750,
        size.height * 0.7286650);
    path_12.cubicTo(
        size.width * 0.5186650,
        size.height * 0.7171650,
        size.width * 0.5238750,
        size.height * 0.6900000,
        size.width * 0.5364150,
        size.height * 0.7025400);
    path_12.cubicTo(
        size.width * 0.5510400,
        size.height * 0.7150850,
        size.width * 0.5645850,
        size.height * 0.7443350,
        size.width * 0.5844150,
        size.height * 0.7349150);
    path_12.cubicTo(
        size.width * 0.5959150,
        size.height * 0.7297100,
        size.width * 0.5885850,
        size.height * 0.7098750,
        size.width * 0.5969600,
        size.height * 0.6972900);
    path_12.cubicTo(
        size.width * 0.5980000,
        size.height * 0.6962500,
        size.width * 0.6011250,
        size.height * 0.6962500,
        size.width * 0.6032500,
        size.height * 0.6983350);
    path_12.cubicTo(
        size.width * 0.6137100,
        size.height * 0.7129600,
        size.width * 0.6293750,
        size.height * 0.7317500,
        size.width * 0.6429150,
        size.height * 0.7223750);
    path_12.cubicTo(
        size.width * 0.6523350,
        size.height * 0.7160850,
        size.width * 0.6492100,
        size.height * 0.6973350,
        size.width * 0.6533350,
        size.height * 0.6847500);
    path_12.cubicTo(
        size.width * 0.6543750,
        size.height * 0.6826650,
        size.width * 0.6575000,
        size.height * 0.6795400,
        size.width * 0.6585400,
        size.height * 0.6805850);
    path_12.cubicTo(
        size.width * 0.6672900,
        size.height * 0.6912500,
        size.width * 0.6795000,
        size.height * 0.7034150,
        size.width * 0.6918750,
        size.height * 0.7075400);
    path_12.cubicTo(
        size.width * 0.7071250,
        size.height * 0.6705850,
        size.width * 0.7041250,
        size.height * 0.6318350,
        size.width * 0.7041250,
        size.height * 0.6318350);
    path_12.lineTo(size.width * 0.7042100, size.height * 0.6319600);
    path_12.lineTo(size.width * 0.7042100, size.height * 0.6320400);
    path_12.lineTo(size.width * 0.7041650, size.height * 0.6319150);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.6585850, size.height * 0.6806250);
    path_13.cubicTo(
        size.width * 0.6575400,
        size.height * 0.6795850,
        size.width * 0.6544150,
        size.height * 0.6827100,
        size.width * 0.6533750,
        size.height * 0.6847900);
    path_13.cubicTo(
        size.width * 0.6492100,
        size.height * 0.6973350,
        size.width * 0.6523350,
        size.height * 0.7161250,
        size.width * 0.6429600,
        size.height * 0.7224150);
    path_13.cubicTo(
        size.width * 0.6294150,
        size.height * 0.7318350,
        size.width * 0.6137500,
        size.height * 0.7130400,
        size.width * 0.6032900,
        size.height * 0.6984150);
    path_13.cubicTo(
        size.width * 0.6012100,
        size.height * 0.6963350,
        size.width * 0.5980850,
        size.height * 0.6963350,
        size.width * 0.5970000,
        size.height * 0.6973750);
    path_13.cubicTo(
        size.width * 0.5886650,
        size.height * 0.7099150,
        size.width * 0.5959600,
        size.height * 0.7297500,
        size.width * 0.5844600,
        size.height * 0.7350000);
    path_13.cubicTo(
        size.width * 0.5646250,
        size.height * 0.7443750,
        size.width * 0.5510400,
        size.height * 0.7151650,
        size.width * 0.5364600,
        size.height * 0.7026250);
    path_13.cubicTo(
        size.width * 0.5239150,
        size.height * 0.6900850,
        size.width * 0.5187100,
        size.height * 0.7172500,
        size.width * 0.5124150,
        size.height * 0.7287500);
    path_13.cubicTo(
        size.width * 0.5061250,
        size.height * 0.7381650,
        size.width * 0.4946665,
        size.height * 0.7465000,
        size.width * 0.4852500,
        size.height * 0.7360400);
    path_13.cubicTo(
        size.width * 0.4758750,
        size.height * 0.7245400,
        size.width * 0.4727085,
        size.height * 0.7099150,
        size.width * 0.4612085,
        size.height * 0.6995000);
    path_13.cubicTo(
        size.width * 0.4580415,
        size.height * 0.6974150,
        size.width * 0.4539165,
        size.height * 0.6974150,
        size.width * 0.4517915,
        size.height * 0.6995000);
    path_13.cubicTo(
        size.width * 0.4382500,
        size.height * 0.7099150,
        size.width * 0.4361250,
        size.height * 0.7308350,
        size.width * 0.4215000,
        size.height * 0.7402100);
    path_13.cubicTo(
        size.width * 0.4037500,
        size.height * 0.7496250,
        size.width * 0.4006250,
        size.height * 0.7245400,
        size.width * 0.3985415,
        size.height * 0.7099150);
    path_13.cubicTo(
        size.width * 0.3975000,
        size.height * 0.7036250,
        size.width * 0.3922500,
        size.height * 0.6984150,
        size.width * 0.3860000,
        size.height * 0.7026250);
    path_13.cubicTo(
        size.width * 0.3734585,
        size.height * 0.7109600,
        size.width * 0.3640835,
        size.height * 0.7339600,
        size.width * 0.3525835,
        size.height * 0.7255850);
    path_13.cubicTo(
        size.width * 0.3421665,
        size.height * 0.7172500,
        size.width * 0.3462915,
        size.height * 0.6974150,
        size.width * 0.3432085,
        size.height * 0.6817100);
    path_13.cubicTo(
        size.width * 0.3432085,
        size.height * 0.6806650,
        size.width * 0.3400835,
        size.height * 0.6796250,
        size.width * 0.3380000,
        size.height * 0.6806650);
    path_13.cubicTo(
        size.width * 0.3212915,
        size.height * 0.6879600,
        size.width * 0.3087915,
        size.height * 0.7140850,
        size.width * 0.2920415,
        size.height * 0.7057100);
    path_13.cubicTo(
        size.width * 0.2785000,
        size.height * 0.6984150,
        size.width * 0.2837085,
        size.height * 0.6743750,
        size.width * 0.2837085,
        size.height * 0.6577100);
    path_13.cubicTo(
        size.width * 0.2700415,
        size.height * 0.6594150,
        size.width * 0.2588750,
        size.height * 0.6676250,
        size.width * 0.2476250,
        size.height * 0.6752900);
    path_13.cubicTo(
        size.width * 0.2503750,
        size.height * 0.6923350,
        size.width * 0.2538750,
        size.height * 0.7066650,
        size.width * 0.2580835,
        size.height * 0.7162100);
    path_13.cubicTo(
        size.width * 0.2742915,
        size.height * 0.7527500,
        size.width * 0.3050835,
        size.height * 0.7167100,
        size.width * 0.3050835,
        size.height * 0.7167100);
    path_13.cubicTo(
        size.width * 0.3050835,
        size.height * 0.7167100,
        size.width * 0.3040415,
        size.height * 0.7762100,
        size.width * 0.3306665,
        size.height * 0.7793350);
    path_13.cubicTo(
        size.width * 0.3492915,
        size.height * 0.7815400,
        size.width * 0.3551250,
        size.height * 0.7622100,
        size.width * 0.3570000,
        size.height * 0.7504150);
    path_13.cubicTo(
        size.width * 0.3573750,
        size.height * 0.7450400,
        size.width * 0.3578335,
        size.height * 0.7417100,
        size.width * 0.3578335,
        size.height * 0.7417100);
    path_13.cubicTo(
        size.width * 0.3578335,
        size.height * 0.7417100,
        size.width * 0.3577500,
        size.height * 0.7453750,
        size.width * 0.3570000,
        size.height * 0.7504150);
    path_13.cubicTo(
        size.width * 0.3555415,
        size.height * 0.7719150,
        size.width * 0.3554165,
        size.height * 0.8261650,
        size.width * 0.3917500,
        size.height * 0.8320400);
    path_13.cubicTo(
        size.width * 0.4287915,
        size.height * 0.8380000,
        size.width * 0.4383750,
        size.height * 0.7814600,
        size.width * 0.4407085,
        size.height * 0.7604150);
    path_13.cubicTo(
        size.width * 0.4407915,
        size.height * 0.7558350,
        size.width * 0.4413750,
        size.height * 0.7527100,
        size.width * 0.4413750,
        size.height * 0.7527100);
    path_13.cubicTo(
        size.width * 0.4413750,
        size.height * 0.7527100,
        size.width * 0.4412500,
        size.height * 0.7556650,
        size.width * 0.4407085,
        size.height * 0.7604150);
    path_13.cubicTo(
        size.width * 0.4406250,
        size.height * 0.7711650,
        size.width * 0.4435415,
        size.height * 0.7900000,
        size.width * 0.4643335,
        size.height * 0.7965400);
    path_13.cubicTo(
        size.width * 0.4940835,
        size.height * 0.8059150,
        size.width * 0.5045400,
        size.height * 0.7693750,
        size.width * 0.5045400,
        size.height * 0.7693750);
    path_13.cubicTo(
        size.width * 0.5087100,
        size.height * 0.7813750,
        size.width * 0.5238350,
        size.height * 0.7657500,
        size.width * 0.5238350,
        size.height * 0.7657500);
    path_13.cubicTo(
        size.width * 0.5280000,
        size.height * 0.7887100,
        size.width * 0.5441650,
        size.height * 0.7704600,
        size.width * 0.5441650,
        size.height * 0.7704600);
    path_13.cubicTo(
        size.width * 0.5467900,
        size.height * 0.7887100,
        size.width * 0.5587900,
        size.height * 0.7767500,
        size.width * 0.5587900,
        size.height * 0.7767500);
    path_13.cubicTo(
        size.width * 0.5572100,
        size.height * 0.7929600,
        size.width * 0.5640000,
        size.height * 0.7950000,
        size.width * 0.5640000,
        size.height * 0.7950000);
    path_13.cubicTo(
        size.width * 0.5763750,
        size.height * 0.7972500,
        size.width * 0.5820400,
        size.height * 0.7912500,
        size.width * 0.5845850,
        size.height * 0.7843750);
    path_13.cubicTo(
        size.width * 0.5848750,
        size.height * 0.7751250,
        size.width * 0.5864150,
        size.height * 0.7678750,
        size.width * 0.5864150,
        size.height * 0.7678750);
    path_13.cubicTo(
        size.width * 0.5864150,
        size.height * 0.7678750,
        size.width * 0.5874150,
        size.height * 0.7767100,
        size.width * 0.5845850,
        size.height * 0.7843750);
    path_13.cubicTo(
        size.width * 0.5840850,
        size.height * 0.7995000,
        size.width * 0.5870000,
        size.height * 0.8200000,
        size.width * 0.6055400,
        size.height * 0.8230400);
    path_13.cubicTo(
        size.width * 0.6354600,
        size.height * 0.8279150,
        size.width * 0.6361650,
        size.height * 0.7652900,
        size.width * 0.6361650,
        size.height * 0.7652900);
    path_13.cubicTo(
        size.width * 0.6654600,
        size.height * 0.7535000,
        size.width * 0.6822100,
        size.height * 0.7309150,
        size.width * 0.6917500,
        size.height * 0.7077500);
    path_13.cubicTo(
        size.width * 0.6793750,
        size.height * 0.7035850,
        size.width * 0.6671650,
        size.height * 0.6914150,
        size.width * 0.6584150,
        size.height * 0.6807900);
    path_13.lineTo(size.width * 0.6584150, size.height * 0.6807100);
    path_13.lineTo(size.width * 0.6585000, size.height * 0.6806250);
    path_13.lineTo(size.width * 0.6585850, size.height * 0.6806250);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.5865000, size.height * 0.7678750);
    path_14.cubicTo(
        size.width * 0.5865000,
        size.height * 0.7678750,
        size.width * 0.5849600,
        size.height * 0.7751650,
        size.width * 0.5846650,
        size.height * 0.7843750);
    path_14.cubicTo(
        size.width * 0.5875000,
        size.height * 0.7766650,
        size.width * 0.5865000,
        size.height * 0.7678750,
        size.width * 0.5865000,
        size.height * 0.7678750);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.3992500, size.height * 0.5073750);
    path_15.cubicTo(
        size.width * 0.3925415,
        size.height * 0.5160850,
        size.width * 0.3851665,
        size.height * 0.5267900,
        size.width * 0.3835415,
        size.height * 0.5378750);
    path_15.cubicTo(
        size.width * 0.3825000,
        size.height * 0.5446250,
        size.width * 0.3855415,
        size.height * 0.5499150,
        size.width * 0.3923335,
        size.height * 0.5515850);
    path_15.cubicTo(
        size.width * 0.4006665,
        size.height * 0.5536250,
        size.width * 0.4085835,
        size.height * 0.5498750,
        size.width * 0.4135835,
        size.height * 0.5431250);
    path_15.cubicTo(
        size.width * 0.4167915,
        size.height * 0.5387500,
        size.width * 0.4191250,
        size.height * 0.5334600,
        size.width * 0.4202915,
        size.height * 0.5280850);
    path_15.cubicTo(
        size.width * 0.4211665,
        size.height * 0.5242100,
        size.width * 0.4131250,
        size.height * 0.5259600,
        size.width * 0.4121250,
        size.height * 0.5288350);
    path_15.cubicTo(
        size.width * 0.4105000,
        size.height * 0.5334600,
        size.width * 0.4092085,
        size.height * 0.5382500,
        size.width * 0.4081250,
        size.height * 0.5430000);
    path_15.cubicTo(
        size.width * 0.4063750,
        size.height * 0.5507100,
        size.width * 0.4046665,
        size.height * 0.5592500,
        size.width * 0.4062500,
        size.height * 0.5671250);
    path_15.cubicTo(
        size.width * 0.4078750,
        size.height * 0.5749600,
        size.width * 0.4145000,
        size.height * 0.5778750,
        size.width * 0.4220835,
        size.height * 0.5762100);
    path_15.cubicTo(
        size.width * 0.4326250,
        size.height * 0.5739150,
        size.width * 0.4405415,
        size.height * 0.5663750,
        size.width * 0.4440415,
        size.height * 0.5563350);
    path_15.cubicTo(
        size.width * 0.4462500,
        size.height * 0.5500400,
        size.width * 0.4470415,
        size.height * 0.5430850,
        size.width * 0.4464165,
        size.height * 0.5364150);
    path_15.cubicTo(
        size.width * 0.4461250,
        size.height * 0.5332500,
        size.width * 0.4392915,
        size.height * 0.5350850,
        size.width * 0.4385415,
        size.height * 0.5371650);
    path_15.cubicTo(
        size.width * 0.4369585,
        size.height * 0.5415400,
        size.width * 0.4357500,
        size.height * 0.5460400,
        size.width * 0.4350000,
        size.height * 0.5506650);
    path_15.cubicTo(
        size.width * 0.4338750,
        size.height * 0.5573750,
        size.width * 0.4332085,
        size.height * 0.5659600,
        size.width * 0.4376665,
        size.height * 0.5716250);
    path_15.cubicTo(
        size.width * 0.4432085,
        size.height * 0.5787900,
        size.width * 0.4548750,
        size.height * 0.5775400,
        size.width * 0.4621665,
        size.height * 0.5741650);
    path_15.cubicTo(
        size.width * 0.4703335,
        size.height * 0.5704150,
        size.width * 0.4751250,
        size.height * 0.5627100,
        size.width * 0.4773335,
        size.height * 0.5542500);
    path_15.cubicTo(
        size.width * 0.4787500,
        size.height * 0.5488750,
        size.width * 0.4792085,
        size.height * 0.5430400,
        size.width * 0.4787915,
        size.height * 0.5374600);
    path_15.cubicTo(
        size.width * 0.4785415,
        size.height * 0.5341650,
        size.width * 0.4704165,
        size.height * 0.5360000,
        size.width * 0.4706665,
        size.height * 0.5396650);
    path_15.cubicTo(
        size.width * 0.4715000,
        size.height * 0.5508750,
        size.width * 0.4752915,
        size.height * 0.5660400,
        size.width * 0.4858750,
        size.height * 0.5719600);
    path_15.cubicTo(
        size.width * 0.4922085,
        size.height * 0.5755000,
        size.width * 0.5009150,
        size.height * 0.5752900,
        size.width * 0.5054600,
        size.height * 0.5690850);
    path_15.cubicTo(
        size.width * 0.5093350,
        size.height * 0.5637500,
        size.width * 0.5092900,
        size.height * 0.5562100,
        size.width * 0.5090000,
        size.height * 0.5499150);
    path_15.cubicTo(
        size.width * 0.5087500,
        size.height * 0.5448750,
        size.width * 0.5081650,
        size.height * 0.5397900,
        size.width * 0.5071250,
        size.height * 0.5348750);
    path_15.cubicTo(
        size.width * 0.5064150,
        size.height * 0.5314600,
        size.width * 0.4983335,
        size.height * 0.5335400,
        size.width * 0.4990000,
        size.height * 0.5370850);
    path_15.cubicTo(
        size.width * 0.5010850,
        size.height * 0.5478350,
        size.width * 0.5055000,
        size.height * 0.5608350,
        size.width * 0.5143350,
        size.height * 0.5678350);
    path_15.cubicTo(
        size.width * 0.5198750,
        size.height * 0.5722100,
        size.width * 0.5284600,
        size.height * 0.5732900,
        size.width * 0.5340850,
        size.height * 0.5685000);
    path_15.cubicTo(
        size.width * 0.5390400,
        size.height * 0.5643350,
        size.width * 0.5391650,
        size.height * 0.5571650,
        size.width * 0.5387500,
        size.height * 0.5512500);
    path_15.cubicTo(
        size.width * 0.5384150,
        size.height * 0.5462900,
        size.width * 0.5375000,
        size.height * 0.5412100,
        size.width * 0.5361250,
        size.height * 0.5364150);
    path_15.lineTo(size.width * 0.5283350, size.height * 0.5392500);
    path_15.cubicTo(
        size.width * 0.5305400,
        size.height * 0.5428350,
        size.width * 0.5331250,
        size.height * 0.5464150,
        size.width * 0.5362100,
        size.height * 0.5492900);
    path_15.cubicTo(
        size.width * 0.5396250,
        size.height * 0.5524150,
        size.width * 0.5468350,
        size.height * 0.5552500,
        size.width * 0.5497500,
        size.height * 0.5497900);
    path_15.cubicTo(
        size.width * 0.5517100,
        size.height * 0.5462100,
        size.width * 0.5485850,
        size.height * 0.5407100,
        size.width * 0.5470850,
        size.height * 0.5375000);
    path_15.cubicTo(
        size.width * 0.5455850,
        size.height * 0.5342900,
        size.width * 0.5438750,
        size.height * 0.5310850,
        size.width * 0.5420400,
        size.height * 0.5280000);
    path_15.cubicTo(
        size.width * 0.5405850,
        size.height * 0.5255000,
        size.width * 0.5330850,
        size.height * 0.5277500,
        size.width * 0.5342500,
        size.height * 0.5308350);
    path_15.cubicTo(
        size.width * 0.5377500,
        size.height * 0.5398350,
        size.width * 0.5448350,
        size.height * 0.5507500,
        size.width * 0.5554150,
        size.height * 0.5513350);
    path_15.cubicTo(
        size.width * 0.5604600,
        size.height * 0.5516250,
        size.width * 0.5666250,
        size.height * 0.5493750,
        size.width * 0.5667900,
        size.height * 0.5435400);
    path_15.cubicTo(
        size.width * 0.5669600,
        size.height * 0.5384150,
        size.width * 0.5639150,
        size.height * 0.5332900,
        size.width * 0.5614150,
        size.height * 0.5290400);
    path_15.cubicTo(
        size.width * 0.5593750,
        size.height * 0.5254600,
        size.width * 0.5570400,
        size.height * 0.5219150,
        size.width * 0.5545000,
        size.height * 0.5186250);
    path_15.cubicTo(
        size.width * 0.5524600,
        size.height * 0.5159600,
        size.width * 0.5446650,
        size.height * 0.5190000,
        size.width * 0.5470000,
        size.height * 0.5220400);
    path_15.cubicTo(
        size.width * 0.5519600,
        size.height * 0.5285850,
        size.width * 0.5581650,
        size.height * 0.5368750,
        size.width * 0.5584600,
        size.height * 0.5453350);
    path_15.cubicTo(
        size.width * 0.5584600,
        size.height * 0.5458350,
        size.width * 0.5579150,
        size.height * 0.5465400,
        size.width * 0.5586250,
        size.height * 0.5459150);
    path_15.cubicTo(
        size.width * 0.5591650,
        size.height * 0.5454150,
        size.width * 0.5585400,
        size.height * 0.5460000,
        size.width * 0.5579150,
        size.height * 0.5459150);
    path_15.cubicTo(
        size.width * 0.5572500,
        size.height * 0.5458350,
        size.width * 0.5567900,
        size.height * 0.5457900,
        size.width * 0.5561650,
        size.height * 0.5455850);
    path_15.cubicTo(
        size.width * 0.5531250,
        size.height * 0.5446250,
        size.width * 0.5506650,
        size.height * 0.5421250,
        size.width * 0.5487100,
        size.height * 0.5397100);
    path_15.cubicTo(
        size.width * 0.5460400,
        size.height * 0.5364150,
        size.width * 0.5437900,
        size.height * 0.5325850,
        size.width * 0.5422500,
        size.height * 0.5286650);
    path_15.lineTo(size.width * 0.5344600, size.height * 0.5315000);
    path_15.cubicTo(
        size.width * 0.5372900,
        size.height * 0.5363350,
        size.width * 0.5412100,
        size.height * 0.5422900,
        size.width * 0.5419150,
        size.height * 0.5479600);
    path_15.cubicTo(
        size.width * 0.5419150,
        size.height * 0.5480400,
        size.width * 0.5420000,
        size.height * 0.5494150,
        size.width * 0.5419150,
        size.height * 0.5494150);
    path_15.cubicTo(
        size.width * 0.5414150,
        size.height * 0.5489600,
        size.width * 0.5460850,
        size.height * 0.5485400,
        size.width * 0.5452100,
        size.height * 0.5472100);
    path_15.cubicTo(
        size.width * 0.5448350,
        size.height * 0.5466250,
        size.width * 0.5435850,
        size.height * 0.5460400,
        size.width * 0.5430400,
        size.height * 0.5455000);
    path_15.cubicTo(
        size.width * 0.5422500,
        size.height * 0.5447900,
        size.width * 0.5415850,
        size.height * 0.5439600,
        size.width * 0.5408350,
        size.height * 0.5431250);
    path_15.cubicTo(
        size.width * 0.5389150,
        size.height * 0.5408750,
        size.width * 0.5371650,
        size.height * 0.5384600,
        size.width * 0.5355850,
        size.height * 0.5359150);
    path_15.cubicTo(
        size.width * 0.5340000,
        size.height * 0.5333750,
        size.width * 0.5268750,
        size.height * 0.5355400,
        size.width * 0.5277900,
        size.height * 0.5387500);
    path_15.cubicTo(
        size.width * 0.5299150,
        size.height * 0.5461250,
        size.width * 0.5323750,
        size.height * 0.5563750,
        size.width * 0.5292900,
        size.height * 0.5637500);
    path_15.cubicTo(
        size.width * 0.5285850,
        size.height * 0.5655000,
        size.width * 0.5278350,
        size.height * 0.5663750,
        size.width * 0.5266250,
        size.height * 0.5662900);
    path_15.cubicTo(
        size.width * 0.5240000,
        size.height * 0.5661250,
        size.width * 0.5216650,
        size.height * 0.5647100,
        size.width * 0.5197500,
        size.height * 0.5630000);
    path_15.cubicTo(
        size.width * 0.5150850,
        size.height * 0.5587500,
        size.width * 0.5122900,
        size.height * 0.5525850,
        size.width * 0.5101650,
        size.height * 0.5467500);
    path_15.cubicTo(
        size.width * 0.5087900,
        size.height * 0.5429600,
        size.width * 0.5075850,
        size.height * 0.5390400,
        size.width * 0.5068350,
        size.height * 0.5350400);
    path_15.lineTo(size.width * 0.4987085, size.height * 0.5372500);
    path_15.cubicTo(
        size.width * 0.5005400,
        size.height * 0.5457500,
        size.width * 0.5019150,
        size.height * 0.5557500,
        size.width * 0.4995835,
        size.height * 0.5642500);
    path_15.cubicTo(
        size.width * 0.4990835,
        size.height * 0.5660000,
        size.width * 0.4980000,
        size.height * 0.5683750,
        size.width * 0.4967915,
        size.height * 0.5690400);
    path_15.cubicTo(
        size.width * 0.4963750,
        size.height * 0.5690400,
        size.width * 0.4974585,
        size.height * 0.5686650,
        size.width * 0.4967915,
        size.height * 0.5690400);
    path_15.cubicTo(
        size.width * 0.4963335,
        size.height * 0.5690400,
        size.width * 0.4959165,
        size.height * 0.5690400,
        size.width * 0.4955000,
        size.height * 0.5689600);
    path_15.cubicTo(
        size.width * 0.4939165,
        size.height * 0.5687100,
        size.width * 0.4924165,
        size.height * 0.5680850,
        size.width * 0.4910835,
        size.height * 0.5672100);
    path_15.cubicTo(
        size.width * 0.4855835,
        size.height * 0.5637100,
        size.width * 0.4827915,
        size.height * 0.5569150,
        size.width * 0.4810000,
        size.height * 0.5509150);
    path_15.cubicTo(
        size.width * 0.4797500,
        size.height * 0.5466250,
        size.width * 0.4787915,
        size.height * 0.5421250,
        size.width * 0.4785000,
        size.height * 0.5376250);
    path_15.lineTo(size.width * 0.4703750, size.height * 0.5398350);
    path_15.cubicTo(
        size.width * 0.4704585,
        size.height * 0.5405000,
        size.width * 0.4703750,
        size.height * 0.5397500,
        size.width * 0.4703750,
        size.height * 0.5400850);
    path_15.cubicTo(
        size.width * 0.4702915,
        size.height * 0.5409600,
        size.width * 0.4703750,
        size.height * 0.5418350,
        size.width * 0.4703750,
        size.height * 0.5427100);
    path_15.cubicTo(
        size.width * 0.4703750,
        size.height * 0.5453750,
        size.width * 0.4701250,
        size.height * 0.5480850,
        size.width * 0.4697085,
        size.height * 0.5507100);
    path_15.cubicTo(
        size.width * 0.4687085,
        size.height * 0.5570400,
        size.width * 0.4665415,
        size.height * 0.5640400,
        size.width * 0.4613750,
        size.height * 0.5682500);
    path_15.cubicTo(
        size.width * 0.4568750,
        size.height * 0.5719150,
        size.width * 0.4485000,
        size.height * 0.5735000,
        size.width * 0.4446250,
        size.height * 0.5682500);
    path_15.cubicTo(
        size.width * 0.4410835,
        size.height * 0.5634600,
        size.width * 0.4418750,
        size.height * 0.5561650,
        size.width * 0.4427500,
        size.height * 0.5506650);
    path_15.cubicTo(
        size.width * 0.4432500,
        size.height * 0.5476650,
        size.width * 0.4439165,
        size.height * 0.5446650,
        size.width * 0.4447915,
        size.height * 0.5417100);
    path_15.cubicTo(
        size.width * 0.4450835,
        size.height * 0.5407100,
        size.width * 0.4453750,
        size.height * 0.5397100,
        size.width * 0.4456665,
        size.height * 0.5387100);
    path_15.cubicTo(
        size.width * 0.4457500,
        size.height * 0.5384150,
        size.width * 0.4459585,
        size.height * 0.5380850,
        size.width * 0.4459585,
        size.height * 0.5377900);
    path_15.cubicTo(
        size.width * 0.4459585,
        size.height * 0.5379600,
        size.width * 0.4457085,
        size.height * 0.5384600,
        size.width * 0.4458750,
        size.height * 0.5380850);
    path_15.lineTo(size.width * 0.4380000, size.height * 0.5388350);
    path_15.cubicTo(
        size.width * 0.4380835,
        size.height * 0.5400400,
        size.width * 0.4381250,
        size.height * 0.5409150,
        size.width * 0.4380835,
        size.height * 0.5426250);
    path_15.cubicTo(
        size.width * 0.4380000,
        size.height * 0.5458350,
        size.width * 0.4377085,
        size.height * 0.5490400,
        size.width * 0.4370000,
        size.height * 0.5521650);
    path_15.cubicTo(
        size.width * 0.4352915,
        size.height * 0.5600850,
        size.width * 0.4310000,
        size.height * 0.5679150,
        size.width * 0.4228750,
        size.height * 0.5707100);
    path_15.cubicTo(
        size.width * 0.4205000,
        size.height * 0.5715400,
        size.width * 0.4183335,
        size.height * 0.5720000,
        size.width * 0.4165415,
        size.height * 0.5705000);
    path_15.cubicTo(
        size.width * 0.4145415,
        size.height * 0.5687500,
        size.width * 0.4140000,
        size.height * 0.5657100,
        size.width * 0.4137085,
        size.height * 0.5632100);
    path_15.cubicTo(
        size.width * 0.4128750,
        size.height * 0.5562900,
        size.width * 0.4144165,
        size.height * 0.5488750,
        size.width * 0.4160415,
        size.height * 0.5421250);
    path_15.cubicTo(
        size.width * 0.4171250,
        size.height * 0.5374600,
        size.width * 0.4184165,
        size.height * 0.5327500,
        size.width * 0.4200000,
        size.height * 0.5282100);
    path_15.lineTo(size.width * 0.4118335, size.height * 0.5289600);
    path_15.cubicTo(
        size.width * 0.4103750,
        size.height * 0.5355850,
        size.width * 0.4055000,
        size.height * 0.5483350,
        size.width * 0.3968750,
        size.height * 0.5465850);
    path_15.cubicTo(
        size.width * 0.3843335,
        size.height * 0.5440000,
        size.width * 0.3957500,
        size.height * 0.5248750,
        size.width * 0.3992500,
        size.height * 0.5190850);
    path_15.cubicTo(
        size.width * 0.4007085,
        size.height * 0.5166650,
        size.width * 0.4022500,
        size.height * 0.5142900,
        size.width * 0.4039165,
        size.height * 0.5119600);
    path_15.cubicTo(
        size.width * 0.4045835,
        size.height * 0.5110000,
        size.width * 0.4051665,
        size.height * 0.5101650,
        size.width * 0.4057500,
        size.height * 0.5094600);
    path_15.cubicTo(
        size.width * 0.4088335,
        size.height * 0.5054600,
        size.width * 0.4010835,
        size.height * 0.5047900,
        size.width * 0.3990415,
        size.height * 0.5074150);
    path_15.lineTo(size.width * 0.3991250, size.height * 0.5073350);
    path_15.lineTo(size.width * 0.3992085, size.height * 0.5073350);
    path_15.lineTo(size.width * 0.3992500, size.height * 0.5073750);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.3775000, size.height * 0.4790830);
    path_16.cubicTo(
        size.width * 0.3771665,
        size.height * 0.4947500,
        size.width * 0.3815415,
        size.height * 0.5076250,
        size.width * 0.3873335,
        size.height * 0.5077900);
    path_16.cubicTo(
        size.width * 0.3930835,
        size.height * 0.5080400,
        size.width * 0.3980415,
        size.height * 0.4955000,
        size.width * 0.3983750,
        size.height * 0.4798335);
    path_16.cubicTo(
        size.width * 0.3987085,
        size.height * 0.4641665,
        size.width * 0.3943335,
        size.height * 0.4512915,
        size.width * 0.3885415,
        size.height * 0.4511250);
    path_16.cubicTo(
        size.width * 0.3827915,
        size.height * 0.4508750,
        size.width * 0.3778335,
        size.height * 0.4634165,
        size.width * 0.3775000,
        size.height * 0.4790830);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.5436250, size.height * 0.4790830);
    path_17.cubicTo(
        size.width * 0.5432900,
        size.height * 0.4947500,
        size.width * 0.5476650,
        size.height * 0.5076250,
        size.width * 0.5534600,
        size.height * 0.5077900);
    path_17.cubicTo(
        size.width * 0.5592100,
        size.height * 0.5080400,
        size.width * 0.5641650,
        size.height * 0.4955000,
        size.width * 0.5645000,
        size.height * 0.4798335);
    path_17.cubicTo(
        size.width * 0.5648350,
        size.height * 0.4641665,
        size.width * 0.5604600,
        size.height * 0.4512915,
        size.width * 0.5546650,
        size.height * 0.4511250);
    path_17.cubicTo(
        size.width * 0.5489150,
        size.height * 0.4508750,
        size.width * 0.5439600,
        size.height * 0.4634165,
        size.width * 0.5436250,
        size.height * 0.4790830);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.3657085, size.height * 0.4682915);
    path_18.cubicTo(
        size.width * 0.3595415,
        size.height * 0.4678330,
        size.width * 0.3570415,
        size.height * 0.4600415,
        size.width * 0.3615415,
        size.height * 0.4558330);
    path_18.cubicTo(
        size.width * 0.3744165,
        size.height * 0.4437915,
        size.width * 0.4044585,
        size.height * 0.4179995,
        size.width * 0.4137500,
        size.height * 0.4302495);
    path_18.cubicTo(
        size.width * 0.4233750,
        size.height * 0.4429580,
        size.width * 0.3854165,
        size.height * 0.4697080,
        size.width * 0.3657500,
        size.height * 0.4682915);
    path_18.lineTo(size.width * 0.3657085, size.height * 0.4682915);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.5818350, size.height * 0.4682920);
    path_19.cubicTo(
        size.width * 0.5880000,
        size.height * 0.4678335,
        size.width * 0.5905000,
        size.height * 0.4600420,
        size.width * 0.5860000,
        size.height * 0.4558335);
    path_19.cubicTo(
        size.width * 0.5731250,
        size.height * 0.4437920,
        size.width * 0.5430400,
        size.height * 0.4180420,
        size.width * 0.5337900,
        size.height * 0.4302920);
    path_19.cubicTo(
        size.width * 0.5241650,
        size.height * 0.4430000,
        size.width * 0.5621650,
        size.height * 0.4697085,
        size.width * 0.5817900,
        size.height * 0.4682920);
    path_19.lineTo(size.width * 0.5818350, size.height * 0.4682920);
    path_19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.4344165, size.height * 0.4805415);
    path_20.cubicTo(
        size.width * 0.4342080,
        size.height * 0.5077100,
        size.width * 0.4170000,
        size.height * 0.5327900,
        size.width * 0.3912500,
        size.height * 0.5419150);
    path_20.cubicTo(
        size.width * 0.3654580,
        size.height * 0.5510400,
        size.width * 0.3366250,
        size.height * 0.5430400,
        size.width * 0.3192080,
        size.height * 0.5222100);
    path_20.cubicTo(
        size.width * 0.3017915,
        size.height * 0.5013750,
        size.width * 0.2993750,
        size.height * 0.4700835,
        size.width * 0.3136665,
        size.height * 0.4466250);
    path_20.cubicTo(
        size.width * 0.3280000,
        size.height * 0.4231665,
        size.width * 0.3555830,
        size.height * 0.4112915,
        size.width * 0.3821250,
        size.height * 0.4166665);
    path_20.cubicTo(
        size.width * 0.4123330,
        size.height * 0.4227915,
        size.width * 0.4342080,
        size.height * 0.4498750,
        size.width * 0.4344165,
        size.height * 0.4805415);
    path_20.cubicTo(
        size.width * 0.4344165,
        size.height * 0.4836250,
        size.width * 0.4392080,
        size.height * 0.4836250,
        size.width * 0.4392080,
        size.height * 0.4805415);
    path_20.cubicTo(
        size.width * 0.4390000,
        size.height * 0.4514585,
        size.width * 0.4207500,
        size.height * 0.4250415,
        size.width * 0.3933750,
        size.height * 0.4149165);
    path_20.cubicTo(
        size.width * 0.3660000,
        size.height * 0.4047915,
        size.width * 0.3337915,
        size.height * 0.4134585,
        size.width * 0.3152080,
        size.height * 0.4362085);
    path_20.cubicTo(
        size.width * 0.2966665,
        size.height * 0.4589165,
        size.width * 0.2942080,
        size.height * 0.4917915,
        size.width * 0.3095000,
        size.height * 0.5168750);
    path_20.cubicTo(
        size.width * 0.3247915,
        size.height * 0.5419600,
        size.width * 0.3546665,
        size.height * 0.5547900,
        size.width * 0.3833750,
        size.height * 0.5490000);
    path_20.cubicTo(
        size.width * 0.4156250,
        size.height * 0.5424600,
        size.width * 0.4389165,
        size.height * 0.5132500,
        size.width * 0.4391665,
        size.height * 0.4805415);
    path_20.cubicTo(
        size.width * 0.4391665,
        size.height * 0.4774585,
        size.width * 0.4343750,
        size.height * 0.4774585,
        size.width * 0.4343750,
        size.height * 0.4805415);
    path_20.lineTo(size.width * 0.4344165, size.height * 0.4805415);
    path_20.close();

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.6393350, size.height * 0.4805415);
    path_21.cubicTo(
        size.width * 0.6391250,
        size.height * 0.5077100,
        size.width * 0.6219150,
        size.height * 0.5327900,
        size.width * 0.5961650,
        size.height * 0.5419150);
    path_21.cubicTo(
        size.width * 0.5703750,
        size.height * 0.5510400,
        size.width * 0.5415400,
        size.height * 0.5430400,
        size.width * 0.5241250,
        size.height * 0.5222100);
    path_21.cubicTo(
        size.width * 0.5067100,
        size.height * 0.5013750,
        size.width * 0.5042900,
        size.height * 0.4700835,
        size.width * 0.5185850,
        size.height * 0.4466250);
    path_21.cubicTo(
        size.width * 0.5329150,
        size.height * 0.4231665,
        size.width * 0.5605000,
        size.height * 0.4112915,
        size.width * 0.5870400,
        size.height * 0.4166665);
    path_21.cubicTo(
        size.width * 0.6172500,
        size.height * 0.4227915,
        size.width * 0.6391250,
        size.height * 0.4498750,
        size.width * 0.6393350,
        size.height * 0.4805415);
    path_21.cubicTo(
        size.width * 0.6393350,
        size.height * 0.4836250,
        size.width * 0.6441250,
        size.height * 0.4836250,
        size.width * 0.6441250,
        size.height * 0.4805415);
    path_21.cubicTo(
        size.width * 0.6439150,
        size.height * 0.4514585,
        size.width * 0.6256650,
        size.height * 0.4250415,
        size.width * 0.5982900,
        size.height * 0.4149165);
    path_21.cubicTo(
        size.width * 0.5709150,
        size.height * 0.4047915,
        size.width * 0.5387100,
        size.height * 0.4134585,
        size.width * 0.5201250,
        size.height * 0.4362085);
    path_21.cubicTo(
        size.width * 0.5015850,
        size.height * 0.4589165,
        size.width * 0.4991250,
        size.height * 0.4917915,
        size.width * 0.5144150,
        size.height * 0.5168750);
    path_21.cubicTo(
        size.width * 0.5297100,
        size.height * 0.5419600,
        size.width * 0.5595850,
        size.height * 0.5547900,
        size.width * 0.5882900,
        size.height * 0.5490000);
    path_21.cubicTo(
        size.width * 0.6205400,
        size.height * 0.5424600,
        size.width * 0.6438350,
        size.height * 0.5132500,
        size.width * 0.6440850,
        size.height * 0.4805415);
    path_21.cubicTo(
        size.width * 0.6440850,
        size.height * 0.4774585,
        size.width * 0.6392900,
        size.height * 0.4774585,
        size.width * 0.6392900,
        size.height * 0.4805415);
    path_21.lineTo(size.width * 0.6393350, size.height * 0.4805415);
    path_21.close();

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.8217900, size.height * 0.09870800);
    path_22.cubicTo(
        size.width * 0.8213350,
        size.height * 0.09183300,
        size.width * 0.8192900,
        size.height * 0.08512450,
        size.width * 0.8156250,
        size.height * 0.07858300);
    path_22.cubicTo(
        size.width * 0.8119600,
        size.height * 0.07204150,
        size.width * 0.8063350,
        size.height * 0.06608300,
        size.width * 0.7987100,
        size.height * 0.06058300);
    path_22.cubicTo(
        size.width * 0.7910850,
        size.height * 0.05512450,
        size.width * 0.7807500,
        size.height * 0.05087450,
        size.width * 0.7677500,
        size.height * 0.04791635);
    path_22.cubicTo(
        size.width * 0.7573750,
        size.height * 0.04554135,
        size.width * 0.7464600,
        size.height * 0.04449970,
        size.width * 0.7350400,
        size.height * 0.04483300);
    path_22.cubicTo(
        size.width * 0.7236250,
        size.height * 0.04516635,
        size.width * 0.7133350,
        size.height * 0.04704135,
        size.width * 0.7042100,
        size.height * 0.05041650);
    path_22.lineTo(size.width * 0.7080400, size.height * 0.08116650);
    path_22.lineTo(size.width * 0.7014600, size.height * 0.08437450);
    path_22.lineTo(size.width * 0.7089600, size.height * 0.08858300);
    path_22.cubicTo(
        size.width * 0.7178350,
        size.height * 0.08624950,
        size.width * 0.7257500,
        size.height * 0.08487450,
        size.width * 0.7327100,
        size.height * 0.08449950);
    path_22.cubicTo(
        size.width * 0.7396250,
        size.height * 0.08412450,
        size.width * 0.7467900,
        size.height * 0.08479150,
        size.width * 0.7541250,
        size.height * 0.08645800);
    path_22.cubicTo(
        size.width * 0.7614600,
        size.height * 0.08812450,
        size.width * 0.7665850,
        size.height * 0.09116650,
        size.width * 0.7695400,
        size.height * 0.09558300);
    path_22.cubicTo(
        size.width * 0.7725000,
        size.height * 0.09999950,
        size.width * 0.7734150,
        size.height * 0.1046665,
        size.width * 0.7722500,
        size.height * 0.1096665);
    path_22.cubicTo(
        size.width * 0.7708750,
        size.height * 0.1157080,
        size.width * 0.7677100,
        size.height * 0.1205830,
        size.width * 0.7627900,
        size.height * 0.1243745);
    path_22.cubicTo(
        size.width * 0.7578350,
        size.height * 0.1281665,
        size.width * 0.7525000,
        size.height * 0.1319165,
        size.width * 0.7467100,
        size.height * 0.1356245);
    path_22.cubicTo(
        size.width * 0.7427100,
        size.height * 0.1382080,
        size.width * 0.7387500,
        size.height * 0.1409165,
        size.width * 0.7348750,
        size.height * 0.1437495);
    path_22.cubicTo(
        size.width * 0.7310000,
        size.height * 0.1465830,
        size.width * 0.7274600,
        size.height * 0.1497495,
        size.width * 0.7241650,
        size.height * 0.1532915);
    path_22.cubicTo(
        size.width * 0.7208750,
        size.height * 0.1567915,
        size.width * 0.7180000,
        size.height * 0.1607495,
        size.width * 0.7155400,
        size.height * 0.1650830);
    path_22.cubicTo(
        size.width * 0.7130400,
        size.height * 0.1694165,
        size.width * 0.7111250,
        size.height * 0.1744995,
        size.width * 0.7097900,
        size.height * 0.1803330);
    path_22.cubicTo(
        size.width * 0.7093750,
        size.height * 0.1822080,
        size.width * 0.7088750,
        size.height * 0.1844580,
        size.width * 0.7084150,
        size.height * 0.1870830);
    path_22.cubicTo(
        size.width * 0.7083350,
        size.height * 0.1875830,
        size.width * 0.7082500,
        size.height * 0.1880415,
        size.width * 0.7081650,
        size.height * 0.1884995);
    path_22.lineTo(size.width * 0.7005850, size.height * 0.1867495);
    path_22.lineTo(size.width * 0.7075850, size.height * 0.1942495);
    path_22.lineTo(size.width * 0.7478750, size.height * 0.2034995);
    path_22.cubicTo(
        size.width * 0.7479600,
        size.height * 0.2022080,
        size.width * 0.7481650,
        size.height * 0.2007495,
        size.width * 0.7485850,
        size.height * 0.1990830);
    path_22.lineTo(size.width * 0.7494600, size.height * 0.1953330);
    path_22.cubicTo(
        size.width * 0.7502500,
        size.height * 0.1917915,
        size.width * 0.7517900,
        size.height * 0.1884995,
        size.width * 0.7540000,
        size.height * 0.1853745);
    path_22.cubicTo(
        size.width * 0.7562100,
        size.height * 0.1822915,
        size.width * 0.7587500,
        size.height * 0.1794165,
        size.width * 0.7615850,
        size.height * 0.1767915);
    path_22.cubicTo(
        size.width * 0.7644150,
        size.height * 0.1741665,
        size.width * 0.7675000,
        size.height * 0.1717495,
        size.width * 0.7707900,
        size.height * 0.1695415);
    path_22.cubicTo(
        size.width * 0.7740850,
        size.height * 0.1673330,
        size.width * 0.7772500,
        size.height * 0.1652915,
        size.width * 0.7802500,
        size.height * 0.1633330);
    path_22.cubicTo(
        size.width * 0.7842500,
        size.height * 0.1607495,
        size.width * 0.7884150,
        size.height * 0.1579995,
        size.width * 0.7927500,
        size.height * 0.1550415);
    path_22.cubicTo(
        size.width * 0.7970850,
        size.height * 0.1520830,
        size.width * 0.8010400,
        size.height * 0.1488745,
        size.width * 0.8046250,
        size.height * 0.1452915);
    path_22.cubicTo(
        size.width * 0.8082100,
        size.height * 0.1417495,
        size.width * 0.8114600,
        size.height * 0.1377080,
        size.width * 0.8142900,
        size.height * 0.1332495);
    path_22.cubicTo(
        size.width * 0.8171250,
        size.height * 0.1287495,
        size.width * 0.8192500,
        size.height * 0.1236245,
        size.width * 0.8205850,
        size.height * 0.1177915);
    path_22.cubicTo(
        size.width * 0.8219150,
        size.height * 0.1119580,
        size.width * 0.8223350,
        size.height * 0.1056245,
        size.width * 0.8218750,
        size.height * 0.09874950);
    path_22.lineTo(size.width * 0.8217900, size.height * 0.09870800);
    path_22.close();

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.7460400, size.height * 0.08254150);
    path_23.cubicTo(
        size.width * 0.7387900,
        size.height * 0.08087500,
        size.width * 0.7317500,
        size.height * 0.08020800,
        size.width * 0.7249150,
        size.height * 0.08054150);
    path_23.cubicTo(
        size.width * 0.7180400,
        size.height * 0.08087500,
        size.width * 0.7102500,
        size.height * 0.08216650,
        size.width * 0.7015000,
        size.height * 0.08437500);
    path_23.lineTo(size.width * 0.6966250, size.height * 0.04737490);
    path_23.cubicTo(
        size.width * 0.7056250,
        size.height * 0.04412490,
        size.width * 0.7157500,
        size.height * 0.04241660,
        size.width * 0.7270400,
        size.height * 0.04212490);
    path_23.cubicTo(
        size.width * 0.7383350,
        size.height * 0.04187490,
        size.width * 0.7490850,
        size.height * 0.04291660,
        size.width * 0.7593350,
        size.height * 0.04524990);
    path_23.cubicTo(
        size.width * 0.7722100,
        size.height * 0.04820825,
        size.width * 0.7824150,
        size.height * 0.05233300,
        size.width * 0.7899600,
        size.height * 0.05766650);
    path_23.cubicTo(
        size.width * 0.7975400,
        size.height * 0.06300000,
        size.width * 0.8031250,
        size.height * 0.06883350,
        size.width * 0.8067500,
        size.height * 0.07516650);
    path_23.cubicTo(
        size.width * 0.8103750,
        size.height * 0.08150000,
        size.width * 0.8124150,
        size.height * 0.08800000,
        size.width * 0.8129150,
        size.height * 0.09466650);
    path_23.cubicTo(
        size.width * 0.8133750,
        size.height * 0.1013330,
        size.width * 0.8130000,
        size.height * 0.1075000,
        size.width * 0.8117100,
        size.height * 0.1131250);
    path_23.cubicTo(
        size.width * 0.8104150,
        size.height * 0.1187500,
        size.width * 0.8083750,
        size.height * 0.1237500,
        size.width * 0.8055850,
        size.height * 0.1280830);
    path_23.cubicTo(
        size.width * 0.8027900,
        size.height * 0.1324165,
        size.width * 0.7996250,
        size.height * 0.1362915,
        size.width * 0.7960850,
        size.height * 0.1397080);
    path_23.cubicTo(
        size.width * 0.7925400,
        size.height * 0.1431250,
        size.width * 0.7886650,
        size.height * 0.1462500,
        size.width * 0.7844150,
        size.height * 0.1490830);
    path_23.cubicTo(
        size.width * 0.7801650,
        size.height * 0.1519165,
        size.width * 0.7760850,
        size.height * 0.1545830,
        size.width * 0.7721250,
        size.height * 0.1570415);
    path_23.cubicTo(
        size.width * 0.7691650,
        size.height * 0.1589165,
        size.width * 0.7660400,
        size.height * 0.1608750,
        size.width * 0.7628350,
        size.height * 0.1630000);
    path_23.cubicTo(
        size.width * 0.7595850,
        size.height * 0.1651250,
        size.width * 0.7565850,
        size.height * 0.1674165,
        size.width * 0.7537900,
        size.height * 0.1699580);
    path_23.cubicTo(
        size.width * 0.7510000,
        size.height * 0.1725000,
        size.width * 0.7485000,
        size.height * 0.1752500,
        size.width * 0.7463350,
        size.height * 0.1782500);
    path_23.cubicTo(
        size.width * 0.7441650,
        size.height * 0.1812500,
        size.width * 0.7427100,
        size.height * 0.1844580,
        size.width * 0.7419150,
        size.height * 0.1878750);
    path_23.lineTo(size.width * 0.7410850, size.height * 0.1915000);
    path_23.cubicTo(
        size.width * 0.7407100,
        size.height * 0.1931250,
        size.width * 0.7405000,
        size.height * 0.1945415,
        size.width * 0.7404150,
        size.height * 0.1957915);
    path_23.lineTo(size.width * 0.7005850, size.height * 0.1866665);
    path_23.cubicTo(
        size.width * 0.7006250,
        size.height * 0.1845415,
        size.width * 0.7009150,
        size.height * 0.1822500,
        size.width * 0.7013750,
        size.height * 0.1797080);
    path_23.cubicTo(
        size.width * 0.7018350,
        size.height * 0.1771665,
        size.width * 0.7022900,
        size.height * 0.1750000,
        size.width * 0.7027100,
        size.height * 0.1731665);
    path_23.cubicTo(
        size.width * 0.7040000,
        size.height * 0.1675415,
        size.width * 0.7058750,
        size.height * 0.1626250,
        size.width * 0.7082900,
        size.height * 0.1584165);
    path_23.cubicTo(
        size.width * 0.7107500,
        size.height * 0.1542085,
        size.width * 0.7135400,
        size.height * 0.1504165,
        size.width * 0.7167900,
        size.height * 0.1470415);
    path_23.cubicTo(
        size.width * 0.7200000,
        size.height * 0.1436250,
        size.width * 0.7235000,
        size.height * 0.1405830,
        size.width * 0.7272900,
        size.height * 0.1378750);
    path_23.cubicTo(
        size.width * 0.7310850,
        size.height * 0.1351665,
        size.width * 0.7349600,
        size.height * 0.1325415,
        size.width * 0.7389150,
        size.height * 0.1300830);
    path_23.cubicTo(
        size.width * 0.7445850,
        size.height * 0.1265000,
        size.width * 0.7498750,
        size.height * 0.1229165,
        size.width * 0.7547500,
        size.height * 0.1192500);
    path_23.cubicTo(
        size.width * 0.7595850,
        size.height * 0.1155835,
        size.width * 0.7627100,
        size.height * 0.1108750,
        size.width * 0.7640400,
        size.height * 0.1050415);
    path_23.cubicTo(
        size.width * 0.7651650,
        size.height * 0.1002080,
        size.width * 0.7642500,
        size.height * 0.09566650,
        size.width * 0.7612900,
        size.height * 0.09137500);
    path_23.cubicTo(
        size.width * 0.7583350,
        size.height * 0.08712500,
        size.width * 0.7532500,
        size.height * 0.08412500,
        size.width * 0.7460400,
        size.height * 0.08250000);
    path_23.lineTo(size.width * 0.7460400, size.height * 0.08254150);
    path_23.close();

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_23, paint23Fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.7416250, size.height * 0.2432080);
    path_24.cubicTo(
        size.width * 0.7399600,
        size.height * 0.2504580,
        size.width * 0.7363350,
        size.height * 0.2555415,
        size.width * 0.7307100,
        size.height * 0.2584165);
    path_24.cubicTo(
        size.width * 0.7250850,
        size.height * 0.2612915,
        size.width * 0.7193350,
        size.height * 0.2620415,
        size.width * 0.7133750,
        size.height * 0.2607080);
    path_24.cubicTo(
        size.width * 0.7074150,
        size.height * 0.2593745,
        size.width * 0.7025850,
        size.height * 0.2561665,
        size.width * 0.6987900,
        size.height * 0.2511245);
    path_24.cubicTo(
        size.width * 0.6950000,
        size.height * 0.2460830,
        size.width * 0.6939150,
        size.height * 0.2399580,
        size.width * 0.6955850,
        size.height * 0.2326665);
    path_24.cubicTo(
        size.width * 0.6972500,
        size.height * 0.2253745,
        size.width * 0.7008750,
        size.height * 0.2203330,
        size.width * 0.7065000,
        size.height * 0.2174580);
    path_24.cubicTo(
        size.width * 0.7151250,
        size.height * 0.2129995,
        size.width * 0.7261650,
        size.height * 0.2140830,
        size.width * 0.7336650,
        size.height * 0.2203330);
    path_24.cubicTo(
        size.width * 0.7403350,
        size.height * 0.2258745,
        size.width * 0.7435850,
        size.height * 0.2347495,
        size.width * 0.7416250,
        size.height * 0.2432080);
    path_24.close();

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_24, paint24Fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.7337500, size.height * 0.2414165);
    path_25.cubicTo(
        size.width * 0.7320850,
        size.height * 0.2486665,
        size.width * 0.7284600,
        size.height * 0.2537500,
        size.width * 0.7228350,
        size.height * 0.2566250);
    path_25.cubicTo(
        size.width * 0.7172100,
        size.height * 0.2595000,
        size.width * 0.7114600,
        size.height * 0.2602500,
        size.width * 0.7055000,
        size.height * 0.2589165);
    path_25.cubicTo(
        size.width * 0.6995400,
        size.height * 0.2575830,
        size.width * 0.6947100,
        size.height * 0.2543750,
        size.width * 0.6909150,
        size.height * 0.2493330);
    path_25.cubicTo(
        size.width * 0.6871250,
        size.height * 0.2442915,
        size.width * 0.6860400,
        size.height * 0.2381665,
        size.width * 0.6877100,
        size.height * 0.2308750);
    path_25.cubicTo(
        size.width * 0.6893750,
        size.height * 0.2235830,
        size.width * 0.6930000,
        size.height * 0.2185415,
        size.width * 0.6986250,
        size.height * 0.2156665);
    path_25.cubicTo(
        size.width * 0.7042500,
        size.height * 0.2127915,
        size.width * 0.7100000,
        size.height * 0.2120415,
        size.width * 0.7159600,
        size.height * 0.2133750);
    path_25.cubicTo(
        size.width * 0.7219150,
        size.height * 0.2147080,
        size.width * 0.7267500,
        size.height * 0.2179165,
        size.width * 0.7305400,
        size.height * 0.2229580);
    path_25.cubicTo(
        size.width * 0.7343350,
        size.height * 0.2280000,
        size.width * 0.7354150,
        size.height * 0.2341250,
        size.width * 0.7337500,
        size.height * 0.2414165);
    path_25.close();

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_25, paint25Fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.9082100, size.height * 0.2322500);
    path_26.cubicTo(
        size.width * 0.9095000,
        size.height * 0.2266250,
        size.width * 0.9094600,
        size.height * 0.2207915,
        size.width * 0.9080850,
        size.height * 0.2146665);
    path_26.cubicTo(
        size.width * 0.9067100,
        size.height * 0.2085830,
        size.width * 0.9036250,
        size.height * 0.2024165,
        size.width * 0.8988350,
        size.height * 0.1962080);
    path_26.cubicTo(
        size.width * 0.8940400,
        size.height * 0.1900000,
        size.width * 0.8867900,
        size.height * 0.1841665,
        size.width * 0.8770850,
        size.height * 0.1786665);
    path_26.cubicTo(
        size.width * 0.8693350,
        size.height * 0.1742915,
        size.width * 0.8608750,
        size.height * 0.1708330,
        size.width * 0.8516250,
        size.height * 0.1683750);
    path_26.cubicTo(
        size.width * 0.8423750,
        size.height * 0.1659165,
        size.width * 0.8337100,
        size.height * 0.1649165,
        size.width * 0.8255850,
        size.height * 0.1654580);
    path_26.lineTo(size.width * 0.8212900, size.height * 0.1910000);
    path_26.lineTo(size.width * 0.8152500, size.height * 0.1920000);
    path_26.lineTo(size.width * 0.8202500, size.height * 0.1971665);
    path_26.cubicTo(
        size.width * 0.8279150,
        size.height * 0.1974165,
        size.width * 0.8345850,
        size.height * 0.1982500,
        size.width * 0.8402500,
        size.height * 0.1995830);
    path_26.cubicTo(
        size.width * 0.8458750,
        size.height * 0.2009580,
        size.width * 0.8514600,
        size.height * 0.2031665,
        size.width * 0.8569150,
        size.height * 0.2062500);
    path_26.cubicTo(
        size.width * 0.8623750,
        size.height * 0.2093330,
        size.width * 0.8657500,
        size.height * 0.2130000,
        size.width * 0.8670850,
        size.height * 0.2172500);
    path_26.cubicTo(
        size.width * 0.8683750,
        size.height * 0.2215000,
        size.width * 0.8680000,
        size.height * 0.2254580,
        size.width * 0.8658750,
        size.height * 0.2291665);
    path_26.cubicTo(
        size.width * 0.8633350,
        size.height * 0.2336665,
        size.width * 0.8596250,
        size.height * 0.2368330,
        size.width * 0.8547500,
        size.height * 0.2387080);
    path_26.cubicTo(
        size.width * 0.8498750,
        size.height * 0.2405415,
        size.width * 0.8447100,
        size.height * 0.2422915,
        size.width * 0.8391650,
        size.height * 0.2438750);
    path_26.cubicTo(
        size.width * 0.8353350,
        size.height * 0.2449580,
        size.width * 0.8315400,
        size.height * 0.2462080,
        size.width * 0.8277500,
        size.height * 0.2475415);
    path_26.cubicTo(
        size.width * 0.8239600,
        size.height * 0.2488750,
        size.width * 0.8203750,
        size.height * 0.2505830,
        size.width * 0.8169150,
        size.height * 0.2526250);
    path_26.cubicTo(
        size.width * 0.8134600,
        size.height * 0.2546665,
        size.width * 0.8102100,
        size.height * 0.2571250,
        size.width * 0.8071650,
        size.height * 0.2600000);
    path_26.cubicTo(
        size.width * 0.8041250,
        size.height * 0.2628750,
        size.width * 0.8013750,
        size.height * 0.2665000,
        size.width * 0.7989150,
        size.height * 0.2708330);
    path_26.cubicTo(
        size.width * 0.7981250,
        size.height * 0.2722500,
        size.width * 0.7972100,
        size.height * 0.2739165,
        size.width * 0.7962100,
        size.height * 0.2759165);
    path_26.cubicTo(
        size.width * 0.7960000,
        size.height * 0.2762915,
        size.width * 0.7958350,
        size.height * 0.2766250,
        size.width * 0.7956650,
        size.height * 0.2770000);
    path_26.lineTo(size.width * 0.7900000, size.height * 0.2737915);
    path_26.lineTo(size.width * 0.7937900, size.height * 0.2814580);
    path_26.lineTo(size.width * 0.8238350, size.height * 0.2985000);
    path_26.cubicTo(
        size.width * 0.8242100,
        size.height * 0.2975000,
        size.width * 0.8247500,
        size.height * 0.2963750,
        size.width * 0.8254600,
        size.height * 0.2951250);
    path_26.lineTo(size.width * 0.8270400, size.height * 0.2923330);
    path_26.cubicTo(
        size.width * 0.8285400,
        size.height * 0.2897080,
        size.width * 0.8305400,
        size.height * 0.2874165,
        size.width * 0.8330400,
        size.height * 0.2854580);
    path_26.cubicTo(
        size.width * 0.8355400,
        size.height * 0.2835000,
        size.width * 0.8382500,
        size.height * 0.2818330,
        size.width * 0.8411650,
        size.height * 0.2803750);
    path_26.cubicTo(
        size.width * 0.8440850,
        size.height * 0.2789580,
        size.width * 0.8471250,
        size.height * 0.2777500,
        size.width * 0.8502500,
        size.height * 0.2767915);
    path_26.cubicTo(
        size.width * 0.8534150,
        size.height * 0.2758330,
        size.width * 0.8564150,
        size.height * 0.2749165,
        size.width * 0.8592900,
        size.height * 0.2740830);
    path_26.cubicTo(
        size.width * 0.8631250,
        size.height * 0.2730000,
        size.width * 0.8671250,
        size.height * 0.2717500,
        size.width * 0.8712900,
        size.height * 0.2704580);
    path_26.cubicTo(
        size.width * 0.8754600,
        size.height * 0.2691250,
        size.width * 0.8794150,
        size.height * 0.2675000,
        size.width * 0.8831250,
        size.height * 0.2655000);
    path_26.cubicTo(
        size.width * 0.8868750,
        size.height * 0.2635000,
        size.width * 0.8903750,
        size.height * 0.2610830,
        size.width * 0.8937500,
        size.height * 0.2581665);
    path_26.cubicTo(
        size.width * 0.8970850,
        size.height * 0.2552500,
        size.width * 0.9000000,
        size.height * 0.2516250,
        size.width * 0.9024600,
        size.height * 0.2472915);
    path_26.cubicTo(
        size.width * 0.9049150,
        size.height * 0.2429580,
        size.width * 0.9067900,
        size.height * 0.2379580,
        size.width * 0.9080850,
        size.height * 0.2323330);
    path_26.lineTo(size.width * 0.9082100, size.height * 0.2322500);
    path_26.close();

    Paint paint26Fill = Paint()..style = PaintingStyle.fill;
    paint26Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_26, paint26Fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.8513750, size.height * 0.2011665);
    path_27.cubicTo(
        size.width * 0.8459600,
        size.height * 0.1980830,
        size.width * 0.8405000,
        size.height * 0.1958750,
        size.width * 0.8349150,
        size.height * 0.1945000);
    path_27.cubicTo(
        size.width * 0.8293350,
        size.height * 0.1931250,
        size.width * 0.8227900,
        size.height * 0.1922915,
        size.width * 0.8152500,
        size.height * 0.1919580);
    path_27.lineTo(size.width * 0.8202100, size.height * 0.1611665);
    path_27.cubicTo(
        size.width * 0.8281650,
        size.height * 0.1607500,
        size.width * 0.8367100,
        size.height * 0.1617500,
        size.width * 0.8458350,
        size.height * 0.1642500);
    path_27.cubicTo(
        size.width * 0.8549150,
        size.height * 0.1667500,
        size.width * 0.8632900,
        size.height * 0.1701250,
        size.width * 0.8709600,
        size.height * 0.1745000);
    path_27.cubicTo(
        size.width * 0.8805400,
        size.height * 0.1799580,
        size.width * 0.8877500,
        size.height * 0.1857080,
        size.width * 0.8925000,
        size.height * 0.1917915);
    path_27.cubicTo(
        size.width * 0.8972900,
        size.height * 0.1978750,
        size.width * 0.9003750,
        size.height * 0.2038750,
        size.width * 0.9017500,
        size.height * 0.2098330);
    path_27.cubicTo(
        size.width * 0.9031250,
        size.height * 0.2157915,
        size.width * 0.9032100,
        size.height * 0.2214580,
        size.width * 0.9020000,
        size.height * 0.2269165);
    path_27.cubicTo(
        size.width * 0.9007900,
        size.height * 0.2323750,
        size.width * 0.8990000,
        size.height * 0.2372080,
        size.width * 0.8966250,
        size.height * 0.2414165);
    path_27.cubicTo(
        size.width * 0.8942500,
        size.height * 0.2456250,
        size.width * 0.8914150,
        size.height * 0.2491250,
        size.width * 0.8881250,
        size.height * 0.2519165);
    path_27.cubicTo(
        size.width * 0.8848350,
        size.height * 0.2547080,
        size.width * 0.8813750,
        size.height * 0.2570830,
        size.width * 0.8777500,
        size.height * 0.2589580);
    path_27.cubicTo(
        size.width * 0.8740850,
        size.height * 0.2608750,
        size.width * 0.8702500,
        size.height * 0.2624165,
        size.width * 0.8661650,
        size.height * 0.2636665);
    path_27.cubicTo(
        size.width * 0.8620850,
        size.height * 0.2649165,
        size.width * 0.8581650,
        size.height * 0.2660830,
        size.width * 0.8544150,
        size.height * 0.2671250);
    path_27.cubicTo(
        size.width * 0.8515850,
        size.height * 0.2679165,
        size.width * 0.8486250,
        size.height * 0.2687500,
        size.width * 0.8455400,
        size.height * 0.2696665);
    path_27.cubicTo(
        size.width * 0.8424600,
        size.height * 0.2705830,
        size.width * 0.8394600,
        size.height * 0.2717080,
        size.width * 0.8366250,
        size.height * 0.2730830);
    path_27.cubicTo(
        size.width * 0.8337900,
        size.height * 0.2744580,
        size.width * 0.8311250,
        size.height * 0.2760415,
        size.width * 0.8286650,
        size.height * 0.2779580);
    path_27.cubicTo(
        size.width * 0.8262100,
        size.height * 0.2798330,
        size.width * 0.8242500,
        size.height * 0.2820415,
        size.width * 0.8228350,
        size.height * 0.2845830);
    path_27.lineTo(size.width * 0.8212900, size.height * 0.2872915);
    path_27.cubicTo(
        size.width * 0.8206250,
        size.height * 0.2885000,
        size.width * 0.8200850,
        size.height * 0.2895830,
        size.width * 0.8197500,
        size.height * 0.2905830);
    path_27.lineTo(size.width * 0.7900400, size.height * 0.2737500);
    path_27.cubicTo(
        size.width * 0.7905850,
        size.height * 0.2720830,
        size.width * 0.7913750,
        size.height * 0.2702915,
        size.width * 0.7923350,
        size.height * 0.2683750);
    path_27.cubicTo(
        size.width * 0.7933350,
        size.height * 0.2664580,
        size.width * 0.7942100,
        size.height * 0.2648330,
        size.width * 0.7949600,
        size.height * 0.2634580);
    path_27.cubicTo(
        size.width * 0.7973350,
        size.height * 0.2592500,
        size.width * 0.8000000,
        size.height * 0.2557915,
        size.width * 0.8029600,
        size.height * 0.2530000);
    path_27.cubicTo(
        size.width * 0.8059150,
        size.height * 0.2502080,
        size.width * 0.8090850,
        size.height * 0.2478330,
        size.width * 0.8124600,
        size.height * 0.2459165);
    path_27.cubicTo(
        size.width * 0.8158350,
        size.height * 0.2439580,
        size.width * 0.8193750,
        size.height * 0.2423750,
        size.width * 0.8230850,
        size.height * 0.2410830);
    path_27.cubicTo(
        size.width * 0.8267900,
        size.height * 0.2397915,
        size.width * 0.8305000,
        size.height * 0.2386665,
        size.width * 0.8342500,
        size.height * 0.2376250);
    path_27.cubicTo(
        size.width * 0.8396650,
        size.height * 0.2361250,
        size.width * 0.8447500,
        size.height * 0.2345000,
        size.width * 0.8495000,
        size.height * 0.2327500);
    path_27.cubicTo(
        size.width * 0.8542500,
        size.height * 0.2310000,
        size.width * 0.8578750,
        size.height * 0.2279165,
        size.width * 0.8603350,
        size.height * 0.2235830);
    path_27.cubicTo(
        size.width * 0.8623750,
        size.height * 0.2200000,
        size.width * 0.8627500,
        size.height * 0.2161250,
        size.width * 0.8614150,
        size.height * 0.2120000);
    path_27.cubicTo(
        size.width * 0.8600850,
        size.height * 0.2078750,
        size.width * 0.8567100,
        size.height * 0.2042915,
        size.width * 0.8513350,
        size.height * 0.2012080);
    path_27.lineTo(size.width * 0.8513750, size.height * 0.2011665);
    path_27.close();

    Paint paint27Fill = Paint()..style = PaintingStyle.fill;
    paint27Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_27, paint27Fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.8094600, size.height * 0.3287500);
    path_28.cubicTo(
        size.width * 0.8063750,
        size.height * 0.3341665,
        size.width * 0.8022500,
        size.height * 0.3373330,
        size.width * 0.7970850,
        size.height * 0.3383330);
    path_28.cubicTo(
        size.width * 0.7919150,
        size.height * 0.3392915,
        size.width * 0.7870850,
        size.height * 0.3385415,
        size.width * 0.7826650,
        size.height * 0.3360000);
    path_28.cubicTo(
        size.width * 0.7782500,
        size.height * 0.3334580,
        size.width * 0.7751250,
        size.height * 0.3297500,
        size.width * 0.7732900,
        size.height * 0.3248330);
    path_28.cubicTo(
        size.width * 0.7714600,
        size.height * 0.3199165,
        size.width * 0.7720850,
        size.height * 0.3147080,
        size.width * 0.7751650,
        size.height * 0.3092915);
    path_28.cubicTo(
        size.width * 0.7782500,
        size.height * 0.3038750,
        size.width * 0.7823750,
        size.height * 0.3007080,
        size.width * 0.7875400,
        size.height * 0.2997080);
    path_28.cubicTo(
        size.width * 0.7955400,
        size.height * 0.2982080,
        size.width * 0.8040850,
        size.height * 0.3017080,
        size.width * 0.8085850,
        size.height * 0.3085000);
    path_28.cubicTo(
        size.width * 0.8125850,
        size.height * 0.3145000,
        size.width * 0.8130850,
        size.height * 0.3224165,
        size.width * 0.8095000,
        size.height * 0.3287080);
    path_28.lineTo(size.width * 0.8094600, size.height * 0.3287500);
    path_28.close();

    Paint paint28Fill = Paint()..style = PaintingStyle.fill;
    paint28Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_28, paint28Fill);

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.8035400, size.height * 0.3254165);
    path_29.cubicTo(
        size.width * 0.8004600,
        size.height * 0.3308330,
        size.width * 0.7963350,
        size.height * 0.3340000,
        size.width * 0.7911650,
        size.height * 0.3350000);
    path_29.cubicTo(
        size.width * 0.7860000,
        size.height * 0.3359580,
        size.width * 0.7811650,
        size.height * 0.3352080,
        size.width * 0.7767500,
        size.height * 0.3326665);
    path_29.cubicTo(
        size.width * 0.7723350,
        size.height * 0.3301250,
        size.width * 0.7692100,
        size.height * 0.3264165,
        size.width * 0.7673750,
        size.height * 0.3215000);
    path_29.cubicTo(
        size.width * 0.7655400,
        size.height * 0.3165830,
        size.width * 0.7661650,
        size.height * 0.3113750,
        size.width * 0.7692500,
        size.height * 0.3059580);
    path_29.cubicTo(
        size.width * 0.7723350,
        size.height * 0.3005415,
        size.width * 0.7764600,
        size.height * 0.2973750,
        size.width * 0.7816250,
        size.height * 0.2963750);
    path_29.cubicTo(
        size.width * 0.7867900,
        size.height * 0.2954165,
        size.width * 0.7916250,
        size.height * 0.2961665,
        size.width * 0.7960400,
        size.height * 0.2987080);
    path_29.cubicTo(
        size.width * 0.8004600,
        size.height * 0.3012500,
        size.width * 0.8035850,
        size.height * 0.3049580,
        size.width * 0.8054150,
        size.height * 0.3098750);
    path_29.cubicTo(
        size.width * 0.8072500,
        size.height * 0.3148330,
        size.width * 0.8066250,
        size.height * 0.3200000,
        size.width * 0.8035850,
        size.height * 0.3254165);
    path_29.lineTo(size.width * 0.8035400, size.height * 0.3254165);
    path_29.close();

    Paint paint29Fill = Paint()..style = PaintingStyle.fill;
    paint29Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_29, paint29Fill);

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.4384875, size.height * 0.4844270);
    path_30.cubicTo(
        size.width * 0.4444390,
        size.height * 0.4790225,
        size.width * 0.4517390,
        size.height * 0.4753495,
        size.width * 0.4588665,
        size.height * 0.4730695);
    path_30.cubicTo(
        size.width * 0.4756820,
        size.height * 0.4677080,
        size.width * 0.4924280,
        size.height * 0.4722255,
        size.width * 0.5065100,
        size.height * 0.4844270);
    path_30.cubicTo(
        size.width * 0.5090350,
        size.height * 0.4865800,
        size.width * 0.5100250,
        size.height * 0.4821530,
        size.width * 0.5075000,
        size.height * 0.4800000);
    path_30.cubicTo(
        size.width * 0.4928645,
        size.height * 0.4673340,
        size.width * 0.4767200,
        size.height * 0.4619660,
        size.width * 0.4592125,
        size.height * 0.4669480);
    path_30.cubicTo(
        size.width * 0.4511510,
        size.height * 0.4692275,
        size.width * 0.4427090,
        size.height * 0.4732810,
        size.width * 0.4360310,
        size.height * 0.4793605);
    path_30.cubicTo(
        size.width * 0.4335745,
        size.height * 0.4815980,
        size.width * 0.4359620,
        size.height * 0.4867065,
        size.width * 0.4384530,
        size.height * 0.4844270);
    path_30.lineTo(size.width * 0.4384875, size.height * 0.4844270);
    path_30.close();

    Paint paint30Fill = Paint()..style = PaintingStyle.fill;
    paint30Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_30, paint30Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
