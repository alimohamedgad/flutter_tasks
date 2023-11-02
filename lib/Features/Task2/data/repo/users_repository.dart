// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_task/Features/Task2/data/model/users_model.dart';
import 'package:flutter_task/core/utils/api_services.dart';

class UserRepository {
  final ApiService apiService;
  UserRepository(this.apiService);

  Future<List<UserModel>> getUsers() async {
    final response = await apiService.get(endPoint: 'users');
    return response.map((e) => UserModel.fromMap(e)).toList();
  }
}
