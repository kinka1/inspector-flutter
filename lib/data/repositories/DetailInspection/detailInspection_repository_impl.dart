import 'dart:convert';

import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/repositories/DetailInspection/detailInspection_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailinspectionRepositoryImpl extends DetailinspectionRepository {
  final logger = Logger();
  final _dio = Dio();

  @override
  Future<void> addDetailInspection(DetailInspectionModel model) async {
    final prefs = await SharedPreferences.getInstance();
    String imageName = Uri.parse(model.imageName).pathSegments.last;
    try {
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      final response = await _dio.post(
        '${dotenv.env['API_BASE_URL']}/detail',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: {
          'itemName': model.itemName,
          'specification': model.specification,
          'method': model.method,
          'frequency': model.frequency,
          'number': model.number,
          'description': model.description,
          'status': model.status,
          'machineId': model.machineId,
          'imageName': imageName,
        },
      );
      response.statusCode;


      if (response.statusCode == 200) {
        final data = response.data['data'];
        final user = data['user'];
        final token = data['token'];

        // Parse dan format created_at
        // final DateTime parsedCreatedAt = DateTime.parse(createdAt);
        // final String formattedDate = DateFormat('yyyy-MM-dd').format(parsedCreatedAt);
        // await prefs.setString('user', jsonEncode(user));
        // await prefs.setString('token', jsonEncode(token));
      }
    } on DioException catch (error) {
      if (error.response!.statusCode == 401 ||
          error.response!.statusCode == 404) {
        throw Exception('terjadi Kesalahan salah');
      } else {
        throw Exception(error.message);
      }
    }
  }

  @override
  Future<DetailInspectionModel> getDetailInspectionItem() async {
    try {
      final response = await _dio.get('${dotenv.env['API_BASE_URL']}/detail');

      await Future.delayed(Duration(seconds: 2));

      if (response.statusCode == 200) {
        final responseData = response.data;

        // ✅ Periksa apakah responseData adalah Map
        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          final machineData = responseData['data'];

          DetailInspectionModel items = machineData
              .map((item) => InspectionitemModel.fromJson(item))
              .toList();

          return items;
        } else {
          throw Exception('Invalid response structure');
        }
      } else {
        throw Exception('Failed to get Inspection Items');
      }
    } on DioException catch (error) {
      throw Exception(error.message);
    }
  }
}
