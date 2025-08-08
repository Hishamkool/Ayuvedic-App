import 'package:app/core/constants/app_constants.dart';
import 'package:app/data/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST(AppConstants.login)
  @FormUrlEncoded()
  Future<Login> login(
    @Field("username") String username,
    @Field("password") String password,
  );
}
