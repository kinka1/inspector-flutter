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
    logger.i('API_BASE_URL: ${dotenv.env['API_BASE_URL']}/detail');
    String imageName = Uri.parse(model.imageName).pathSegments.last;
    logger.i('name: ${model.itemName}');
    logger.i('spec: ${model.specification}'); 
    logger.i('met: ${model.method}'); 
    logger.i('fre: ${model.frequency}'); 
    logger.i('num: ${model.number}'); 
    logger.i('des: ${model.description}'); 
    logger.i('mID: ${model.machineId}'); 
    logger.i('imgn: ${imageName}'); 
    try {
      logger.i("masuk try");
      final response = await _dio.post(
        '${dotenv.env['API_BASE_URL']}/detail',
        data: {
          'id': 99,
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
        logger.i("BERHASIL POST DATA: $data");

        // Parse dan format created_at
        // final DateTime parsedCreatedAt = DateTime.parse(createdAt);
        // final String formattedDate = DateFormat('yyyy-MM-dd').format(parsedCreatedAt);
        // await prefs.setString('user', jsonEncode(user));
        // await prefs.setString('token', jsonEncode(token));
      }
    } on DioException catch (error) {
      if (error.response!.statusCode == 401 ||
          error.response!.statusCode == 404) {
            logger.i("status code = ${error.response!.statusCode}");
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
      logger.i("response : ${response.data}");

      await Future.delayed(Duration(seconds: 2));

      if (response.statusCode == 200) {
        final responseData = response.data;
        logger.d("Response Data: $responseData");

        // ✅ Periksa apakah responseData adalah Map
        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          final machineData = responseData['data'];
          logger.d("Machine Data: $machineData");

          DetailInspectionModel items = machineData
              .map((item) => InspectionitemModel.fromJson(item))
              .toList();

          logger.i("Parsed Items: $items");
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
