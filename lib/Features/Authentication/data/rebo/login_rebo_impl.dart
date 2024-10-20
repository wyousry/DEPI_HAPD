import 'package:dartz/dartz.dart';
import 'package:depi_hapd/Features/Authentication/data/models/login_model.dart';
import 'package:depi_hapd/Features/Authentication/data/rebo/login_rebo.dart';
import 'package:depi_hapd/core/errors/failures.dart';
import 'package:depi_hapd/core/utils/api_service.dart';
import 'package:dio/dio.dart';

class LoginReboImpl implements LoginRebo {
  final ApiService apiService;
  LoginReboImpl(this.apiService);

  @override
  Future<Either<Failures, LoginModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      // Prepare the body
      Map<String, dynamic> body = {
        'email': email,
        'password': password,
      };

      // Make the API call
      var result = await apiService.post(endPoint: 'student/login', body: body);

      // Parse the result into a RegisterTwo model
      LoginModel loginResponse = LoginModel.fromJson(result);

      // Return the parsed model as a success
      return Right(loginResponse);
    } on DioException catch (e) {
      // Handle DioError specifically (like network issues or server errors)
      if (e.response != null) {
        // If there is a response from the server
        return Left(ServerFailure('Server error: ${e.response?.statusCode}'));
      } else {
        // Network-related error (e.g., no internet connection)
        return Left(NetworkFailure('Network error: ${e.message}'));
      }
    } catch (e) {
      // Catch any other type of error and return a general failure
      return Left(ValidationFailure('Unknown error: $e'));
    }
  }
}
