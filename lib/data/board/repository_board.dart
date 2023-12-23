import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../utils/urls.dart';
part 'repository_board.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RepositoryBoard {
  factory RepositoryBoard(Dio dio, {String baseUrl}) = _RepositoryBoard;

  @GET('/posts')
  @Headers(<String, dynamic>{
    'Content-type': 'application/json; charset=UTF-8',
  })
  Future<String> getBoard();

  @GET('/comments')
  @Headers(<String, dynamic>{
    'Content-type': 'application/json; charset=UTF-8',
  })
  Future<String> getComments();

  @GET('/comments?postId={postId}')
  @Headers(<String, dynamic>{
    'Content-type': 'application/json; charset=UTF-8',
  })
  Future<String> getDetailComments(@Path('postId') int postId);
}
