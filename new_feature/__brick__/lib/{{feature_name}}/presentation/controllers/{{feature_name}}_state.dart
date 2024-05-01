part of '{{feature_name.snakeCase()}}_bloc.dart';

@immutable
sealed class {{feature_name.pascalCase()}}State extends Equatable {}

class {{feature_name.pascalCase()}}InitialState extends {{feature_name.pascalCase()}}State {
  {{feature_name.pascalCase()}}InitialState();
  @override
  List<Object?> get props => [];
}

class {{feature_name.pascalCase()}}SuccessState extends {{feature_name.pascalCase()}}State {
  final {{feature_name.pascalCase()}}Entity data;

  {{feature_name.pascalCase()}}SuccessState({
    required this.data,
  });

  @override
  List<Object?> get props => [this.data];
}

class {{feature_name.pascalCase()}}ErrorState extends {{feature_name.pascalCase()}}State {
  final bool isNetworkError;

  {{feature_name.pascalCase()}}ErrorState({
    required this.isNetworkError,
  });

  @override
  List<Object?> get props => [this.isNetworkError];
}
