import '../../main_lib.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {Key? key,
      required this.body,
      this.title,
      this.label,
      this.showAppBar = true,
      this.leading,
      this.trailingActions,
      this.useScaffoldBackground = true,
      this.automaticallyImplyLeading = true,
      this.isTransparent = false,
      this.showReminderButton = false,
      this.showGlobalSearchButton = false})
      : assert(!(showReminderButton && leading != null)),
        super(key: key);

  final Widget body;
  final Widget? title;
  final String? label;
  final Widget? leading;
  final List<Widget>? trailingActions;
  final bool showAppBar;
  final bool useScaffoldBackground;
  final bool isTransparent;
  final bool automaticallyImplyLeading;
  final bool showReminderButton;
  final bool showGlobalSearchButton;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: showAppBar
          ? PlatformAppBar(
              title: label != null ? Text(label!, style: context.fontByStyle(ThemeTextStyle.title)) : title,
              leading: null,
              trailingActions: null,
              automaticallyImplyLeading: automaticallyImplyLeading,
              backgroundColor: context.themeColors.primaryBackground,
              material: (context, platform) =>
                  MaterialAppBarData(elevation: 0, foregroundColor: context.themeColors.mainText, centerTitle: true),
              cupertino: (context, platform) => CupertinoNavigationBarData(border: const Border()),
            )
          : null,
      backgroundColor: context.themeColors.primaryBackground,
      body: body,
    );
  }
}
