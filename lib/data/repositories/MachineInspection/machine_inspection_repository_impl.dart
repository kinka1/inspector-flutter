import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/models/MachineInspection/machine_inspection_model.dart';
import 'package:maintenanceApp/data/repositories/MachineInspection/machine_inspection_repository.dart';

class MachineInspectionRepositoryImpl extends MachineInspectionRepository {
  final logger = Logger();
  final _dio = Dio();
  @override
  Future<MachineInspectionModel> getInspectionItem(String id,String buId) async {
  try {
    logger.d("MASUK TRY REPO MACHINE INSPECTION, machine id : $id, buId : $buId");
    final response =
        await _dio.get('${dotenv.env['API_BASE_URL']}/machineInspection/BU=$buId/$id');
    // logger.i("RESPONSE MACHINE INSPECTION : ${response}");

    if (response.statusCode == 200) {
      final responseData = response.data;
      if (responseData is Map<String, dynamic>) {
        if (responseData is Map<String, dynamic>) {
          MachineInspectionModel item = MachineInspectionModel.fromJson(responseData);
          // logger.i("RESPONSE MACHINE INSPECTION: $item");
          return item;
        } else {
          // logger.e("ERROR MACHINE INSPECTION: Invalid 'data' structure");
          throw Exception("Invalid 'data' structure in the response");
        }
      } else {
        // logger.e("ERROR MACHINE INSPECTION: Invalid response structure");
        throw Exception("Invalid response structure");
      }
    } else {
      throw Exception('Failed to get Inspection Items');
    }
  } on DioException catch (error) {
    // logger.e("ERROR MACHINE INSPECTION : ${error.message}");
    throw Exception(error.message);
  }
}

  @override
  Future<MachineInspectionModel> getInspectionItembyNumber(
      String id, int number) {
    // TODO: implement getInspectionItembyNumber
    throw UnimplementedError();
  }
}
