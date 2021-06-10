// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://dev-api.masspa.vn/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Services> getTasks(tasks) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = tasks;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Services>(
            Options(method: 'POST', headers: <String, dynamic>{}, extra: _extra)
                .compose(
                    _dio.options, 'internal/api/secure/serviceMenuItem/getAll',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Services.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
