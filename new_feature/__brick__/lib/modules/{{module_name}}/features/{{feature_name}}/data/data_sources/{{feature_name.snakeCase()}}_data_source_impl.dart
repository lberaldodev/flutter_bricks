import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/data/data_sources/{{feature_name.snakeCase()}}_data_source.dart';
import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/data/mappers/{{feature_name.snakeCase()}}_entity_mapper.dart';
import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/domain/entities/{{feature_name.snakeCase()}}_entity.dart';
import 'package:{{package_name.snakeCase()}}/modules/{{module_name}}/features/{{feature_name}}/shared/errors.dart';

class {{feature_name.pascalCase()}}DataSourceImpl implements {{feature_name.pascalCase()}}DataSource {
  static const _baseUrl = 'https://api.example.com';

  final HttpClient _httpClient;

  {{feature_name.pascalCase()}}DataSourceImpl(this._httpClient);

  @override
  Future<{{feature_name.pascalCase()}}Entity> execute() async {
    try {
      final response = await _httpClient.get(_baseUrl);
      final json = response.dataAsJsonObject;
      return {{feature_name.pascalCase()}}EntityMapper.fromJson(json);
    } on HttpResponseError catch (e) {
      if (e.response.statusCode == 403) {
        throw {{feature_name.pascalCase()}}GenericError();
      }
      throw {{feature_name.pascalCase()}}GenericError();
    } catch (_) {
      throw {{feature_name.pascalCase()}}GenericError();
    }
  }
}