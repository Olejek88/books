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
    switch (style) {
      case ThemeTextStyle.headline:
        return const TextStyle(fontSize: 55, fontWeight: bold, color: Colors.white);
      case ThemeTextStyle.defaultText:
        return TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: color.defaultText);
      case ThemeTextStyle.title:
        return TextStyle(color: color.defaultText, fontWeight: medium, fontSize: 18);
      case ThemeTextStyle.body:
        return TextStyle(color: color.mainText, fontWeight: regular, fontSize: 16, height: 22/16);
    }
  }
}
