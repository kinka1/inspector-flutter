import 'dart:convert';

// import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/models/user/user_model.dart';
import 'package:maintenanceApp/data/repositories/auth/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl extends AuthRepository {
  // // final logger = Logger();
  final _dio = Dio();

  @override
  Future<void> login(String username, String password) async {
    final prefs = await SharedPreferences.getInstance();

    try {
      final response = await _dio.post(
        '${dotenv.env['API_BASE_URL']}/auth/login',
        data: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data['data'];
        // logger.i("data : $data");
        final user = data['user'];
        final token = data['token'];
        final Username = user['userName'];
        final BU = user['buId'];
        await prefs.setString('user', jsonEncode(user));
        await prefs.setString('token', jsonEncode(token));
        await prefs.setString('username', jsonEncode(Username));
        await prefs.setString('buId', jsonEncode(BU));
        // await prefs.setString('created_at', formattedDate);
        print("data : $data");
        print("BU : $BU");
      }
    } on DioException catch (error) {
      if (error.response!.statusCode == 401 ||
          error.response!.statusCode == 404) {
        throw Exception('Username atau Password salah');
      } else {
        throw Exception(error.message);
      }
    }
  }

  @override
  Future<void> logout() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Future<bool> checkTokenValidity() async {
    final prefs = await SharedPreferences.getInstance();
    final rawToken = prefs.getString('token');

    if (rawToken == null) {
      return false; // Tidak ada token, harus login ulang
    }

    try {
      final token = rawToken.replaceAll('"', '');
      final response = await _dio.get(
        '${dotenv.env['API_BASE_URL']}/me',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200) {
        return true; // Token valid
      } else {
        return false; // Token tidak valid
      }
    } on DioException catch (_) {
      return false; // Token tidak valid atau terjadi error
    }
  }

  @override
  Future<UserModel> me() async {
    final prefs = await SharedPreferences.getInstance();

    try {
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      final response = await _dio.get('${dotenv.env['API_BASE_URL']}/me',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        final dataUser = response.data['data'];
        UserModel user = UserModel.fromJson(dataUser);
        return user;
      } else {
        throw Exception('Failed to fetch user data');
      }
    } on DioException catch (error) {
      throw Exception(error.message);
    }
  }
}
