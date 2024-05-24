import 'dart:async';

import 'package:{{package_name}}/modules/{{module_name}}/features/{{feature_name}}/data/data_sources/{{feature_name}}_data_source.dart';
import 'package:{{package_name}}/modules/{{module_name}}/features/{{feature_name}}/data/data_sources/{{feature_name}}_data_source_impl.dart';
import 'package:{{package_name}}/modules/{{module_name}}/features/{{feature_name}}/data/repositories/{{feature_name}}_repository_impl.dart';
import 'package:{{package_name}}/modules/{{module_name}}/features/{{feature_name}}/domain/repositories/{{feature_name}}_repository.dart';
import 'package:{{package_name}}/modules/{{module_name}}/features/{{feature_name}}/domain/use_cases/find_{{feature_name}}_info_use_case.dart';
import 'package:{{package_name}}/modules/{{module_name}}/features/{{feature_name}}/presentation/controllers/{{feature_name}}_bloc.dart';
import 'package:{{package_name}}/modules/{{module_name}}/features/{{feature_name}}/router/{{feature_name}}_router_navigator.dart';
import 'package:{{package_name}}/modules/core/injection/injection.dart';
import 'package:{{package_name}}/modules/core/modules/injection_module.dart';

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
