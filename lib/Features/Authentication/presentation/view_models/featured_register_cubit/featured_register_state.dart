part of 'featured_register_cubit.dart';

@immutable
sealed class FeaturedRegisterState {}

final class FeaturedRegisterInitial extends FeaturedRegisterState {}

class FeaturedRegisterLoading extends FeaturedRegisterState {}

class FeaturedRegisterSuccess extends FeaturedRegisterState {
  final String? arabicName;
  final String? englishName;
  final String? nationalID;
  final String? dateOfBirth;
  final String? gender;
  final String? government;

  final String? email;
  final String? password;
  final String? phone;
  final String? linkedIn;
  final String? university;
  final String? faculty;
  final String? major;
  final String? degree;
  final String? governmentOfTraining; // Add this to pass the result data

  FeaturedRegisterSuccess(
      this.arabicName,
      this.englishName,
      this.nationalID,
      this.dateOfBirth,
      this.gender,
      this.government,
      this.email,
      this.password,
      this.phone,
      this.linkedIn,
      this.university,
      this.faculty,
      this.major,
      this.degree,
      this.governmentOfTraining);
}

class FeaturedRegisterFailure extends FeaturedRegisterState {
  final String errMessage;

  FeaturedRegisterFailure([String? message])
      : errMessage = message ?? 'Unknown error occurred';
}
