import 'package:dartz/dartz.dart';
import 'package:depi_hapd/core/errors/failures.dart';
import 'package:depi_hapd/Features/Authentication/data/models/login_model.dart';

abstract class LoginRebo {
  Future<Either<Failures, LoginModel>> login({
    required String email,
    required String password,
  });
}
