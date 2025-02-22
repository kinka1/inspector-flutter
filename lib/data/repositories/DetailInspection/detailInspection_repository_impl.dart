import 'dart:convert';
import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/repositories/DetailInspection/detailInspection_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
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
      if (rawToken == null) {
        throw Exception('Token not found');
      }
      final token = rawToken.replaceAll('"', '');
      logger.d("token $token");

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

      if (response.statusCode == 201 || response.statusCode == 200) {
        logger.i('Detail inspection added successfully');
      } else if (response.statusCode != 200 || response.statusCode != 201) {
        logger.e('Failed to add detail inspection: ${response.statusMessage}');
        throw Exception(
            'Failed to add detail inspection: ${response.statusMessage}');
      }

      logger.i('Detail inspection added successfully');
    } on DioException catch (error) {
      logger.e('DioException: ${error.message}');
      if (error.response?.statusCode == 401 ||
          error.response?.statusCode == 404) {
        throw Exception('Unauthorized or resource not found');
      } else {
        throw Exception('Network error: ${error.message}');
      }
    } catch (error) {
      logger.e('General error: $error');
      throw Exception('An unexpected error occurred: $error');
    }
  }

  @override
  Future<DetailInspectionGetModel> getDetailInspectionItem(
      int machineId, int number, String tanggal) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final rawToken = prefs.getString('token');
      if (rawToken == null) {
        throw Exception('Token not found');
      }
      final token = rawToken.replaceAll('"', '');
      logger.d("token $token");
      final response = await _dio.get('${dotenv.env['API_BASE_URL']}/detail/$machineId/$number/tanggal=$tanggal',
          options: Options(headers : {'Authorization': 'Bearer $token'}));

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to fetch detail inspection item: ${response.statusMessage}');
      }

      final responseData = response.data;
      if (responseData is Map<String, dynamic> &&
          responseData['status'] == true) {
        final machineData = responseData['data'];
        final item = DetailInspectionGetModel.fromJson(machineData);
        logger.i("Fetched detail inspection item: $item");
        return item;
      } else {
        throw Exception('Invalid response structure');
      }
    } on DioException catch (error) {
      logger.e('DioException: ${error.message}');
      throw Exception('Network error: ${error.message}');
    } catch (error) {
      logger.e('General error: $error');
      throw Exception('An unexpected error occurred: $error');
    }
  }

  @override
  Future<List<DetailInspectionGetModel>> getDetailInspectionList(
      int machineId, String tanggal) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final rawToken = prefs.getString('token');
      if (rawToken == null) {
        throw Exception('Token not found');
      }
      final token = rawToken.replaceAll('"', '');

      final url =
          '${dotenv.env['API_BASE_URL']}/detail/$machineId/tanggal=$tanggal';
      logger.i("Fetching URL: $url");

      final response = await _dio.get(
        url,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to fetch inspection items: ${response.statusMessage}');
      }

      final responseData = response.data;
      logger.i("Response data: $responseData");

      if (responseData is Map<String, dynamic> &&
          responseData['status'] == true) {
        final detailGet = responseData['data'];
        logger.i("Detail Get : $detailGet");

        if (detailGet is List<dynamic>) {
          final items = detailGet
              .map((item) => DetailInspectionGetModel.fromJson(item))
              .toList();
          logger.i("Fetched inspection items: $items");
          return items;
        } else {
          throw Exception('Invalid data structure: data is not a list');
        }
      } else {
        throw Exception('Invalid response: status is not true');
      }
    } on DioException catch (error) {
      logger.e('DioException: ${error.message}');
      throw Exception('Network error: ${error.message}');
    } catch (error) {
      logger.e('General error: $error');
      throw Exception('An unexpected error occurred: $error');
    }
  }
}
