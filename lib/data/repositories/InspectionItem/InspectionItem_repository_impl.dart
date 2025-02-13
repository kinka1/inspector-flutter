import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/repositories/InspectionItem/inspectionItem.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';

class InspectionitemRepositoryImpl extends InspectionitemRepository {
  final _dio = Dio();
  final logger = Logger();
  @override
  Future<List<InspectionitemModel>> getInspectionItem(int id) async {
    // final String _url = 'http://10.0.2.2:5226/api/InspectionItems/1';
    try {
      final response =
          await _dio.get('${dotenv.env['API_BASE_URL']}/InspectionItems/$id');


      await Future.delayed(Duration(seconds: 2));

      if (response.statusCode == 200) {
        final responseData = response.data;

        // ✅ Periksa apakah responseData adalah Map
        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          final List<dynamic> machineData = responseData['data'];
          if (machineData is List) {
            List<InspectionitemModel> items = machineData
                .map((item) => InspectionitemModel.fromJson(item))
                .toList();

            return items;
          } else {
            throw Exception('Invalid data format: Expected a List');
          }
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

  @override
  Future<InspectionitemModel> getInspectionItembyNumber(int id,int number) async {
    // final String _url = 'http://10.0.2.2:5226/api/InspectionItems/1';
    try {
      final response =
          await _dio.get('${dotenv.env['API_BASE_URL']}/InspectionItems/$id/$number');


      await Future.delayed(Duration(seconds: 2));

      if (response.statusCode == 200) {
        final responseData = response.data;

        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          final machineData = responseData['data'];

          return InspectionitemModel.fromJson(machineData);
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
