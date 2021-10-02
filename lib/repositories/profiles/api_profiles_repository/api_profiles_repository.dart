import 'package:dio/dio.dart';
import 'package:elegion/models/profile/profile.dart';
import 'package:elegion/utils/utils.dart';

class ApiProfilesRepository {
  ApiProfilesRepository(this.httpClientFactory);
  final HttpClientFactory httpClientFactory;

  Dio get _dio => httpClientFactory.dio;

  Future<Profile> get(String id) async {
    final res = await _dio.get('profiles/$id');
    return Profile.fromJson(res.data);
  }

  Future<List<Profile>> getAll() async {
    final res = await _dio.get('profiles/');
    return (res.data as List<dynamic>).map((e) => Profile.fromJson(e)).toList();
  }
}
