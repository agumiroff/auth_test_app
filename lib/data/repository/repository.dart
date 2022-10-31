import 'dart:convert';
import 'package:almaty_test/domain/enitites/user_entity.dart';
import 'package:http/http.dart' as http;
import '../../domain/repository/repository.dart';

class UserDataRepository implements GetUserDataInterface {
  @override
  Future<List<UserEntity>> getUserData() async {
    const String url = 'https://jsonplaceholder.typicode.com/users';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return body.map<UserEntity>((e) => UserEntity.fromJson(e)).toList();
    } else {
      throw ServerException();
    }
  }
}

class ServerException {
  @override
  String toString() {
    return 'Server error';
  }
}
