
import 'package:maintenanceApp/data/models/machine/machine_model.dart';
import 'package:maintenanceApp/data/repositories/machine/machine.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MachineRepositoryImpl extends MachineRepository {
  final _dio = Dio();
  @override
  Future<MachineModel> getMachines(String id) async {
    try {
      final response = await _dio.get('${dotenv.env['API_BASE_URL']}/machine/$id');
      await Future.delayed(Duration(seconds: 2));
      if (response.statusCode == 200) {
        final Map<dynamic, dynamic> responseData = response.data;

        if (responseData['status'] == true) {
          var machineData = responseData['data'];
          MachineModel machine = MachineModel.fromJson(machineData);
          return machine;
        } else {
          throw Exception('Failed to get Inspection Items');
        }
      } else {
        throw Exception('Failed to get Inspection Items');
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}
