import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/{{feature_name.snakeCase()}}.dart';

part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Bloc extends Cubit<{{feature_name.pascalCase()}}State> {
  final Find{{feature_name.pascalCase()}}InfoUseCase find{{feature_name.pascalCase()}}InfoUseCase;

  {{feature_name.pascalCase()}}Bloc(
    this.find{{feature_name.pascalCase()}}InfoUseCase,
  ) : super({{feature_name.pascalCase()}}InitialState());

  Future<void> init() async {
    try {
      final result = await find{{feature_name.pascalCase()}}InfoUseCase.execute();
      emit({{feature_name.pascalCase()}}SuccessState(data: result));
    } catch (e) {
      emit({{feature_name.pascalCase()}}ErrorState(isNetworkError: e is {{feature_name.pascalCase()}}NetworkError));
    }
  }
}
