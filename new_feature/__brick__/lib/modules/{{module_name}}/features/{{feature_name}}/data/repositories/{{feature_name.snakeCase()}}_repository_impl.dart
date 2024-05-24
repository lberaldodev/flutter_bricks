import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/data/data_sources/{{feature_name.snakeCase()}}_data_source.dart';
import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  final {{feature_name.pascalCase()}}DataSource dataSource;

  {{feature_name.pascalCase()}}RepositoryImpl(this.dataSource);

  @override
  Future<{{feature_name.pascalCase()}}Entity> execute() async {
    return dataSource.execute();
  }
}
