import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
/*
CustomPaint(
size: Size(WIDTH, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
painter: RPSCustomPainter(),
)
*/

//Copy this CustomPainter code to the Bottom of the File
class FrizoCratesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4136275, size.height * 0.6924550);
    path_0.lineTo(size.width * 0.4660025, size.height * 0.9299150);
    path_0.cubicTo(
        size.width * 0.4660025,
        size.height * 0.9299150,
        size.width * 0.3789610,
        size.height * 0.9172050,
        size.width * 0.3806695,
        size.height * 0.9375400);
    path_0.cubicTo(
        size.width * 0.3823775,
        size.height * 0.9578300,
        size.width * 0.4939195,
        size.height * 0.9375400,
        size.width * 0.4939195,
        size.height * 0.9375400);
    path_0.lineTo(size.width * 0.4939195, size.height * 0.6865800);
    path_0.lineTo(size.width * 0.4136275, size.height * 0.6925000);
    path_0.lineTo(size.width * 0.4136275, size.height * 0.6924550);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6130450, size.height * 0.6924550);
    path_1.lineTo(size.width * 0.5606700, size.height * 0.9299150);
    path_1.cubicTo(
        size.width * 0.5606700,
        size.height * 0.9299150,
        size.width * 0.6477100,
        size.height * 0.9172050,
        size.width * 0.6460000,
        size.height * 0.9375400);
    path_1.cubicTo(
        size.width * 0.6442950,
        size.height * 0.9578300,
        size.width * 0.5327950,
        size.height * 0.9375400,
        size.width * 0.5327950,
        size.height * 0.9375400);
    path_1.lineTo(size.width * 0.5327950, size.height * 0.6865800);
    path_1.lineTo(size.width * 0.6130450, size.height * 0.6925000);
    path_1.lineTo(size.width * 0.6130450, size.height * 0.6924550);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3485780, size.height * 0.6841650);
    path_2.cubicTo(
        size.width * 0.3485780,
        size.height * 0.6841650,
        size.width * 0.3480365,
        size.height * 0.6882050,
        size.width * 0.3475780,
        size.height * 0.6947500);
    path_2.cubicTo(
        size.width * 0.3485365,
        size.height * 0.6886250,
        size.width * 0.3485780,
        size.height * 0.6841650,
        size.width * 0.3485780,
        size.height * 0.6841650);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2783400, size.height * 0.2059165);
    path_3.cubicTo(
        size.width * 0.2801730,
        size.height * 0.2050830,
        size.width * 0.2813815,
        size.height * 0.2044580,
        size.width * 0.2813815,
        size.height * 0.2044580);
    path_3.cubicTo(
        size.width * 0.2803815,
        size.height * 0.2049165,
        size.width * 0.2793815,
        size.height * 0.2053745,
        size.width * 0.2783400,
        size.height * 0.2059165);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4491600, size.height * 0.7068350);
    path_4.cubicTo(
        size.width * 0.4497850,
        size.height * 0.7010400,
        size.width * 0.4499520,
        size.height * 0.6975000,
        size.width * 0.4499520,
        size.height * 0.6975000);
    path_4.cubicTo(
        size.width * 0.4499520,
        size.height * 0.6975000,
        size.width * 0.4492020,
        size.height * 0.7012900,
        size.width * 0.4491600,
        size.height * 0.7068350);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.7403800, size.height * 0.2322050);
    path_5.cubicTo(
        size.width * 0.7616250,
        size.height * 0.2313650,
        size.width * 0.7531200,
        size.height * 0.2100655,
        size.width * 0.7531200,
        size.height * 0.2100655);
    path_5.cubicTo(
        size.width * 0.6962050,
        size.height * 0.09848600,
        size.width * 0.5318750,
        size.height * 0.1316740,
        size.width * 0.5318750,
        size.height * 0.1316740);
    path_5.cubicTo(
        size.width * 0.5318750,
        size.height * 0.1316740,
        size.width * 0.5967550,
        size.height * 0.1137780,
        size.width * 0.5771800,
        size.height * 0.09672150);
    path_5.cubicTo(
        size.width * 0.5576500,
        size.height * 0.07966550,
        size.width * 0.5202700,
        size.height * 0.1137780,
        size.width * 0.5202700,
        size.height * 0.1137780);
    path_5.cubicTo(
        size.width * 0.5202700,
        size.height * 0.1137780,
        size.width * 0.5593700,
        size.height * 0.06605400,
        size.width * 0.5364050,
        size.height * 0.06265100);
    path_5.cubicTo(
        size.width * 0.5134350,
        size.height * 0.05924850,
        size.width * 0.5015350,
        size.height * 0.1010065,
        size.width * 0.5015350,
        size.height * 0.1010065);
    path_5.cubicTo(
        size.width * 0.5015350,
        size.height * 0.1010065,
        size.width * 0.5040900,
        size.height * 0.05416500,
        size.width * 0.4811660,
        size.height * 0.05416500);
    path_5.cubicTo(
        size.width * 0.4582410,
        size.height * 0.05416500,
        size.width * 0.4734965,
        size.height * 0.1317165,
        size.width * 0.4734965,
        size.height * 0.1317165);
    path_5.cubicTo(
        size.width * 0.3317575,
        size.height * 0.08848750,
        size.width * 0.2633605,
        size.height * 0.1825910,
        size.width * 0.2588760,
        size.height * 0.2011595);
    path_5.cubicTo(
        size.width * 0.2553975,
        size.height * 0.2156110,
        size.width * 0.2697310,
        size.height * 0.2106120,
        size.width * 0.2762270,
        size.height * 0.2077550);
    path_5.cubicTo(
        size.width * 0.2772325,
        size.height * 0.2072510,
        size.width * 0.2782385,
        size.height * 0.2067470,
        size.width * 0.2792865,
        size.height * 0.2062845);
    path_5.cubicTo(
        size.width * 0.2792865,
        size.height * 0.2062845,
        size.width * 0.2780710,
        size.height * 0.2069570,
        size.width * 0.2762270,
        size.height * 0.2077550);
    path_5.cubicTo(
        size.width * 0.2713655,
        size.height * 0.2102755,
        size.width * 0.2665455,
        size.height * 0.2138465,
        size.width * 0.2618935,
        size.height * 0.2182575);
    path_5.cubicTo(
        size.width * 0.2851535,
        size.height * 0.2143925,
        size.width * 0.3087910,
        size.height * 0.2022095,
        size.width * 0.3302905,
        size.height * 0.1948160);
    path_5.cubicTo(
        size.width * 0.3302905,
        size.height * 0.1973785,
        size.width * 0.3315480,
        size.height * 0.1999410,
        size.width * 0.3302905,
        size.height * 0.2012015);
    path_5.cubicTo(
        size.width * 0.3162505,
        size.height * 0.2203580,
        size.width * 0.2869555,
        size.height * 0.2369525,
        size.width * 0.2946250,
        size.height * 0.2574535);
    path_5.cubicTo(
        size.width * 0.3022945,
        size.height * 0.2791730,
        size.width * 0.3379600,
        size.height * 0.2664015,
        size.width * 0.3583700,
        size.height * 0.2561930);
    path_5.cubicTo(
        size.width * 0.3838515,
        size.height * 0.2421195,
        size.width * 0.4080750,
        size.height * 0.2255255,
        size.width * 0.4348555,
        size.height * 0.2153170);
    path_5.cubicTo(
        size.width * 0.4335985,
        size.height * 0.2383385,
        size.width * 0.4234140,
        size.height * 0.2587555,
        size.width * 0.4259285,
        size.height * 0.2817775);
    path_5.cubicTo(
        size.width * 0.4692635,
        size.height * 0.2919860,
        size.width * 0.4986005,
        size.height * 0.2498075,
        size.width * 0.5151950,
        size.height * 0.2166195);
    path_5.cubicTo(
        size.width * 0.5368650,
        size.height * 0.2280880,
        size.width * 0.5343100,
        size.height * 0.2600580,
        size.width * 0.5572750,
        size.height * 0.2677460);
    path_5.cubicTo(
        size.width * 0.5866100,
        size.height * 0.2766940,
        size.width * 0.6018650,
        size.height * 0.2472870,
        size.width * 0.5980500,
        size.height * 0.2204420);
    path_5.cubicTo(
        size.width * 0.5980500,
        size.height * 0.2178795,
        size.width * 0.6018650,
        size.height * 0.2191820,
        size.width * 0.6031650,
        size.height * 0.2191820);
    path_5.cubicTo(
        size.width * 0.6286450,
        size.height * 0.2357760,
        size.width * 0.6491000,
        size.height * 0.2664855,
        size.width * 0.6796500,
        size.height * 0.2536725);
    path_5.cubicTo(
        size.width * 0.6975050,
        size.height * 0.2459845,
        size.width * 0.6860200,
        size.height * 0.2191820,
        size.width * 0.6885800,
        size.height * 0.2012855);
    path_5.cubicTo(
        size.width * 0.6949500,
        size.height * 0.2025460,
        size.width * 0.6987600,
        size.height * 0.2076710,
        size.width * 0.7013200,
        size.height * 0.2114940);
    path_5.cubicTo(
        size.width * 0.7171200,
        size.height * 0.2347680,
        size.width * 0.7376950,
        size.height * 0.2553530,
        size.width * 0.7625050,
        size.height * 0.2613185);
    path_5.cubicTo(
        size.width * 0.7510650,
        size.height * 0.2374985,
        size.width * 0.7404600,
        size.height * 0.2323730,
        size.width * 0.7404600,
        size.height * 0.2323730);
    path_5.lineTo(size.width * 0.7404600, size.height * 0.2322890);
    path_5.lineTo(size.width * 0.7403800, size.height * 0.2322050);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.7689550, size.height * 0.5508750);
    path_6.cubicTo(
        size.width * 0.7850000,
        size.height * 0.5525850,
        size.width * 0.7858750,
        size.height * 0.5301650,
        size.width * 0.7858750,
        size.height * 0.5301650);
    path_6.cubicTo(
        size.width * 0.7972500,
        size.height * 0.3697090,
        size.width * 0.7785800,
        size.height * 0.2939590,
        size.width * 0.7617500,
        size.height * 0.2589175);
    path_6.cubicTo(
        size.width * 0.7370800,
        size.height * 0.2530005,
        size.width * 0.7166650,
        size.height * 0.2325840,
        size.width * 0.7009150,
        size.height * 0.2095005);
    path_6.cubicTo(
        size.width * 0.6983750,
        size.height * 0.2057090,
        size.width * 0.6945800,
        size.height * 0.2006255,
        size.width * 0.6882500,
        size.height * 0.1993755);
    path_6.cubicTo(
        size.width * 0.6857050,
        size.height * 0.2171255,
        size.width * 0.6971250,
        size.height * 0.2437090,
        size.width * 0.6793750,
        size.height * 0.2513340);
    path_6.cubicTo(
        size.width * 0.6489550,
        size.height * 0.2640005,
        size.width * 0.6286650,
        size.height * 0.2335840,
        size.width * 0.6033300,
        size.height * 0.2171255);
    path_6.cubicTo(
        size.width * 0.6020800,
        size.height * 0.2171255,
        size.width * 0.5982500,
        size.height * 0.2158755,
        size.width * 0.5982500,
        size.height * 0.2183755);
    path_6.cubicTo(
        size.width * 0.6020400,
        size.height * 0.2450005,
        size.width * 0.5868300,
        size.height * 0.2741675,
        size.width * 0.5577050,
        size.height * 0.2652925);
    path_6.cubicTo(
        size.width * 0.5348750,
        size.height * 0.2576675,
        size.width * 0.5374550,
        size.height * 0.2260005,
        size.width * 0.5158750,
        size.height * 0.2145840);
    path_6.cubicTo(
        size.width * 0.4994145,
        size.height * 0.2475425,
        size.width * 0.4702060,
        size.height * 0.2893755,
        size.width * 0.4271225,
        size.height * 0.2792090);
    path_6.cubicTo(
        size.width * 0.4245810,
        size.height * 0.2563755,
        size.width * 0.4347475,
        size.height * 0.2361255,
        size.width * 0.4359975,
        size.height * 0.2132925);
    path_6.cubicTo(
        size.width * 0.4093725,
        size.height * 0.2234175,
        size.width * 0.3852895,
        size.height * 0.2399175,
        size.width * 0.3599560,
        size.height * 0.2538340);
    path_6.cubicTo(
        size.width * 0.3396645,
        size.height * 0.2639590,
        size.width * 0.3041645,
        size.height * 0.2766675,
        size.width * 0.2965810,
        size.height * 0.2550840);
    path_6.cubicTo(
        size.width * 0.2889560,
        size.height * 0.2347925,
        size.width * 0.3181225,
        size.height * 0.2183340,
        size.width * 0.3320395,
        size.height * 0.1992925);
    path_6.cubicTo(
        size.width * 0.3332895,
        size.height * 0.1980425,
        size.width * 0.3320395,
        size.height * 0.1955005,
        size.width * 0.3320395,
        size.height * 0.1929590);
    path_6.cubicTo(
        size.width * 0.3106645,
        size.height * 0.2002925,
        size.width * 0.2872060,
        size.height * 0.2123755,
        size.width * 0.2640395,
        size.height * 0.2162090);
    path_6.cubicTo(
        size.width * 0.2219145,
        size.height * 0.2555840,
        size.width * 0.1892475,
        size.height * 0.3615005,
        size.width * 0.1926225,
        size.height * 0.3849590);
    path_6.cubicTo(
        size.width * 0.1964145,
        size.height * 0.4115840,
        size.width * 0.2103725,
        size.height * 0.4083755,
        size.width * 0.2103725,
        size.height * 0.4083755);
    path_6.cubicTo(
        size.width * 0.2033310,
        size.height * 0.4603340,
        size.width * 0.2053310,
        size.height * 0.5448750,
        size.width * 0.2147475,
        size.height * 0.6033350);
    path_6.cubicTo(
        size.width * 0.2283725,
        size.height * 0.5940850,
        size.width * 0.2419560,
        size.height * 0.5840850,
        size.width * 0.2585395,
        size.height * 0.5820000);
    path_6.cubicTo(
        size.width * 0.2585395,
        size.height * 0.6022500,
        size.width * 0.2522060,
        size.height * 0.6314150,
        size.width * 0.2686645,
        size.height * 0.6402900);
    path_6.cubicTo(
        size.width * 0.2889560,
        size.height * 0.6504150,
        size.width * 0.3041225,
        size.height * 0.6187500,
        size.width * 0.3244560,
        size.height * 0.6098750);
    path_6.cubicTo(
        size.width * 0.3269975,
        size.height * 0.6086250,
        size.width * 0.3307895,
        size.height * 0.6098750,
        size.width * 0.3307895,
        size.height * 0.6111250);
    path_6.cubicTo(
        size.width * 0.3345810,
        size.height * 0.6301250,
        size.width * 0.3295395,
        size.height * 0.6542100,
        size.width * 0.3421645,
        size.height * 0.6643750);
    path_6.cubicTo(
        size.width * 0.3561225,
        size.height * 0.6745000,
        size.width * 0.3674975,
        size.height * 0.6466250,
        size.width * 0.3827060,
        size.height * 0.6365000);
    path_6.cubicTo(
        size.width * 0.3903310,
        size.height * 0.6314150,
        size.width * 0.3966645,
        size.height * 0.6377500,
        size.width * 0.3979145,
        size.height * 0.6453750);
    path_6.cubicTo(
        size.width * 0.4004560,
        size.height * 0.6631250,
        size.width * 0.4042475,
        size.height * 0.6935400,
        size.width * 0.4257895,
        size.height * 0.6821250);
    path_6.cubicTo(
        size.width * 0.4435395,
        size.height * 0.6707500,
        size.width * 0.4460810,
        size.height * 0.6453750,
        size.width * 0.4625395,
        size.height * 0.6327100);
    path_6.cubicTo(
        size.width * 0.4650810,
        size.height * 0.6301650,
        size.width * 0.4701645,
        size.height * 0.6301650,
        size.width * 0.4739145,
        size.height * 0.6327100);
    path_6.cubicTo(
        size.width * 0.4878725,
        size.height * 0.6453750,
        size.width * 0.4916645,
        size.height * 0.6631250,
        size.width * 0.5030800,
        size.height * 0.6770850);
    path_6.cubicTo(
        size.width * 0.5145000,
        size.height * 0.6897500,
        size.width * 0.5284150,
        size.height * 0.6796250,
        size.width * 0.5360400,
        size.height * 0.6682100);
    path_6.cubicTo(
        size.width * 0.5436650,
        size.height * 0.6542500,
        size.width * 0.5500000,
        size.height * 0.6212900,
        size.width * 0.5652050,
        size.height * 0.6365000);
    path_6.cubicTo(
        size.width * 0.5829550,
        size.height * 0.6517100,
        size.width * 0.5994150,
        size.height * 0.6872100,
        size.width * 0.6235000,
        size.height * 0.6757900);
    path_6.cubicTo(
        size.width * 0.6374550,
        size.height * 0.6694600,
        size.width * 0.6285800,
        size.height * 0.6453750,
        size.width * 0.6387050,
        size.height * 0.6301250);
    path_6.cubicTo(
        size.width * 0.6399550,
        size.height * 0.6288750,
        size.width * 0.6437900,
        size.height * 0.6288750,
        size.width * 0.6463300,
        size.height * 0.6313750);
    path_6.cubicTo(
        size.width * 0.6590400,
        size.height * 0.6491250,
        size.width * 0.6780400,
        size.height * 0.6719150,
        size.width * 0.6945000,
        size.height * 0.6605400);
    path_6.cubicTo(
        size.width * 0.7059150,
        size.height * 0.6529150,
        size.width * 0.7021250,
        size.height * 0.6301250,
        size.width * 0.7071650,
        size.height * 0.6148750);
    path_6.cubicTo(
        size.width * 0.7084150,
        size.height * 0.6123350,
        size.width * 0.7122500,
        size.height * 0.6085400,
        size.width * 0.7135000,
        size.height * 0.6097900);
    path_6.cubicTo(
        size.width * 0.7241250,
        size.height * 0.6227500,
        size.width * 0.7389550,
        size.height * 0.6375000,
        size.width * 0.7539550,
        size.height * 0.6425400);
    path_6.cubicTo(
        size.width * 0.7724550,
        size.height * 0.5976650,
        size.width * 0.7688300,
        size.height * 0.5506250,
        size.width * 0.7688300,
        size.height * 0.5506250);
    path_6.lineTo(size.width * 0.7689150, size.height * 0.5507900);
    path_6.lineTo(size.width * 0.7689150, size.height * 0.5508750);
    path_6.lineTo(size.width * 0.7689550, size.height * 0.5508750);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.3934675, size.height * 0.4195015);
    path_7.cubicTo(
        size.width * 0.3847175,
        size.height * 0.4302935,
        size.width * 0.3750925,
        size.height * 0.4435435,
        size.width * 0.3732175,
        size.height * 0.4570435);
    path_7.cubicTo(
        size.width * 0.3720510,
        size.height * 0.4652935,
        size.width * 0.3762595,
        size.height * 0.4715850,
        size.width * 0.3855095,
        size.height * 0.4733765);
    path_7.cubicTo(
        size.width * 0.3968010,
        size.height * 0.4755435,
        size.width * 0.4073845,
        size.height * 0.4707515,
        size.width * 0.4138845,
        size.height * 0.4623765);
    path_7.cubicTo(
        size.width * 0.4180925,
        size.height * 0.4569600,
        size.width * 0.4210510,
        size.height * 0.4504600,
        size.width * 0.4224675,
        size.height * 0.4439185);
    path_7.cubicTo(
        size.width * 0.4235095,
        size.height * 0.4391685,
        size.width * 0.4127175,
        size.height * 0.4415850,
        size.width * 0.4114675,
        size.height * 0.4451265);
    path_7.cubicTo(
        size.width * 0.4094260,
        size.height * 0.4507935,
        size.width * 0.4078425,
        size.height * 0.4566265,
        size.width * 0.4065095,
        size.height * 0.4624600);
    path_7.cubicTo(
        size.width * 0.4043845,
        size.height * 0.4718350,
        size.width * 0.4023425,
        size.height * 0.4823350,
        size.width * 0.4047175,
        size.height * 0.4917935);
    path_7.cubicTo(
        size.width * 0.4071345,
        size.height * 0.5012500,
        size.width * 0.4161760,
        size.height * 0.5045450,
        size.width * 0.4263425,
        size.height * 0.5022950);
    path_7.cubicTo(
        size.width * 0.4404675,
        size.height * 0.4991265,
        size.width * 0.4509260,
        size.height * 0.4897515,
        size.width * 0.4553425,
        size.height * 0.4774185);
    path_7.cubicTo(
        size.width * 0.4580925,
        size.height * 0.4697100,
        size.width * 0.4590095,
        size.height * 0.4612515,
        size.width * 0.4579260,
        size.height * 0.4531685);
    path_7.cubicTo(
        size.width * 0.4574260,
        size.height * 0.4493350,
        size.width * 0.4482595,
        size.height * 0.4517935,
        size.width * 0.4473010,
        size.height * 0.4543765);
    path_7.cubicTo(
        size.width * 0.4453010,
        size.height * 0.4597100,
        size.width * 0.4438425,
        size.height * 0.4652515,
        size.width * 0.4429675,
        size.height * 0.4708765);
    path_7.cubicTo(
        size.width * 0.4416345,
        size.height * 0.4790435,
        size.width * 0.4410510,
        size.height * 0.4894600,
        size.width * 0.4472175,
        size.height * 0.4962515);
    path_7.cubicTo(
        size.width * 0.4549260,
        size.height * 0.5047500,
        size.width * 0.4705925,
        size.height * 0.5028350,
        size.width * 0.4803425,
        size.height * 0.4985015);
    path_7.cubicTo(
        size.width * 0.4912595,
        size.height * 0.4936685,
        size.width * 0.4974675,
        size.height * 0.4841265,
        size.width * 0.5001750,
        size.height * 0.4738350);
    path_7.cubicTo(
        size.width * 0.5019250,
        size.height * 0.4672515,
        size.width * 0.5023850,
        size.height * 0.4602100,
        size.width * 0.5016350,
        size.height * 0.4534185);
    path_7.cubicTo(
        size.width * 0.5012200,
        size.height * 0.4494185,
        size.width * 0.4903010,
        size.height * 0.4519600,
        size.width * 0.4907175,
        size.height * 0.4563765);
    path_7.cubicTo(
        size.width * 0.4921760,
        size.height * 0.4699600,
        size.width * 0.4978010,
        size.height * 0.4882515,
        size.width * 0.5122200,
        size.height * 0.4950435);
    path_7.cubicTo(
        size.width * 0.5208450,
        size.height * 0.4991265,
        size.width * 0.5325950,
        size.height * 0.4985850,
        size.width * 0.5385500,
        size.height * 0.4908765);
    path_7.cubicTo(
        size.width * 0.5436350,
        size.height * 0.4842935,
        size.width * 0.5433450,
        size.height * 0.4751265,
        size.width * 0.5427200,
        size.height * 0.4675015);
    path_7.cubicTo(
        size.width * 0.5422200,
        size.height * 0.4613765,
        size.width * 0.5413000,
        size.height * 0.4552515,
        size.width * 0.5397200,
        size.height * 0.4493350);
    path_7.cubicTo(
        size.width * 0.5386350,
        size.height * 0.4452100,
        size.width * 0.5278450,
        size.height * 0.4480015,
        size.width * 0.5288000,
        size.height * 0.4522935);
    path_7.cubicTo(
        size.width * 0.5319700,
        size.height * 0.4652515,
        size.width * 0.5383000,
        size.height * 0.4808765,
        size.width * 0.5504250,
        size.height * 0.4890850);
    path_7.cubicTo(
        size.width * 0.5580100,
        size.height * 0.4941685,
        size.width * 0.5696750,
        size.height * 0.4952100,
        size.width * 0.5770950,
        size.height * 0.4892515);
    path_7.cubicTo(
        size.width * 0.5836350,
        size.height * 0.4840435,
        size.width * 0.5835950,
        size.height * 0.4753350,
        size.width * 0.5828450,
        size.height * 0.4681685);
    path_7.cubicTo(
        size.width * 0.5822200,
        size.height * 0.4621265,
        size.width * 0.5808850,
        size.height * 0.4560435,
        size.width * 0.5788850,
        size.height * 0.4502515);
    path_7.lineTo(size.width * 0.5684700, size.height * 0.4539185);
    path_7.cubicTo(
        size.width * 0.5715500,
        size.height * 0.4581685,
        size.width * 0.5751750,
        size.height * 0.4624600,
        size.width * 0.5794250,
        size.height * 0.4658350);
    path_7.cubicTo(
        size.width * 0.5840950,
        size.height * 0.4695015,
        size.width * 0.5939250,
        size.height * 0.4726685,
        size.width * 0.5977200,
        size.height * 0.4659600);
    path_7.cubicTo(
        size.width * 0.6002600,
        size.height * 0.4615435,
        size.width * 0.5958450,
        size.height * 0.4549600,
        size.width * 0.5937200,
        size.height * 0.4511265);
    path_7.cubicTo(
        size.width * 0.5915950,
        size.height * 0.4472935,
        size.width * 0.5891750,
        size.height * 0.4434600,
        size.width * 0.5866350,
        size.height * 0.4397515);
    path_7.cubicTo(
        size.width * 0.5845500,
        size.height * 0.4367515,
        size.width * 0.5745500,
        size.height * 0.4397515,
        size.width * 0.5762200,
        size.height * 0.4434185);
    path_7.cubicTo(
        size.width * 0.5812200,
        size.height * 0.4542100,
        size.width * 0.5910950,
        size.height * 0.4672100,
        size.width * 0.6054250,
        size.height * 0.4675435);
    path_7.cubicTo(
        size.width * 0.6122200,
        size.height * 0.4677100,
        size.width * 0.6204700,
        size.height * 0.4647935,
        size.width * 0.6205500,
        size.height * 0.4577100);
    path_7.cubicTo(
        size.width * 0.6206350,
        size.height * 0.4515015,
        size.width * 0.6163450,
        size.height * 0.4453350,
        size.width * 0.6128850,
        size.height * 0.4403350);
    path_7.cubicTo(
        size.width * 0.6100100,
        size.height * 0.4360850,
        size.width * 0.6067600,
        size.height * 0.4318765,
        size.width * 0.6032200,
        size.height * 0.4279600);
    path_7.cubicTo(
        size.width * 0.6003850,
        size.height * 0.4247935,
        size.width * 0.5900100,
        size.height * 0.4287515,
        size.width * 0.5932200,
        size.height * 0.4323765);
    path_7.cubicTo(
        size.width * 0.6001350,
        size.height * 0.4401685,
        size.width * 0.6087200,
        size.height * 0.4500015,
        size.width * 0.6093850,
        size.height * 0.4602100);
    path_7.cubicTo(
        size.width * 0.6093850,
        size.height * 0.4608350,
        size.width * 0.6086750,
        size.height * 0.4616685,
        size.width * 0.6096350,
        size.height * 0.4609185);
    path_7.cubicTo(
        size.width * 0.6103450,
        size.height * 0.4602935,
        size.width * 0.6095100,
        size.height * 0.4610015,
        size.width * 0.6086750,
        size.height * 0.4609185);
    path_7.cubicTo(
        size.width * 0.6078000,
        size.height * 0.4608765,
        size.width * 0.6071350,
        size.height * 0.4607935,
        size.width * 0.6063000,
        size.height * 0.4605435);
    path_7.cubicTo(
        size.width * 0.6021350,
        size.height * 0.4595015,
        size.width * 0.5988000,
        size.height * 0.4565435,
        size.width * 0.5960950,
        size.height * 0.4536685);
    path_7.cubicTo(
        size.width * 0.5923850,
        size.height * 0.4497515,
        size.width * 0.5892600,
        size.height * 0.4452100,
        size.width * 0.5870500,
        size.height * 0.4404600);
    path_7.lineTo(size.width * 0.5766350, size.height * 0.4441265);
    path_7.cubicTo(
        size.width * 0.5806350,
        size.height * 0.4499185,
        size.width * 0.5860950,
        size.height * 0.4569600,
        size.width * 0.5871750,
        size.height * 0.4638350);
    path_7.cubicTo(
        size.width * 0.5871750,
        size.height * 0.4639185,
        size.width * 0.5873000,
        size.height * 0.4656265,
        size.width * 0.5872200,
        size.height * 0.4655850);
    path_7.cubicTo(
        size.width * 0.5865500,
        size.height * 0.4650435,
        size.width * 0.5928000,
        size.height * 0.4643765,
        size.width * 0.5915950,
        size.height * 0.4627935);
    path_7.cubicTo(
        size.width * 0.5910500,
        size.height * 0.4620850,
        size.width * 0.5893850,
        size.height * 0.4614185,
        size.width * 0.5886350,
        size.height * 0.4607935);
    path_7.cubicTo(
        size.width * 0.5875500,
        size.height * 0.4599600,
        size.width * 0.5865950,
        size.height * 0.4589600,
        size.width * 0.5855950,
        size.height * 0.4580015);
    path_7.cubicTo(
        size.width * 0.5829250,
        size.height * 0.4553350,
        size.width * 0.5805100,
        size.height * 0.4524600,
        size.width * 0.5783000,
        size.height * 0.4494185);
    path_7.cubicTo(
        size.width * 0.5760950,
        size.height * 0.4463765,
        size.width * 0.5665500,
        size.height * 0.4492515,
        size.width * 0.5678850,
        size.height * 0.4530850);
    path_7.cubicTo(
        size.width * 0.5709700,
        size.height * 0.4619600,
        size.width * 0.5746350,
        size.height * 0.4743350,
        size.width * 0.5707200,
        size.height * 0.4833765);
    path_7.cubicTo(
        size.width * 0.5698000,
        size.height * 0.4855435,
        size.width * 0.5688450,
        size.height * 0.4865850,
        size.width * 0.5671750,
        size.height * 0.4865435);
    path_7.cubicTo(
        size.width * 0.5635950,
        size.height * 0.4864185,
        size.width * 0.5604700,
        size.height * 0.4847935,
        size.width * 0.5578000,
        size.height * 0.4827935);
    path_7.cubicTo(
        size.width * 0.5513850,
        size.height * 0.4777935,
        size.width * 0.5474250,
        size.height * 0.4703765,
        size.width * 0.5443850,
        size.height * 0.4634185);
    path_7.cubicTo(
        size.width * 0.5424250,
        size.height * 0.4588350,
        size.width * 0.5406750,
        size.height * 0.4541265,
        size.width * 0.5395500,
        size.height * 0.4493350);
    path_7.lineTo(size.width * 0.5286350, size.height * 0.4522935);
    path_7.cubicTo(
        size.width * 0.5313450,
        size.height * 0.4625435,
        size.width * 0.5335500,
        size.height * 0.4746265,
        size.width * 0.5306350,
        size.height * 0.4850435);
    path_7.cubicTo(
        size.width * 0.5300100,
        size.height * 0.4871685,
        size.width * 0.5286350,
        size.height * 0.4900850,
        size.width * 0.5270500,
        size.height * 0.4909600);
    path_7.cubicTo(
        size.width * 0.5265100,
        size.height * 0.4909600,
        size.width * 0.5279250,
        size.height * 0.4904600,
        size.width * 0.5270500,
        size.height * 0.4909600);
    path_7.cubicTo(
        size.width * 0.5264700,
        size.height * 0.4909600,
        size.width * 0.5258850,
        size.height * 0.4909600,
        size.width * 0.5253000,
        size.height * 0.4909600);
    path_7.cubicTo(
        size.width * 0.5231750,
        size.height * 0.4907100,
        size.width * 0.5210950,
        size.height * 0.4900435,
        size.width * 0.5192600,
        size.height * 0.4890015);
    path_7.cubicTo(
        size.width * 0.5117600,
        size.height * 0.4849600,
        size.width * 0.5077600,
        size.height * 0.4767935,
        size.width * 0.5051350,
        size.height * 0.4695850);
    path_7.cubicTo(
        size.width * 0.5033000,
        size.height * 0.4644185,
        size.width * 0.5018850,
        size.height * 0.4590015,
        size.width * 0.5013450,
        size.height * 0.4535435);
    path_7.lineTo(size.width * 0.4904260, size.height * 0.4565015);
    path_7.cubicTo(
        size.width * 0.4905510,
        size.height * 0.4573350,
        size.width * 0.4904260,
        size.height * 0.4564185,
        size.width * 0.4904260,
        size.height * 0.4567935);
    path_7.cubicTo(
        size.width * 0.4903425,
        size.height * 0.4578350,
        size.width * 0.4904675,
        size.height * 0.4589185,
        size.width * 0.4905095,
        size.height * 0.4599600);
    path_7.cubicTo(
        size.width * 0.4905925,
        size.height * 0.4632100,
        size.width * 0.4903425,
        size.height * 0.4664600,
        size.width * 0.4898425,
        size.height * 0.4696685);
    path_7.cubicTo(
        size.width * 0.4887175,
        size.height * 0.4774185,
        size.width * 0.4860095,
        size.height * 0.4859185,
        size.width * 0.4791345,
        size.height * 0.4912515);
    path_7.cubicTo(
        size.width * 0.4731760,
        size.height * 0.4958765,
        size.width * 0.4619260,
        size.height * 0.4980850,
        size.width * 0.4565510,
        size.height * 0.4918350);
    path_7.cubicTo(
        size.width * 0.4516345,
        size.height * 0.4861265,
        size.width * 0.4524675,
        size.height * 0.4772515,
        size.width * 0.4534675,
        size.height * 0.4705850);
    path_7.cubicTo(
        size.width * 0.4540095,
        size.height * 0.4669185,
        size.width * 0.4548425,
        size.height * 0.4632515,
        size.width * 0.4559260,
        size.height * 0.4596265);
    path_7.cubicTo(
        size.width * 0.4562595,
        size.height * 0.4584185,
        size.width * 0.4566345,
        size.height * 0.4572100,
        size.width * 0.4570510,
        size.height * 0.4559600);
    path_7.cubicTo(
        size.width * 0.4571345,
        size.height * 0.4556265,
        size.width * 0.4573845,
        size.height * 0.4552100,
        size.width * 0.4574260,
        size.height * 0.4548350);
    path_7.cubicTo(
        size.width * 0.4574260,
        size.height * 0.4550435,
        size.width * 0.4571345,
        size.height * 0.4556685,
        size.width * 0.4573010,
        size.height * 0.4551685);
    path_7.lineTo(size.width * 0.4466760, size.height * 0.4563765);
    path_7.cubicTo(
        size.width * 0.4468425,
        size.height * 0.4578350,
        size.width * 0.4469260,
        size.height * 0.4589185,
        size.width * 0.4468845,
        size.height * 0.4610015);
    path_7.cubicTo(
        size.width * 0.4468845,
        size.height * 0.4649185,
        size.width * 0.4465925,
        size.height * 0.4687935,
        size.width * 0.4457595,
        size.height * 0.4726265);
    path_7.cubicTo(
        size.width * 0.4436760,
        size.height * 0.4822935,
        size.width * 0.4381345,
        size.height * 0.4919600,
        size.width * 0.4273010,
        size.height * 0.4956265);
    path_7.cubicTo(
        size.width * 0.4241345,
        size.height * 0.4967100,
        size.width * 0.4212175,
        size.height * 0.4973765,
        size.width * 0.4187595,
        size.height * 0.4956265);
    path_7.cubicTo(
        size.width * 0.4160095,
        size.height * 0.4935850,
        size.width * 0.4151760,
        size.height * 0.4898765,
        size.width * 0.4147175,
        size.height * 0.4868765);
    path_7.cubicTo(
        size.width * 0.4133845,
        size.height * 0.4785015,
        size.width * 0.4152595,
        size.height * 0.4695015,
        size.width * 0.4172175,
        size.height * 0.4612100);
    path_7.cubicTo(
        size.width * 0.4185510,
        size.height * 0.4555015,
        size.width * 0.4201345,
        size.height * 0.4497515,
        size.width * 0.4220925,
        size.height * 0.4442100);
    path_7.lineTo(size.width * 0.4110925, size.height * 0.4454185);
    path_7.cubicTo(
        size.width * 0.4093010,
        size.height * 0.4535015,
        size.width * 0.4031760,
        size.height * 0.4691685,
        size.width * 0.3914675,
        size.height * 0.4672935);
    path_7.cubicTo(
        size.width * 0.3745095,
        size.height * 0.4645850,
        size.width * 0.3892595,
        size.height * 0.4409600,
        size.width * 0.3938010,
        size.height * 0.4338350);
    path_7.cubicTo(
        size.width * 0.3956760,
        size.height * 0.4308765,
        size.width * 0.3977175,
        size.height * 0.4279185,
        size.width * 0.3998845,
        size.height * 0.4250435);
    path_7.cubicTo(
        size.width * 0.4007595,
        size.height * 0.4238350,
        size.width * 0.4015510,
        size.height * 0.4228350,
        size.width * 0.4022595,
        size.height * 0.4219600);
    path_7.cubicTo(
        size.width * 0.4063010,
        size.height * 0.4170015,
        size.width * 0.3958010,
        size.height * 0.4164600,
        size.width * 0.3931760,
        size.height * 0.4197515);
    path_7.lineTo(size.width * 0.3932595, size.height * 0.4196685);
    path_7.lineTo(size.width * 0.3933845, size.height * 0.4196685);
    path_7.lineTo(size.width * 0.3934675, size.height * 0.4195015);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff6C9DC4).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.5429600, size.height * 0.4411670);
    path_8.lineTo(size.width * 0.3977540, size.height * 0.4444585);
    path_8.lineTo(size.width * 0.3999205, size.height * 0.5809600);
    path_8.lineTo(size.width * 0.5720850, size.height * 0.5813750);
    path_8.lineTo(size.width * 0.6018350, size.height * 0.5873350);
    path_8.lineTo(size.width * 0.6048350, size.height * 0.4542505);
    path_8.lineTo(size.width * 0.5429600, size.height * 0.4411670);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xffF1D79B).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.4897070, size.height * 0.5545850);
    path_9.lineTo(size.width * 0.4899570, size.height * 0.5727500);
    path_9.lineTo(size.width * 0.5256650, size.height * 0.5732950);
    path_9.lineTo(size.width * 0.5255000, size.height * 0.5547500);
    path_9.lineTo(size.width * 0.4897070, size.height * 0.5545850);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.4883280, size.height * 0.4424170);
    path_10.lineTo(size.width * 0.4375780, size.height * 0.4435835);
    path_10.cubicTo(
        size.width * 0.4472030,
        size.height * 0.4645835,
        size.width * 0.4773700,
        size.height * 0.4674585,
        size.width * 0.4883280,
        size.height * 0.4424170);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xffCAA87A).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.7136150, size.height * 0.6100000);
    path_11.cubicTo(
        size.width * 0.7123650,
        size.height * 0.6087500,
        size.width * 0.7085350,
        size.height * 0.6125450,
        size.width * 0.7072850,
        size.height * 0.6150850);
    path_11.cubicTo(
        size.width * 0.7022000,
        size.height * 0.6302950,
        size.width * 0.7060350,
        size.height * 0.6531250,
        size.width * 0.6946150,
        size.height * 0.6607500);
    path_11.cubicTo(
        size.width * 0.6781600,
        size.height * 0.6721700,
        size.width * 0.6591600,
        size.height * 0.6493750,
        size.width * 0.6464500,
        size.height * 0.6316250);
    path_11.cubicTo(
        size.width * 0.6439100,
        size.height * 0.6290850,
        size.width * 0.6401150,
        size.height * 0.6290850,
        size.width * 0.6388250,
        size.height * 0.6303750);
    path_11.cubicTo(
        size.width * 0.6287000,
        size.height * 0.6455850,
        size.width * 0.6375750,
        size.height * 0.6696700,
        size.width * 0.6236150,
        size.height * 0.6760450);
    path_11.cubicTo(
        size.width * 0.5995350,
        size.height * 0.6874200,
        size.width * 0.5830750,
        size.height * 0.6519600,
        size.width * 0.5653250,
        size.height * 0.6367500);
    path_11.cubicTo(
        size.width * 0.5501150,
        size.height * 0.6215450,
        size.width * 0.5437850,
        size.height * 0.6545000,
        size.width * 0.5361600,
        size.height * 0.6684600);
    path_11.cubicTo(
        size.width * 0.5285350,
        size.height * 0.6798750,
        size.width * 0.5146150,
        size.height * 0.6900000,
        size.width * 0.5032000,
        size.height * 0.6773350);
    path_11.cubicTo(
        size.width * 0.4918240,
        size.height * 0.6633750,
        size.width * 0.4879910,
        size.height * 0.6456250,
        size.width * 0.4740325,
        size.height * 0.6329600);
    path_11.cubicTo(
        size.width * 0.4701990,
        size.height * 0.6304200,
        size.width * 0.4651575,
        size.height * 0.6304200,
        size.width * 0.4626160,
        size.height * 0.6329600);
    path_11.cubicTo(
        size.width * 0.4461575,
        size.height * 0.6456250,
        size.width * 0.4436160,
        size.height * 0.6710000,
        size.width * 0.4258660,
        size.height * 0.6823750);
    path_11.cubicTo(
        size.width * 0.4043240,
        size.height * 0.6937950,
        size.width * 0.4005325,
        size.height * 0.6633750,
        size.width * 0.3979910,
        size.height * 0.6456250);
    path_11.cubicTo(
        size.width * 0.3967410,
        size.height * 0.6380000,
        size.width * 0.3903660,
        size.height * 0.6316700,
        size.width * 0.3827825,
        size.height * 0.6367500);
    path_11.cubicTo(
        size.width * 0.3675740,
        size.height * 0.6468750,
        size.width * 0.3561575,
        size.height * 0.6747950,
        size.width * 0.3422410,
        size.height * 0.6646250);
    path_11.cubicTo(
        size.width * 0.3295740,
        size.height * 0.6545000,
        size.width * 0.3346160,
        size.height * 0.6304200,
        size.width * 0.3308660,
        size.height * 0.6113750);
    path_11.cubicTo(
        size.width * 0.3308660,
        size.height * 0.6101250,
        size.width * 0.3270740,
        size.height * 0.6088350,
        size.width * 0.3245325,
        size.height * 0.6101250);
    path_11.cubicTo(
        size.width * 0.3042410,
        size.height * 0.6190000,
        size.width * 0.2890740,
        size.height * 0.6506700,
        size.width * 0.2687410,
        size.height * 0.6405450);
    path_11.cubicTo(
        size.width * 0.2522825,
        size.height * 0.6316700,
        size.width * 0.2586160,
        size.height * 0.6025000,
        size.width * 0.2586160,
        size.height * 0.5822500);
    path_11.cubicTo(
        size.width * 0.2420325,
        size.height * 0.5843350,
        size.width * 0.2284910,
        size.height * 0.5942950,
        size.width * 0.2148240,
        size.height * 0.6035850);
    path_11.cubicTo(
        size.width * 0.2181575,
        size.height * 0.6242500,
        size.width * 0.2224075,
        size.height * 0.6416700,
        size.width * 0.2275325,
        size.height * 0.6532500);
    path_11.cubicTo(
        size.width * 0.2471990,
        size.height * 0.6976250,
        size.width * 0.2845740,
        size.height * 0.6538750,
        size.width * 0.2845740,
        size.height * 0.6538750);
    path_11.cubicTo(
        size.width * 0.2845740,
        size.height * 0.6538750,
        size.width * 0.2833240,
        size.height * 0.7261250,
        size.width * 0.3156160,
        size.height * 0.7299200);
    path_11.cubicTo(
        size.width * 0.3382410,
        size.height * 0.7325850,
        size.width * 0.3453240,
        size.height * 0.7091250,
        size.width * 0.3475740,
        size.height * 0.6948350);
    path_11.cubicTo(
        size.width * 0.3480325,
        size.height * 0.6882950,
        size.width * 0.3485740,
        size.height * 0.6842500,
        size.width * 0.3485740,
        size.height * 0.6842500);
    path_11.cubicTo(
        size.width * 0.3485740,
        size.height * 0.6842500,
        size.width * 0.3484910,
        size.height * 0.6887100,
        size.width * 0.3475740,
        size.height * 0.6948350);
    path_11.cubicTo(
        size.width * 0.3457825,
        size.height * 0.7209200,
        size.width * 0.3456575,
        size.height * 0.7867950,
        size.width * 0.3897825,
        size.height * 0.7939200);
    path_11.cubicTo(
        size.width * 0.4347410,
        size.height * 0.8011700,
        size.width * 0.4464075,
        size.height * 0.7325000,
        size.width * 0.4491990,
        size.height * 0.7069600);
    path_11.cubicTo(
        size.width * 0.4492825,
        size.height * 0.7013750,
        size.width * 0.4499910,
        size.height * 0.6976250,
        size.width * 0.4499910,
        size.height * 0.6976250);
    path_11.cubicTo(
        size.width * 0.4499910,
        size.height * 0.6976250,
        size.width * 0.4498240,
        size.height * 0.7012100,
        size.width * 0.4491990,
        size.height * 0.7069600);
    path_11.cubicTo(
        size.width * 0.4490740,
        size.height * 0.7200000,
        size.width * 0.4526160,
        size.height * 0.7428750,
        size.width * 0.4778660,
        size.height * 0.7508350);
    path_11.cubicTo(
        size.width * 0.5139900,
        size.height * 0.7622100,
        size.width * 0.5266600,
        size.height * 0.7178750,
        size.width * 0.5266600,
        size.height * 0.7178750);
    path_11.cubicTo(
        size.width * 0.5317400,
        size.height * 0.7324600,
        size.width * 0.5500750,
        size.height * 0.7134600,
        size.width * 0.5500750,
        size.height * 0.7134600);
    path_11.cubicTo(
        size.width * 0.5551600,
        size.height * 0.7413350,
        size.width * 0.5747850,
        size.height * 0.7191700,
        size.width * 0.5747850,
        size.height * 0.7191700);
    path_11.cubicTo(
        size.width * 0.5779500,
        size.height * 0.7413350,
        size.width * 0.5925350,
        size.height * 0.7267950,
        size.width * 0.5925350,
        size.height * 0.7267950);
    path_11.cubicTo(
        size.width * 0.5906150,
        size.height * 0.7464600,
        size.width * 0.5988650,
        size.height * 0.7489600,
        size.width * 0.5988650,
        size.height * 0.7489600);
    path_11.cubicTo(
        size.width * 0.6138650,
        size.height * 0.7516700,
        size.width * 0.6207850,
        size.height * 0.7444200,
        size.width * 0.6238650,
        size.height * 0.7360450);
    path_11.cubicTo(
        size.width * 0.6242000,
        size.height * 0.7248350,
        size.width * 0.6261150,
        size.height * 0.7160000,
        size.width * 0.6261150,
        size.height * 0.7160000);
    path_11.cubicTo(
        size.width * 0.6261150,
        size.height * 0.7160000,
        size.width * 0.6273250,
        size.height * 0.7267100,
        size.width * 0.6238650,
        size.height * 0.7360450);
    path_11.cubicTo(
        size.width * 0.6232850,
        size.height * 0.7544200,
        size.width * 0.6267850,
        size.height * 0.7792950,
        size.width * 0.6493250,
        size.height * 0.7829600);
    path_11.cubicTo(
        size.width * 0.6856600,
        size.height * 0.7888750,
        size.width * 0.6864900,
        size.height * 0.7128350,
        size.width * 0.6864900,
        size.height * 0.7128350);
    path_11.cubicTo(
        size.width * 0.7220350,
        size.height * 0.6985000,
        size.width * 0.7423650,
        size.height * 0.6711250,
        size.width * 0.7539900,
        size.height * 0.6429600);
    path_11.cubicTo(
        size.width * 0.7389500,
        size.height * 0.6378750,
        size.width * 0.7241600,
        size.height * 0.6231250,
        size.width * 0.7135350,
        size.height * 0.6102100);
    path_11.lineTo(size.width * 0.7135350, size.height * 0.6100850);
    path_11.lineTo(size.width * 0.7136150, size.height * 0.6100000);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.6261150, size.height * 0.7158750);
    path_12.cubicTo(
        size.width * 0.6261150,
        size.height * 0.7158750,
        size.width * 0.6242400,
        size.height * 0.7247050,
        size.width * 0.6238650,
        size.height * 0.7359150);
    path_12.cubicTo(
        size.width * 0.6273250,
        size.height * 0.7265800,
        size.width * 0.6261150,
        size.height * 0.7158750,
        size.width * 0.6261150,
        size.height * 0.7158750);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff73A3D0).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.3724250, size.height * 0.3653345);
    path_13.cubicTo(
        size.width * 0.3720085,
        size.height * 0.3843345,
        size.width * 0.3773420,
        size.height * 0.3999595,
        size.width * 0.3843420,
        size.height * 0.4002095);
    path_13.cubicTo(
        size.width * 0.3913420,
        size.height * 0.4005010,
        size.width * 0.3973420,
        size.height * 0.3852930,
        size.width * 0.3977585,
        size.height * 0.3662510);
    path_13.cubicTo(
        size.width * 0.3981750,
        size.height * 0.3472510,
        size.width * 0.3928420,
        size.height * 0.3316260,
        size.width * 0.3858420,
        size.height * 0.3313760);
    path_13.cubicTo(
        size.width * 0.3788835,
        size.height * 0.3310845,
        size.width * 0.3728420,
        size.height * 0.3462930,
        size.width * 0.3724250,
        size.height * 0.3653345);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.5740850, size.height * 0.3653345);
    path_14.cubicTo(
        size.width * 0.5736700,
        size.height * 0.3843345,
        size.width * 0.5790000,
        size.height * 0.3999595,
        size.width * 0.5860000,
        size.height * 0.4002095);
    path_14.cubicTo(
        size.width * 0.5930000,
        size.height * 0.4005010,
        size.width * 0.5990000,
        size.height * 0.3852930,
        size.width * 0.5994200,
        size.height * 0.3662510);
    path_14.cubicTo(
        size.width * 0.5998350,
        size.height * 0.3472510,
        size.width * 0.5945000,
        size.height * 0.3316260,
        size.width * 0.5875000,
        size.height * 0.3313760);
    path_14.cubicTo(
        size.width * 0.5805450,
        size.height * 0.3310845,
        size.width * 0.5745000,
        size.height * 0.3462930,
        size.width * 0.5740850,
        size.height * 0.3653345);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xff181818).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.4090025, size.height * 0.3028335);
    path_15.cubicTo(
        size.width * 0.4157525,
        size.height * 0.3061670,
        size.width * 0.4150440,
        size.height * 0.3160420,
        size.width * 0.4080440,
        size.height * 0.3187500);
    path_15.cubicTo(
        size.width * 0.3880855,
        size.height * 0.3264585,
        size.width * 0.3425440,
        size.height * 0.3417920,
        size.width * 0.3376690,
        size.height * 0.3237500);
    path_15.cubicTo(
        size.width * 0.3326275,
        size.height * 0.3050835,
        size.width * 0.3875440,
        size.height * 0.2922500,
        size.width * 0.4089605,
        size.height * 0.3027920);
    path_15.lineTo(size.width * 0.4090025, size.height * 0.3028335);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.5720500, size.height * 0.3000395);
    path_16.cubicTo(
        size.width * 0.5651300,
        size.height * 0.3029980,
        size.width * 0.5653400,
        size.height * 0.3129145,
        size.width * 0.5721750,
        size.height * 0.3159980);
    path_16.cubicTo(
        size.width * 0.5917150,
        size.height * 0.3247065,
        size.width * 0.6364250,
        size.height * 0.3423315,
        size.width * 0.6422150,
        size.height * 0.3245815);
    path_16.cubicTo(
        size.width * 0.6482150,
        size.height * 0.3062065,
        size.width * 0.5940050,
        size.height * 0.2905815,
        size.width * 0.5720500,
        size.height * 0.3000395);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xff6193BC).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.4414920, size.height * 0.3670825);
    path_17.cubicTo(
        size.width * 0.4412420,
        size.height * 0.4000825,
        size.width * 0.4203670,
        size.height * 0.4304990,
        size.width * 0.3890755,
        size.height * 0.4415825);
    path_17.cubicTo(
        size.width * 0.3577840,
        size.height * 0.4526660,
        size.width * 0.3227840,
        size.height * 0.4429575,
        size.width * 0.3016170,
        size.height * 0.4176660);
    path_17.cubicTo(
        size.width * 0.2804505,
        size.height * 0.3923740,
        size.width * 0.2775340,
        size.height * 0.3543740,
        size.width * 0.2949090,
        size.height * 0.3259160);
    path_17.cubicTo(
        size.width * 0.3122840,
        size.height * 0.2974575,
        size.width * 0.3457840,
        size.height * 0.2830410,
        size.width * 0.3780340,
        size.height * 0.2895410);
    path_17.cubicTo(
        size.width * 0.4147005,
        size.height * 0.2969990,
        size.width * 0.4412420,
        size.height * 0.3298325,
        size.width * 0.4414920,
        size.height * 0.3670825);
    path_17.cubicTo(
        size.width * 0.4414920,
        size.height * 0.3708325,
        size.width * 0.4473255,
        size.height * 0.3708325,
        size.width * 0.4472840,
        size.height * 0.3670825);
    path_17.cubicTo(
        size.width * 0.4470340,
        size.height * 0.3317910,
        size.width * 0.4248670,
        size.height * 0.2997075,
        size.width * 0.3916590,
        size.height * 0.2874160);
    path_17.cubicTo(
        size.width * 0.3584505,
        size.height * 0.2751240,
        size.width * 0.3193255,
        size.height * 0.2856660,
        size.width * 0.2967840,
        size.height * 0.3132490);
    path_17.cubicTo(
        size.width * 0.2742840,
        size.height * 0.3408325,
        size.width * 0.2712840,
        size.height * 0.3807075,
        size.width * 0.2898670,
        size.height * 0.4111660);
    path_17.cubicTo(
        size.width * 0.3084505,
        size.height * 0.4416240,
        size.width * 0.3447005,
        size.height * 0.4572075,
        size.width * 0.3795340,
        size.height * 0.4501660);
    path_17.cubicTo(
        size.width * 0.4187005,
        size.height * 0.4422075,
        size.width * 0.4469505,
        size.height * 0.4067490,
        size.width * 0.4472420,
        size.height * 0.3670410);
    path_17.cubicTo(
        size.width * 0.4472420,
        size.height * 0.3632910,
        size.width * 0.4414505,
        size.height * 0.3632910,
        size.width * 0.4414505,
        size.height * 0.3670410);
    path_17.lineTo(size.width * 0.4414920, size.height * 0.3670410);
    path_17.lineTo(size.width * 0.4414920, size.height * 0.3670825);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.6903000, size.height * 0.3670825);
    path_18.cubicTo(
        size.width * 0.6900500,
        size.height * 0.4000825,
        size.width * 0.6691750,
        size.height * 0.4304990,
        size.width * 0.6378850,
        size.height * 0.4415825);
    path_18.cubicTo(
        size.width * 0.6065900,
        size.height * 0.4526660,
        size.width * 0.5715900,
        size.height * 0.4429575,
        size.width * 0.5504250,
        size.height * 0.4176660);
    path_18.cubicTo(
        size.width * 0.5292600,
        size.height * 0.3923740,
        size.width * 0.5263400,
        size.height * 0.3543740,
        size.width * 0.5437150,
        size.height * 0.3259160);
    path_18.cubicTo(
        size.width * 0.5610900,
        size.height * 0.2974575,
        size.width * 0.5945900,
        size.height * 0.2830410,
        size.width * 0.6268400,
        size.height * 0.2895410);
    path_18.cubicTo(
        size.width * 0.6635100,
        size.height * 0.2969990,
        size.width * 0.6900500,
        size.height * 0.3298325,
        size.width * 0.6903000,
        size.height * 0.3670825);
    path_18.cubicTo(
        size.width * 0.6903000,
        size.height * 0.3708325,
        size.width * 0.6961350,
        size.height * 0.3708325,
        size.width * 0.6960900,
        size.height * 0.3670825);
    path_18.cubicTo(
        size.width * 0.6958400,
        size.height * 0.3317910,
        size.width * 0.6736750,
        size.height * 0.2997075,
        size.width * 0.6404650,
        size.height * 0.2874160);
    path_18.cubicTo(
        size.width * 0.6072600,
        size.height * 0.2751240,
        size.width * 0.5681350,
        size.height * 0.2856660,
        size.width * 0.5455900,
        size.height * 0.3132490);
    path_18.cubicTo(
        size.width * 0.5230900,
        size.height * 0.3408325,
        size.width * 0.5200900,
        size.height * 0.3807075,
        size.width * 0.5386750,
        size.height * 0.4111660);
    path_18.cubicTo(
        size.width * 0.5572600,
        size.height * 0.4416240,
        size.width * 0.5935100,
        size.height * 0.4572075,
        size.width * 0.6283400,
        size.height * 0.4501660);
    path_18.cubicTo(
        size.width * 0.6675100,
        size.height * 0.4422075,
        size.width * 0.6957600,
        size.height * 0.4067490,
        size.width * 0.6960500,
        size.height * 0.3670410);
    path_18.cubicTo(
        size.width * 0.6960500,
        size.height * 0.3632910,
        size.width * 0.6902600,
        size.height * 0.3632910,
        size.width * 0.6902600,
        size.height * 0.3670410);
    path_18.lineTo(size.width * 0.6903000, size.height * 0.3670825);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.4458800, size.height * 0.3696265);
    path_19.cubicTo(
        size.width * 0.4530465,
        size.height * 0.3642930,
        size.width * 0.4618380,
        size.height * 0.3606680,
        size.width * 0.4704215,
        size.height * 0.3584180);
    path_19.cubicTo(
        size.width * 0.4906715,
        size.height * 0.3531265,
        size.width * 0.5108400,
        size.height * 0.3575850,
        size.width * 0.5277950,
        size.height * 0.3696265);
    path_19.cubicTo(
        size.width * 0.5308400,
        size.height * 0.3717515,
        size.width * 0.5337550,
        size.height * 0.3667515,
        size.width * 0.5307150,
        size.height * 0.3646265);
    path_19.cubicTo(
        size.width * 0.5130900,
        size.height * 0.3521265,
        size.width * 0.4919215,
        size.height * 0.3474600,
        size.width * 0.4708380,
        size.height * 0.3523765);
    path_19.cubicTo(
        size.width * 0.4611300,
        size.height * 0.3546265,
        size.width * 0.4509630,
        size.height * 0.3586265,
        size.width * 0.4429215,
        size.height * 0.3646265);
    path_19.cubicTo(
        size.width * 0.4399630,
        size.height * 0.3668350,
        size.width * 0.4428380,
        size.height * 0.3718765,
        size.width * 0.4458380,
        size.height * 0.3696265);
    path_19.lineTo(size.width * 0.4458800, size.height * 0.3696265);
    path_19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xffDDDDDD).withOpacity(1.0);
    canvas.drawPath(path_19, paint19Fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.4790820, size.height * 0.05408300);
    path_20.cubicTo(
        size.width * 0.4790820,
        size.height * 0.05408300,
        size.width * 0.5034550,
        size.height * 0.04449960,
        size.width * 0.5023750,
        size.height * 0.1000415);
    path_20.cubicTo(
        size.width * 0.5023750,
        size.height * 0.1000415,
        size.width * 0.5147050,
        size.height * 0.05749950,
        size.width * 0.5370400,
        size.height * 0.06199950);
    path_20.cubicTo(
        size.width * 0.5593300,
        size.height * 0.06654150,
        size.width * 0.5210000,
        size.height * 0.1127080,
        size.width * 0.5210000,
        size.height * 0.1127080);
    path_20.cubicTo(
        size.width * 0.5210000,
        size.height * 0.1127080,
        size.width * 0.5616650,
        size.height * 0.07687450,
        size.width * 0.5775800,
        size.height * 0.09579150);
    path_20.cubicTo(
        size.width * 0.5935400,
        size.height * 0.1147080,
        size.width * 0.5325400,
        size.height * 0.1304580,
        size.width * 0.5325400,
        size.height * 0.1304580);
    path_20.cubicTo(
        size.width * 0.5325400,
        size.height * 0.1304580,
        size.width * 0.6832050,
        size.height * 0.08908300,
        size.width * 0.7525000,
        size.height * 0.2082080);
    path_20.cubicTo(
        size.width * 0.7525000,
        size.height * 0.2082080,
        size.width * 0.6724150,
        size.height * 0.1055410,
        size.width * 0.5247900,
        size.height * 0.1410410);
    path_20.cubicTo(
        size.width * 0.5247900,
        size.height * 0.1410410,
        size.width * 0.5110400,
        size.height * 0.1334160,
        size.width * 0.5307050,
        size.height * 0.1262495);
    path_20.cubicTo(
        size.width * 0.5503750,
        size.height * 0.1190830,
        size.width * 0.5742050,
        size.height * 0.1076245,
        size.width * 0.5708300,
        size.height * 0.09941650);
    path_20.cubicTo(
        size.width * 0.5674550,
        size.height * 0.09116650,
        size.width * 0.5135800,
        size.height * 0.1224580,
        size.width * 0.5135800,
        size.height * 0.1224580);
    path_20.cubicTo(
        size.width * 0.5135800,
        size.height * 0.1224580,
        size.width * 0.5383300,
        size.height * 0.07791650,
        size.width * 0.5281650,
        size.height * 0.07258300);
    path_20.cubicTo(
        size.width * 0.5180400,
        size.height * 0.06729150,
        size.width * 0.4992070,
        size.height * 0.1167495,
        size.width * 0.4992070,
        size.height * 0.1167495);
    path_20.cubicTo(
        size.width * 0.4992070,
        size.height * 0.1167495,
        size.width * 0.5035400,
        size.height * 0.06054150,
        size.width * 0.4790820,
        size.height * 0.05408300);
    path_20.close();

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_20, paint20Fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.2736330, size.height * 0.1783355);
    path_21.cubicTo(
        size.width * 0.2736330,
        size.height * 0.1783355,
        size.width * 0.3335910,
        size.height * 0.08508550,
        size.width * 0.4744660,
        size.height * 0.1305025);
    path_21.cubicTo(
        size.width * 0.4744660,
        size.height * 0.1305025,
        size.width * 0.3532580,
        size.height * 0.1103775,
        size.width * 0.2736330,
        size.height * 0.1783355);
    path_21.close();

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_21, paint21Fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.2554260, size.height * 0.2255420);
    path_22.cubicTo(
        size.width * 0.2554260,
        size.height * 0.2255420,
        size.width * 0.1948010,
        size.height * 0.3058335,
        size.width * 0.1926760,
        size.height * 0.3850835);
    path_22.cubicTo(
        size.width * 0.1926760,
        size.height * 0.3850835,
        size.width * 0.2087175,
        size.height * 0.3078755,
        size.width * 0.2554260,
        size.height * 0.2255420);
    path_22.close();

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xff82B1D8).withOpacity(1.0);
    canvas.drawPath(path_22, paint22Fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.7890700, size.height * 0.4002100);
    path_23.cubicTo(
        size.width * 0.8358200,
        size.height * 0.4156265,
        size.width * 0.8864900,
        size.height * 0.5354600,
        size.width * 0.8666550,
        size.height * 0.5956250);
    path_23.cubicTo(
        size.width * 0.8537400,
        size.height * 0.6432500,
        size.width * 0.8004900,
        size.height * 0.7141250,
        size.width * 0.6761550,
        size.height * 0.7524200);
    path_23.lineTo(size.width * 0.6561150, size.height * 0.7110450);
    path_23.cubicTo(
        size.width * 0.7071950,
        size.height * 0.6914600,
        size.width * 0.8673650,
        size.height * 0.6445450,
        size.width * 0.7891950,
        size.height * 0.4635850);
    path_23.lineTo(size.width * 0.7891150, size.height * 0.4002100);
    path_23.lineTo(size.width * 0.7890700, size.height * 0.4002100);
    path_23.close();

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_23, paint23Fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.6539550, size.height * 0.7075450);
    path_24.cubicTo(
        size.width * 0.6260800,
        size.height * 0.6985450,
        size.width * 0.6063700,
        size.height * 0.6956250,
        size.width * 0.5837900,
        size.height * 0.6946700);
    path_24.cubicTo(
        size.width * 0.5736650,
        size.height * 0.6951250,
        size.width * 0.5705400,
        size.height * 0.6990000,
        size.width * 0.5738700,
        size.height * 0.7058750);
    path_24.cubicTo(
        size.width * 0.5787450,
        size.height * 0.7130850,
        size.width * 0.5920800,
        size.height * 0.7193350,
        size.width * 0.6127900,
        size.height * 0.7247500);
    path_24.cubicTo(
        size.width * 0.5992450,
        size.height * 0.7256700,
        size.width * 0.5872450,
        size.height * 0.7282950,
        size.width * 0.5777450,
        size.height * 0.7337100);
    path_24.cubicTo(
        size.width * 0.5708300,
        size.height * 0.7400450,
        size.width * 0.5687050,
        size.height * 0.7456700,
        size.width * 0.5766650,
        size.height * 0.7499200);
    path_24.cubicTo(
        size.width * 0.5844150,
        size.height * 0.7541250,
        size.width * 0.6013700,
        size.height * 0.7512500,
        size.width * 0.6214150,
        size.height * 0.7460850);
    path_24.cubicTo(
        size.width * 0.6007450,
        size.height * 0.7626250,
        size.width * 0.5847450,
        size.height * 0.7769200,
        size.width * 0.5802050,
        size.height * 0.7856250);
    path_24.cubicTo(
        size.width * 0.5788700,
        size.height * 0.7885850,
        size.width * 0.5798700,
        size.height * 0.7903350,
        size.width * 0.5835400,
        size.height * 0.7897950);
    path_24.cubicTo(
        size.width * 0.6036200,
        size.height * 0.7847100,
        size.width * 0.6307050,
        size.height * 0.7708350,
        size.width * 0.6594550,
        size.height * 0.7548750);
    path_24.lineTo(size.width * 0.6574150, size.height * 0.7812500);
    path_24.cubicTo(
        size.width * 0.6714550,
        size.height * 0.7693350,
        size.width * 0.6795400,
        size.height * 0.7573750,
        size.width * 0.6747450,
        size.height * 0.7452500);
    path_24.lineTo(size.width * 0.6539950, size.height * 0.7074600);
    path_24.lineTo(size.width * 0.6539550, size.height * 0.7075450);
    path_24.close();

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_24, paint24Fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.2109085, size.height * 0.4080810);
    path_25.cubicTo(
        size.width * 0.1641585,
        size.height * 0.4234975,
        size.width * 0.1134920,
        size.height * 0.5433300,
        size.width * 0.1333255,
        size.height * 0.6035000);
    path_25.cubicTo(
        size.width * 0.1462420,
        size.height * 0.6511250,
        size.width * 0.1881170,
        size.height * 0.7237500,
        size.width * 0.3124505,
        size.height * 0.7620400);
    path_25.lineTo(size.width * 0.3333255, size.height * 0.7121250);
    path_25.cubicTo(
        size.width * 0.2822420,
        size.height * 0.6925400,
        size.width * 0.1326170,
        size.height * 0.6524550,
        size.width * 0.2108255,
        size.height * 0.4714975);
    path_25.lineTo(size.width * 0.2109085, size.height * 0.4081225);
    path_25.lineTo(size.width * 0.2109085, size.height * 0.4080810);
    path_25.close();

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_25, paint25Fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.3333690, size.height * 0.7120800);
    path_26.cubicTo(
        size.width * 0.3612440,
        size.height * 0.7030800,
        size.width * 0.3809520,
        size.height * 0.7001600,
        size.width * 0.4035355,
        size.height * 0.6992050);
    path_26.cubicTo(
        size.width * 0.4136605,
        size.height * 0.6996600,
        size.width * 0.4167855,
        size.height * 0.7035350,
        size.width * 0.4134520,
        size.height * 0.7104100);
    path_26.cubicTo(
        size.width * 0.4085770,
        size.height * 0.7176200,
        size.width * 0.3952440,
        size.height * 0.7238700,
        size.width * 0.3745355,
        size.height * 0.7292850);
    path_26.cubicTo(
        size.width * 0.3880770,
        size.height * 0.7302050,
        size.width * 0.4000770,
        size.height * 0.7328300,
        size.width * 0.4095770,
        size.height * 0.7382450);
    path_26.cubicTo(
        size.width * 0.4164940,
        size.height * 0.7445800,
        size.width * 0.4186190,
        size.height * 0.7502050,
        size.width * 0.4106605,
        size.height * 0.7544550);
    path_26.cubicTo(
        size.width * 0.4029105,
        size.height * 0.7586600,
        size.width * 0.3859520,
        size.height * 0.7557850,
        size.width * 0.3659105,
        size.height * 0.7506200);
    path_26.cubicTo(
        size.width * 0.3865770,
        size.height * 0.7671600,
        size.width * 0.4025770,
        size.height * 0.7814550,
        size.width * 0.4071190,
        size.height * 0.7901600);
    path_26.cubicTo(
        size.width * 0.4084520,
        size.height * 0.7931200,
        size.width * 0.4074520,
        size.height * 0.7948700,
        size.width * 0.4037855,
        size.height * 0.7943300);
    path_26.cubicTo(
        size.width * 0.3837020,
        size.height * 0.7892450,
        size.width * 0.3566190,
        size.height * 0.7753700,
        size.width * 0.3278690,
        size.height * 0.7594100);
    path_26.lineTo(size.width * 0.3299105, size.height * 0.7857850);
    path_26.cubicTo(
        size.width * 0.3158690,
        size.height * 0.7738700,
        size.width * 0.3077855,
        size.height * 0.7619100,
        size.width * 0.3125770,
        size.height * 0.7497850);
    path_26.lineTo(size.width * 0.3333270, size.height * 0.7119950);
    path_26.lineTo(size.width * 0.3333690, size.height * 0.7120800);
    path_26.close();

    Paint paint26Fill = Paint()..style = PaintingStyle.fill;
    paint26Fill.color = const Color(0xff5A89AF).withOpacity(1.0);
    canvas.drawPath(path_26, paint26Fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.4674125, size.height * 0.5774150);
    path_27.lineTo(size.width * 0.2809960, size.height * 0.5767500);
    path_27.lineTo(size.width * 0.2846625, size.height * 0.7820400);
    path_27.lineTo(size.width * 0.5106650, size.height * 0.7850850);
    path_27.lineTo(size.width * 0.5137450, size.height * 0.5761650);
    path_27.lineTo(size.width * 0.4674125, size.height * 0.5774150);
    path_27.close();

    Paint paint27Fill = Paint()..style = PaintingStyle.fill;
    paint27Fill.color = const Color(0xffF1D79B).withOpacity(1.0);
    canvas.drawPath(path_27, paint27Fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.3755470, size.height * 0.5909550);
    path_28.lineTo(size.width * 0.3768385, size.height * 0.6118300);
    path_28.lineTo(size.width * 0.4147135, size.height * 0.6111650);
    path_28.lineTo(size.width * 0.4168800, size.height * 0.5916650);
    path_28.lineTo(size.width * 0.3755470, size.height * 0.5909550);
    path_28.close();

    Paint paint28Fill = Paint()..style = PaintingStyle.fill;
    paint28Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_28, paint28Fill);

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.4680835, size.height * 0.5950000);
    path_29.lineTo(size.width * 0.4650000, size.height * 0.7823750);
    path_29.lineTo(size.width * 0.5077100, size.height * 0.7817100);
    path_29.lineTo(size.width * 0.5107500, size.height * 0.5979150);
    path_29.lineTo(size.width * 0.4680835, size.height * 0.5950000);
    path_29.close();

    Paint paint29Fill = Paint()..style = PaintingStyle.fill;
    paint29Fill.color = const Color(0xffE5CC93).withOpacity(1.0);
    canvas.drawPath(path_29, paint29Fill);

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.5350000, size.height * 0.4400000);
    path_30.lineTo(size.width * 0.5376550, size.height * 0.5741100);
    path_30.lineTo(size.width * 0.5702450, size.height * 0.5741950);
    path_30.lineTo(size.width * 0.6018150, size.height * 0.5800000);
    path_30.lineTo(size.width * 0.6050000, size.height * 0.4503130);
    path_30.lineTo(size.width * 0.5350000, size.height * 0.4400000);
    path_30.close();

    Paint paint30Fill = Paint()..style = PaintingStyle.fill;
    paint30Fill.color = const Color(0xffE5CC93).withOpacity(1.0);
    canvas.drawPath(path_30, paint30Fill);

    Path path_31 = Path();
    path_31.moveTo(size.width * 0.4968750, size.height * 0.5762500);
    path_31.lineTo(size.width * 0.5011650, size.height * 0.7804550);
    path_31.lineTo(size.width * 0.7271650, size.height * 0.7774550);
    path_31.lineTo(size.width * 0.7308350, size.height * 0.5721250);
    path_31.lineTo(size.width * 0.5447100, size.height * 0.5754150);
    path_31.lineTo(size.width * 0.4968750, size.height * 0.5762500);
    path_31.close();

    Paint paint31Fill = Paint()..style = PaintingStyle.fill;
    paint31Fill.color = const Color(0xffF1D79B).withOpacity(1.0);
    canvas.drawPath(path_31, paint31Fill);

    Path path_32 = Path();
    path_32.moveTo(size.width * 0.5790450, size.height * 0.5820400);
    path_32.lineTo(size.width * 0.5812100, size.height * 0.6015400);
    path_32.lineTo(size.width * 0.6191250, size.height * 0.6022100);
    path_32.lineTo(size.width * 0.6203750, size.height * 0.5813350);
    path_32.lineTo(size.width * 0.5790450, size.height * 0.5820400);
    path_32.close();

    Paint paint32Fill = Paint()..style = PaintingStyle.fill;
    paint32Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_32, paint32Fill);

    Path path_33 = Path();
    path_33.moveTo(size.width * 0.6880850, size.height * 0.5900000);
    path_33.lineTo(size.width * 0.6850000, size.height * 0.7773750);
    path_33.lineTo(size.width * 0.7277100, size.height * 0.7767100);
    path_33.lineTo(size.width * 0.7307500, size.height * 0.5929150);
    path_33.lineTo(size.width * 0.6880850, size.height * 0.5900000);
    path_33.close();

    Paint paint33Fill = Paint()..style = PaintingStyle.fill;
    paint33Fill.color = const Color(0xffE5CC93).withOpacity(1.0);
    canvas.drawPath(path_33, paint33Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
