
import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/repositories/InspectionItem/inspectionItem.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InspectionitemRepositoryImpl extends InspectionitemRepository {
  final _dio = Dio();

  @override
  Future<InspectionitemResponse> getInspectionitem(int machineId) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final response = await _dio.get(
        '${dotenv.env['API_BASE_URL']}/InspectionItems/${machineId.toString()}'
      );

      if (response.statusCode == 200) {
        return InspectionitemResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load assessment');
      }
    } on DioException catch (error) {
      throw Exception(error.message);
    }
  }
  
}