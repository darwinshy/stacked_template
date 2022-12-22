import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../root.dart';
import 'package:stacked_themes/stacked_themes.dart';
/*
  * Routes and Services for the app are registered here.
  
  * Generate dependency files by running the following command in the terminal   
  * * flutter pub run build_runner build --delete-conflicting-outputs

  * * Generates the following files:
  * * - lib/app/app.locator.dart
  * * - lib/app/app.router.dart
*/

@StackedApp(
  dependencies: [
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ThemeService)

    /*
      * todo: add other dependencies here
      * example - LazySingleton(classType: SomeService),
    */
  ],
  routes: <StackedRoute<dynamic>>[
    StackedRoute<dynamic>(path: Root.routeName, page: Root)

    /*
      * todo: add application routes here     
    */
  ],
)
class App {}
