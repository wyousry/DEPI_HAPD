import 'package:bloc/bloc.dart';
import 'package:depi_hapd/Features/Authentication/data/models/register_two.dart';
import 'package:depi_hapd/Features/Authentication/data/rebo/register_rebo.dart';
import 'package:meta/meta.dart';

part 'featured_register_state.dart';

class FeaturedRegisterCubit extends Cubit<FeaturedRegisterState> {
  FeaturedRegisterCubit(this.registerRebo) : super(FeaturedRegisterInitial());

  final RegisterRebo registerRebo;
  Future<void> registerTwo({required String name}) async {
    if (name.isEmpty) {
      emit(FeaturedRegisterFailure('Faculty name cannot be empty'));
      return;
    } 

    emit(FeaturedRegisterLoading());
    try {
      var result = await registerRebo.registerTwo(name: name);
      result.fold((failure) {
        emit(FeaturedRegisterFailure(
            failure.message));
      }, (registerTwo) {
        emit(FeaturedRegisterSuccess(
            registerTwo)); // Emit success with the RegisterTwo data
      });
    } catch (e) {
      emit(FeaturedRegisterFailure('An unexpected error occurred: $e'));
    }
  }
}
