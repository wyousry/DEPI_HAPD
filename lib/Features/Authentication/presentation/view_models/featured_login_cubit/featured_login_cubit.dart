import 'package:bloc/bloc.dart';

import 'package:depi_hapd/Features/Authentication/data/rebo/login_rebo.dart';

part 'featured_login_state.dart';

class FeaturedLoginCubit extends Cubit<FeaturedloginState> {
  FeaturedLoginCubit(this.loginRebo) : super(FeaturedloginInitial());

  final LoginRebo loginRebo;
  Future<void> login({
    required String email,
    required String password,
  }) async {
    if (email.isEmpty && password.isEmpty) {
      emit(FeaturedLoginFailure('Email and\nPassword  cannot be empty'));
      return;
    }

    emit(FeaturedloginLoading());
    try {
      var result = await loginRebo.login(
        email: email,
        password: password,
      );
      result.fold((failure) {
        emit(FeaturedLoginFailure(failure.message));
      }, (register) {
        emit(
          FeaturedloginSuccess(
            email,
            password,
          ),
        ); // Emit success with the RegisterTwo data
      });
    } catch (e) {
      emit(FeaturedLoginFailure('An unexpected error occurred: $e'));
    }
  }
}
