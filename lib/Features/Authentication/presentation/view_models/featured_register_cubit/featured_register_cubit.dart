import 'package:bloc/bloc.dart';
import 'package:depi_hapd/Features/Authentication/data/models/register_model.dart';
import 'package:depi_hapd/Features/Authentication/data/models/register_two.dart';
import 'package:depi_hapd/Features/Authentication/data/rebo/register_rebo.dart';
import 'package:meta/meta.dart';

part 'featured_register_state.dart';

class FeaturedRegisterCubit extends Cubit<FeaturedRegisterState> {
  FeaturedRegisterCubit(this.registerRebo) : super(FeaturedRegisterInitial());

  final RegisterRebo registerRebo;
  Future<void> register(
      {required String arabicName,
      required String englishName,
      required String nationalID,
      required String dateOfbirth,
      required String gender,
      required String government,
      String? city,
      required String email,
      required String phone,
      required String linkedIn,
      required String password,
      String? profileImage,
      required String university,
      required String faculty,
      required String major,
      required String degree,
      required String governmentOfTraining}) async {
    if (arabicName.isEmpty &&
        englishName.isEmpty &&
        nationalID.isEmpty &&
        dateOfbirth.isEmpty &&
        gender.isEmpty &&
        government.isEmpty) {
      emit(FeaturedRegisterFailure(
          'Arabic Name and\English Name and\nnational ID and\nDate Of Birth and\nGender and\nGovernment and cannot be empty'));
      return;
    }
    if (email.isEmpty &&
        phone.isEmpty &&
        linkedIn.isEmpty &&
        password.isEmpty) {
      emit(FeaturedRegisterFailure(
          'Email and\nPassword and\nPhone and\nLinkedIn cannot be empty'));
      return;
    }
    if (university.isEmpty &&
        faculty.isEmpty &&
        major.isEmpty &&
        degree.isEmpty &&
        governmentOfTraining.isEmpty) {
      emit(FeaturedRegisterFailure(
          'University and\nFaculty and\nMajor and\nDegree and\nGovernment Of Training cannot be empty'));
      return;
    }

    emit(FeaturedRegisterLoading());
    try {
      var result = await registerRebo.register(
          arabicName: arabicName,
          englishName: englishName,
          nationalID: nationalID,
          dateOfbirth: dateOfbirth,
          gender: gender,
          government: government,
          email: email,
          password: password,
          phone: phone,
          linkedIn: linkedIn,
          university: university,
          faculty: faculty,
          major: major,
          degree: degree,
          governmentOfTraining: governmentOfTraining);
      result.fold((failure) {
        emit(FeaturedRegisterFailure(failure.message));
      }, (register) {
        emit(FeaturedRegisterSuccess(
            arabicName,
            englishName,
            nationalID,
            dateOfbirth,
            gender,
            government,
            email,
            password,
            phone,
            linkedIn,
            university,
            faculty,
            major,
            degree,
            governmentOfTraining)); // Emit success with the RegisterTwo data
      });
    } catch (e) {
      emit(FeaturedRegisterFailure('An unexpected error occurred: $e'));
    }
  }

  // Future<void> registerTwo({required String name}) async {
  //   if (name.isEmpty) {
  //     emit(FeaturedRegisterFailure('Faculty name cannot be empty'));
  //     return;
  //   }

  //   emit(FeaturedRegisterLoading());
  //   try {
  //     var result = await registerRebo.registerTwo(name: name);
  //     result.fold((failure) {
  //       emit(FeaturedRegisterFailure(
  //           failure.message));
  //     }, (registerTwo) {
  //       emit(FeaturedRegisterSuccess(
  //           registerTwo)); // Emit success with the RegisterTwo data
  //     });
  //   } catch (e) {
  //     emit(FeaturedRegisterFailure('An unexpected error occurred: $e'));
  //   }
  // }
}
