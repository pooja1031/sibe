import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:study_in_banglore/domain/core/constant/apis/api_end_point.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dioInstance => Dio(BaseOptions(
        baseUrl: ApiEndpoint.baseUrl,
        headers: {
          'Accept': 'application/json',
        },
      ));
}
