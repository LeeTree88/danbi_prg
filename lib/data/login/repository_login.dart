import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../utils/urls.dart';
part 'repository_login.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RepositoryLogin {
  factory RepositoryLogin(Dio dio, {String baseUrl}) = _RepositoryLogin;

  @GET('/users')
  @Headers(<String, dynamic>{
    'Content-type': 'application/json; charset=UTF-8',
  })
  Future<String> login();
}
