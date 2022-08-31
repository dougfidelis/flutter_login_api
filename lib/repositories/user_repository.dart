import 'package:dio/dio.dart';

import '../model/user_model.dart';

class UserRepository {
  Future<String> register(UserModel user) async {
    var dio = Dio();

    var response =
        await dio.post("http://192.168.0.119/api/usuario", data: user.toMap());

    return response.data;
  }
}
