import 'package:dio/dio.dart';
import 'package:elegion/models/project/project.dart';
import 'package:elegion/utils/utils.dart';

class ApiProjectsRepository {
  ApiProjectsRepository(this.httpClientFactory);
  final HttpClientFactory httpClientFactory;

  Dio get _dio => httpClientFactory.dio;

  Future<Project> get(String id) async {
    final res = await _dio.get('projects/$id');
    return Project.fromJson(res.data);
  }

  Future<List<Project>> getAll() async {
    final res = await _dio.get('projects/');
    return (res.data as List<dynamic>).map((e) => Project.fromJson(e)).toList();
  }
}
