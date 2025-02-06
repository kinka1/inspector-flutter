import 'package:application/data/repositories/auth/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl extends AuthRepository{
  final _dio = Dio();
  final logger = Logger();
  @override
  Future<void> login(String username, String password) async {
    final prefs = await SharedPreferences.getInstance();
    logger.i('Username: $username');
    logger.i('Password: $password');
    logger.i('API_BASE_URL: ${dotenv.env['API_BASE_URL']}/auth/login');
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
        final user = data['user'];
        final token = data['token'];

        logger.i('User: $user');
        logger.i('Token: $token');  

        // Parse dan format created_at
        // final DateTime parsedCreatedAt = DateTime.parse(createdAt);
        // final String formattedDate = DateFormat('yyyy-MM-dd').format(parsedCreatedAt);
        // await prefs.setString('user', jsonEncode(user));
        // await prefs.setString('token', jsonEncode(token));
        // await prefs.setString('created_at', formattedDate);
      }
    } on DioException catch (error) {
      if (error.response!.statusCode == 401 ||
          error.response!.statusCode == 404) {
        throw Exception('Email atau password salah');
      } else {
        throw Exception(error.message);
      }
    }
  }

  @override
  Future<void> logout() async {
    await Future.delayed(Duration(seconds: 2));
  }
}