import 'package:baby_store_app/Features/Home/data/models/user_model/user_model.dart';
import 'package:baby_store_app/Features/Home/data/repos/home_repo.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit(this.homeRepo) : super(UsersInitial());
  final HomeRepo homeRepo;

  Future<void> fetchAllUsers() async {
    emit(UsersLoading());
    var result = await homeRepo.fetchAllUsers();
    result.fold((failure) {
      emit(UsersFailure(errMessage: failure.errMessage));
    }, (users) {
      emit(UsersSuccess(users: users));
    });
  }
}
