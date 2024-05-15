import 'package:{{package_name.snakeCase()}}/{{feature_name.snakeCase()}}/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import 'package:{{package_name.snakeCase()}}/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';

class Find{{feature_name.pascalCase()}}InfoUseCase {
  final {{feature_name.pascalCase()}}Repository repository;

  Find{{feature_name.pascalCase()}}InfoUseCase (this.repository);

  Future<{{feature_name.pascalCase()}}Entity> execute() async {
    return repository.execute();
  }
}
