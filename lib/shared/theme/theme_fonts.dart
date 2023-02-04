part of book;

enum ThemeTextStyle {
  headline,
  defaultText,
  title,
  body,
}

abstract class ThemeFonts {
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const bold = FontWeight.w700;

  static TextStyle fontOf(BuildContext context, ThemeTextStyle style) => _fontOf(context, style);
  static TextStyle _fontOf(BuildContext context, ThemeTextStyle style) {
    final color = context.themeColors;
    const baiJ = "BaiJamjuree";
    switch (style) {
      case ThemeTextStyle.headline:
        return const TextStyle(fontSize: 55, fontWeight: bold, color: Colors.white, fontFamily: baiJ);
      case ThemeTextStyle.defaultText:
        return TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: color.defaultText, fontFamily: baiJ);
      case ThemeTextStyle.title:
        return TextStyle(color: color.defaultText, fontWeight: medium, fontSize: 20, fontFamily: baiJ);
      case ThemeTextStyle.body:
        return TextStyle(color: color.mainText, fontWeight: regular, fontSize: 16, height: 22/16, fontFamily: baiJ);
    }
  }
}
