import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/{{feature_name.snakeCase()}}.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  Future<{{feature_name.pascalCase()}}Entity> execute();
}
