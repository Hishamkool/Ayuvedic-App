import 'package:app/core/network/api_client.dart';
import 'package:app/core/network/dio_client.dart';

class ApiModule {
  static ApiClient provideApiService() {
    final dio = DioClient.create();
    return ApiClient(dio);
  }
}
