part of book;

abstract class IThemeColors {
  late final Color primaryBackground;
  late final Color secondaryBackground;
  late final Color mainText;
  late final Color defaultText;
}

class LightColors implements IThemeColors {
  @override
  Color defaultText = const Color.fromARGB(255, 209, 209, 209);

  @override
  Color primaryBackground = const Color.fromARGB(255, 0, 0, 0);

  @override
  Color secondaryBackground = const Color.fromARGB(255,  28, 28, 30);

  @override
  Color mainText = const Color.fromARGB(255, 255, 255, 255);
}

final lightColors = LightColors();

class DarkColors implements IThemeColors {
  @override
  Color defaultText = const Color.fromARGB(255, 209, 209, 209);

  @override
  Color primaryBackground = const Color.fromARGB(255, 0, 0, 0);

  @override
  Color secondaryBackground = const Color.fromARGB(255, 28, 28, 30);

  @override
  Color mainText = const Color.fromARGB(255, 255, 255, 255);
}

final darkColors = DarkColors();
