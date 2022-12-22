// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart' as _i3;
import '../root.dart' as _i2;

class Routes {
  static const root = 'root';

  static const all = <String>{root};
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.root,
      page: _i2.Root,
    )
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.Root: (data) {
      return MaterialPageRoute<StackedRoute<dynamic>>(
        builder: (context) => const _i2.Root(),
        settings: data,
      );
    }
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i3.NavigationService {
  Future<StackedRoute<dynamic>?> navigateToRoot([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<StackedRoute<dynamic>?>(Routes.root,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
