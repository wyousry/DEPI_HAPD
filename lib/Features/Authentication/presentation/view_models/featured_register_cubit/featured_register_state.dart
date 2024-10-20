part of 'featured_register_cubit.dart';

@immutable
sealed class FeaturedRegisterState {}

final class FeaturedRegisterInitial extends FeaturedRegisterState {}

class FeaturedRegisterLoading extends FeaturedRegisterState {}

class FeaturedRegisterSuccess extends FeaturedRegisterState {
  final RegisterTwo registerTwo; // Add this to pass the result data

  FeaturedRegisterSuccess(this.registerTwo);
}
 
class FeaturedRegisterFailure extends FeaturedRegisterState {
  final String errMessage;

  FeaturedRegisterFailure([String? message])
      : errMessage = message ?? 'Unknown error occurred';
}
