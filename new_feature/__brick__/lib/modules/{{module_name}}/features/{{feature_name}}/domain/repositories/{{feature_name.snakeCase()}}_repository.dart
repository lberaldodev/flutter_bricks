import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  Future<{{feature_name.pascalCase()}}Entity> execute();
}
