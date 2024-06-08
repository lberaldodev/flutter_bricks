import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/{{feature_name.snakeCase()}}.dart';

extension {{feature_name.pascalCase()}}EntityMapper on {{feature_name.pascalCase()}}Entity {
  static {{feature_name.pascalCase()}}Entity fromJson(Map<String, dynamic> json) {
    return {{feature_name.pascalCase()}}Entity();
  }
}