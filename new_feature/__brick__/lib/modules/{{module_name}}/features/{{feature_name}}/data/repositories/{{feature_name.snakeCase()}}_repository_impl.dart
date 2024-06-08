import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/{{feature_name.snakeCase()}}.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  final {{feature_name.pascalCase()}}DataSource dataSource;

  {{feature_name.pascalCase()}}RepositoryImpl(this.dataSource);

  @override
  Future<{{feature_name.pascalCase()}}Entity> execute() async {
    return dataSource.execute();
  }
}
