import 'package:maintenanceApp/data/models/user/user_model.dart';

abstract class AuthRepository {
  Future<void> login(String username, String password);
  Future<void> logout();
  Future<UserModel> me();
}