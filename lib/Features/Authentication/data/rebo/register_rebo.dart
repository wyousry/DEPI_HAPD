import 'package:dartz/dartz.dart';
import 'package:depi_hapd/Features/Authentication/data/models/register_model.dart';
import 'package:depi_hapd/core/errors/failures.dart';

abstract class RegisterRebo {
  Future<Either<Failures, RegisterModel>> register({
    required String arabicName,
    required String englishName,
    required String nationalID,
    required String dateOfbirth,
    required String gender,
    required String government,
    String city,
    required String email,
    required String phone,
    required String linkedIn,
    required String password,
    String profileImage,
    required String university,
    required String faculty,
    required String major,
    required String degree,
    required String governmentOfTraining,
  });

  registerTwo({required String name}) {}
  // Future<Either<Failures, RegisterTwo>> registerTwo({required String name});
}
