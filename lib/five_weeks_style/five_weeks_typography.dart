import 'package:flutter/widgets.dart';

import 'five_weeks_color.dart';

//@formatter:off
class FiveWeeksFont {
  const FiveWeeksFont._();

  static const String serifSC = 'NotoSerifSC';

  ///////////////////////////////////////////////////////////////////////////
  // Font weight
  ///////////////////////////////////////////////////////////////////////////

  static const FontWeight lightWeight = FontWeight.w300;
  static const FontWeight regularWeight = FontWeight.w400;
  static const FontWeight mediumWeight = FontWeight.w500;
  static const FontWeight boldWeight = FontWeight.w600;
  static const FontWeight xBoldWeight = FontWeight.w900;

  ///////////////////////////////////////////////////////////////////////////
  // Font Size
  ///////////////////////////////////////////////////////////////////////////

  static const double fontSizeExtraLarge = 32.0;
  static const double fontSizeLarge = 24.0;
  static const double fontSizeMedium = 20.0;
  static const double fontSizeRegular = 16.0;
  static const double fontSizeSmall = 14.0;
  static const double fontSizeExtraSmall = 12.0;
  static const double fontSizeMediumSmall = 10.0;

  static const double sizeHeadline1 = 32.0;
  static const double sizeHeadline2 = 24.0;
  static const double sizeHeadline3 = 20.0;
  static const double sizeHeadline4 = 16.0;
  static const double sizeHeadline5 = 16.0;
  static const double sizeBody1 = 14.0;
  static const double sizeBody2 = 14.0;
  static const double sizeCaption = 12.0;
  static const double sizeButton = 16.0;

  ///////////////////////////////////////////////////////////////////////////
  //Type Styles
  ///////////////////////////////////////////////////////////////////////////

  static TextStyle headline1({Color color = FiveWeeksColors.black}) =>
      TextStyle(fontWeight: mediumWeight, fontFamily: serifSC, fontSize: sizeHeadline1, color: color);

  static TextStyle headline2({Color color = FiveWeeksColors.black}) =>
      TextStyle(fontWeight: regularWeight, fontFamily: serifSC, fontSize: sizeHeadline2, color: color);

  static TextStyle headline3({Color color = FiveWeeksColors.black}) =>
      TextStyle(fontWeight: mediumWeight, fontFamily: serifSC, fontSize: sizeHeadline3, color: color);

  static TextStyle headline4({Color color = FiveWeeksColors.black}) =>
      TextStyle(fontWeight: mediumWeight, fontFamily: serifSC, fontSize: sizeHeadline4, color: color);

  static TextStyle headline5({Color color = FiveWeeksColors.black}) =>
      TextStyle(fontWeight: regularWeight, fontFamily: serifSC, fontSize: sizeHeadline5, color: color);

  static TextStyle headline6({Color color = FiveWeeksColors.black}) =>
      TextStyle(fontWeight: mediumWeight, fontFamily: serifSC, fontSize: fontSizeMediumSmall, color: color);

  static TextStyle headline7({Color color = FiveWeeksColors.black}) =>
      TextStyle(fontWeight: regularWeight, fontFamily: serifSC, fontSize: fontSizeMediumSmall, color: color);
}
//@formatter:on
