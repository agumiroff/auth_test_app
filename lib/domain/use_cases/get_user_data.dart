import '../../data/repository/repository.dart';
import '../enitites/user_entity.dart';
import '../repository/repository.dart';

class GetUserDataUseCase {
  final GetUserDataInterface _getUserDataInterface = UserDataRepository();

  Future<List<UserEntity>> call() async {
    return await _getUserDataInterface.getUserData();
  }
}
