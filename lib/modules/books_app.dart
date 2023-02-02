import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../main_lib.dart';
import '../app_router.gr.dart';
import '../network/requests.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

import '../shared/commons_ui.dart';

const baseUrl = "http://api.book/storage/images/";

class BookApp extends HookConsumerWidget {
  final _appRouter = AppRouter();

  BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var brightness = ref.watch(appBrightnessProvider);
    var isDarkMode = SchedulerBinding.instance.window.platformBrightness == Brightness.dark;
    final dio = Dio(); // Provide a dio instance
    dio.options.headers["Demo-Header"] = "demo header"; // config your dio headers globally
    final client = RestClient(dio);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    FlutterError.demangleStackTrace = (StackTrace stack) {
      if (stack is stack_trace.Trace) return stack.vmTrace;
      if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
      return stack;
    };
    return buildMain(context, ref, brightness);
  }

  Widget buildMain(BuildContext context, WidgetRef ref, Brightness brightness) {
    return CommonPlatformRouterApp(router: _appRouter,
      locale: null,
      localizationsDelegates: const [AppLocalizations.delegate],
      supportedLocales: AppLocalizations.supportedLocales,
      darkPrimaryTextColor: darkColors.mainText,
      lightPrimaryTextColor: lightColors.mainText,
      darkScaffoldBackground: darkColors.primaryBackground,
      lightScaffoldBackground: lightColors.primaryBackground,
    );
  }
}