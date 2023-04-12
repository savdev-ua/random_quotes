import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/app_module.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      builder: (context, child) {
        final brightness = MediaQuery.platformBrightnessOf(context);
        final theme = getThemeData(brightness);
        return CupertinoTheme(data: theme, child: child!);
      },
    );
  }
}

CupertinoThemeData getThemeData(Brightness brightness) {
  if (brightness == Brightness.dark) {
    return const CupertinoThemeData(brightness: Brightness.dark);
  }
  return const CupertinoThemeData(brightness: Brightness.light);
}
