part of 'featured_login_cubit.dart';

sealed class FeaturedloginState {}

final class FeaturedloginInitial extends FeaturedloginState {}

class FeaturedloginLoading extends FeaturedloginState {}

class FeaturedloginSuccess extends FeaturedloginState {
  final String? email;
  final String? password;

  FeaturedloginSuccess(
    this.email,
    this.password,
  );
}

class FeaturedLoginFailure extends FeaturedloginState {
  final String errMessage;

  FeaturedLoginFailure([String? message])
      : errMessage = message ?? 'Unknown error occurred';
}
