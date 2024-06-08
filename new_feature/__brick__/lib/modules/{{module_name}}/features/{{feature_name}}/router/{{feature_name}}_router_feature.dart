import 'package:flutter/material.dart';
import 'package:{{package_name.snakeCase()}}/modules/core/core.dart';
import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/{{feature_name.snakeCase()}}.dart';


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
