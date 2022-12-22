import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_template/app/app.size.dart';

class RootViewModel extends BaseViewModel {
  // __________________________________________________________________________
  // Getting Dependencies
  /// * final NavigationService _navigationService = locator<NavigationService>();

  // ___________________________________________________________________________

  Future<void> handleStartupLogic() async {}
}

class Root extends StatelessWidget {
  static const String routeName = 'root';
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    /// * Initialize the size config
    SizeConfig().init(context);

    return ViewModelBuilder<RootViewModel>.reactive(
      builder: (_, __, ___) => Scaffold(
        body: Center(
          child:
              CircularProgressIndicator(color: Theme.of(context).primaryColor),
        ),
      ),
      onModelReady: (RootViewModel model) {
        Future.delayed(const Duration(seconds: 10), model.handleStartupLogic);
      },
      viewModelBuilder: () => RootViewModel(),
    );
  }
}
