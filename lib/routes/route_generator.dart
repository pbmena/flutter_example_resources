import 'package:flutter/material.dart';
import 'package:flutter_example_resources/app_home.dart';
import 'package:flutter_example_resources/pages/grid_view/grid_view.dart';
import 'package:flutter_example_resources/pages/list_view/list_view.dart';
import 'package:flutter_example_resources/pages/modal_bottom_sheet/screens/modal_bottom_screen.dart';
import 'package:flutter_example_resources/pages/page_view/screens/page_view_screen.dart';
import 'package:flutter_example_resources/pages/sliver_toolbar/sliver_collapsing/app_bar_collapsing.dart';
import 'package:flutter_example_resources/pages/sliver_toolbar/sliver_persistent_header/persistent_header.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const AppHomeSplashLaunch());

      case '/showModalBottomSheet':
        return MaterialPageRoute(builder: (_) => const ModalBottomScreen());

      case '/persistentHeader':
        return MaterialPageRoute(builder: (_) => const PersistentHeader());

      case '/collapsingToolbar':
        return MaterialPageRoute(builder: (_) => const CollapsingToolbar());

      case '/pageViewScreen':
        return MaterialPageRoute(builder: (_) => const PageViewScreen());

      case '/gridViewCustom':
        return MaterialPageRoute(builder: (_) => const GridViewCustom());

      case '/listViewCustom':
        return MaterialPageRoute(builder: (_) => const ListViewCustom());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() => MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(
              'Error!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
}
