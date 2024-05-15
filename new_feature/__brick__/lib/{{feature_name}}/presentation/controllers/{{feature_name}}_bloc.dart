import 'package:{{package_name.snakeCase()}}/{{feature_name.snakeCase()}}/domain/use_cases/find_{{feature_name.snakeCase()}}_info_use_case.dart';
import 'package:{{package_name.snakeCase()}}/{{feature_name.snakeCase()}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:{{package_name.snakeCase()}}/{{feature_name.snakeCase()}}/shared/errors.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Cubit<{{feature_name.pascalCase()}}State> {
  final Find{{feature_name.pascalCase()}}InfoUseCase find{{feature_name.pascalCase()}}InfoUseCase;

  {{feature_name.pascalCase()}}Bloc(
    this.find{{feature_name.pascalCase()}}InfoUseCase,
  ) : super({{feature_name.pascalCase()}}InitialState());

  Future<void> init() async {
    try {
      final result = await this.find{{feature_name.pascalCase()}}InfoUseCase.execute();
      emit({{feature_name.pascalCase()}}SuccessState(data: result));
    } catch (e) {
      emit({{feature_name.pascalCase()}}ErrorState(isNetworkError: e is {{feature_name.pascalCase()}}NetworkError));
    }
  }
}
