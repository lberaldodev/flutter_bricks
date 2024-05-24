import 'package:flutter/material.dart';
import 'package:{{package_name}}/modules/core/navigator/app_navigator.dart';

class {{feature_name.pascalCase()}}RouterNavigator with AppNavigator {
  void navigateToRoot(BuildContext context) => navigateTo(
        context,
        '/home',
        pushAndReplace: true,
        anchor: 'splash',
      );
}
