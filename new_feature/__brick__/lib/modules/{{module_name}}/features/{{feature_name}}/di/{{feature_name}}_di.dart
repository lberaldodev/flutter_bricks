import 'dart:async';

import 'package:{{package_name}}/modules/core/core.dart';
import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/{{feature_name.snakeCase()}}.dart';

class {{feature_name.pascalCase()}}InjectionModule implements InjectionModule {
  @override
  FutureOr<void> registerDependencies({
    required Injector injector,
  }) async {
    injector.registerFactory<{{feature_name.pascalCase()}}DataSource>(
      () => {{feature_name.pascalCase()}}DataSourceImpl(
        injector.get(),
      ),
    );
    injector.registerFactory<{{feature_name.pascalCase()}}Repository>(
      () => {{feature_name.pascalCase()}}RepositoryImpl(
        injector.get(),
      ),
    );
    injector.registerFactory<Find{{feature_name.pascalCase()}}InfoUseCase>(
      () => Find{{feature_name.pascalCase()}}InfoUseCase(
        injector.get(),
      ),
    );
    injector.registerFactory<{{feature_name.pascalCase()}}Bloc>(
      () => {{feature_name.pascalCase()}}Bloc(
        injector.get(),
      ),
    );
    injector.registerFactory<{{feature_name.pascalCase()}}RouterNavigator>(
      {{feature_name.pascalCase()}}RouterNavigator.new,
    );
  }
}
