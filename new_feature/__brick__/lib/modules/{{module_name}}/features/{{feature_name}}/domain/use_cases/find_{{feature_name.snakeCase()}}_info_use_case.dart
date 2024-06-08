import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/{{feature_name.snakeCase()}}.dart';

class Find{{feature_name.pascalCase()}}InfoUseCase {
  final {{feature_name.pascalCase()}}Repository repository;

  Find{{feature_name.pascalCase()}}InfoUseCase (this.repository);

  Future<{{feature_name.pascalCase()}}Entity> execute() async {
    return repository.execute();
  }
}
