import 'package:{{package_name.snakeCase()}}/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';

abstract class {{feature_name.pascalCase()}}DataSource {
  Future<{{feature_name.pascalCase()}}Entity> execute();
}
