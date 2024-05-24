import 'package:flutter/material.dart';
import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/{{feature_name}}.dart';
import 'package:{{package_name.snakeCase()}}/modules/core/modules/router_module.dart';
class {{feature_name.pascalCase()}}RouterFeature implements RouterModule {
  @override
  Map<String, MaterialPageRoute> getRoutes(RouteSettings settings) =>
      <String, MaterialPageRoute>{
        '/{{feature_name.pascalCase()}}': MaterialPageRoute(
          builder: (_) => const {{feature_name.pascalCase()}}Page(),
          settings: settings,
        ),
      };
}
