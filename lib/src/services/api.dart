import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'package:study_helper/src/models/category.dart';
import 'package:study_helper/src/models/lecture.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'http://10.0.2.2:3000/api/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/ctlist/')
  Future<List<CategoryBase>> getCategories();

  @GET('/ctdetails/{categoryId}/')
  Future<Category> getCategoriyById(@Path('categoryId') final int id);

  @GET('/leclist/')
  Future<List<Lecture>> getLectures();

  @GET('/lecdetails/{lectureId}/')
  Future<Lecture> getLectureById(@Path('lectureId') final int id);
}
