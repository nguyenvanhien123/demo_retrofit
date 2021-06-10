import 'package:demoretrofit/service/constants_api.dart';
import 'package:demoretrofit/service/service.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'post_api_service.g.dart';

// @RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
@RestApi(baseUrl: "https://dev-api.masspa.vn/")
abstract class RestClient {
  factory RestClient(Dio dio, {required String baseUrl}) {
    dio.options = BaseOptions(
      headers: ConstantsApi.header,
    );
    return _RestClient(dio, baseUrl: baseUrl);
  }
  @POST("internal/api/secure/serviceMenuItem/getAll")
  Future<Services> getTasks(@Body() String tasks);
}
