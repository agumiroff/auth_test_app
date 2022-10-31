import '../enitites/user_entity.dart';

abstract class GetUserDataInterface {
  Future<List<UserEntity>> getUserData();
}
