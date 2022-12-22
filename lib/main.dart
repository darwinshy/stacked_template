import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import '../app/app.locator.dart';
import '../app/app.router.dart';
import '../root.dart';
import '../app/app.size.dart';
import '../app/app.theme.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// * Initialize the ThemeManager
  await ThemeManager.initialise();

  /// * Setup the locator
  await setupLocator();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => ThemeBuilder(
        themes: getThemes(),
        darkTheme: darkTheme,
        lightTheme: lightTheme,
        builder: materialApp,
      );

  Widget materialApp(context, regularTheme, darkTheme, themeMode) {
    /// * Initialize the size config
    SizeConfig().init(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: regularTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      initialRoute: Root.routeName,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
