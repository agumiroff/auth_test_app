import 'package:bloc/bloc.dart';
import '../../../../domain/enitites/user_entity.dart';
import '../../../../domain/use_cases/get_user_data.dart';

enum UserPageStatus { initial, loading, success, failure }

class UserPageState {
  final UserPageStatus status;
  final List<UserEntity> listOfUsers;
  final String errorMessage;

  const UserPageState({
    this.errorMessage = '',
    this.status = UserPageStatus.initial,
    this.listOfUsers = const [],
  });

  copyWith({
    List<UserEntity>? listOfUsers,
    UserPageStatus? status,
    String? errorMessage,
  }) {
    return UserPageState(
      listOfUsers: listOfUsers ?? this.listOfUsers,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class UserPageCubit extends Cubit<UserPageState> {
  final GetUserDataUseCase getUserDataUseCase;

  UserPageCubit(this.getUserDataUseCase) : super(const UserPageState());

  loadUserData() async {
    emit(state.copyWith(status: UserPageStatus.loading));
    try {
      List<UserEntity> listOfUsers = await getUserDataUseCase.call();
      emit(state.copyWith(status: UserPageStatus.success, listOfUsers: listOfUsers));
    } on Error catch (e) {
      emit(state.copyWith(status: UserPageStatus.failure, errorMessage: e.toString()));
    }
  }
}
