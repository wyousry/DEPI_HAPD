// import 'package:dartz/dartz.dart';
// import 'package:depi_hapd/Features/Authentication/data/models/login_model.dart';
// import 'package:depi_hapd/Features/Authentication/data/rebo/login_rebo.dart';
// import 'package:depi_hapd/core/errors/failures.dart';
// import 'package:depi_hapd/core/utils/api_service.dart';
// import 'package:dio/dio.dart';

// class LoginReboImpl implements LoginRebo {
//   final ApiService apiService;

//   LoginReboImpl(this.apiService);

//   @override
//   Future<Either<Failures, LoginModel>> login({
//     required String email,
//     required String password,
//   }) async {
//     try {
//     
//       Map<String, dynamic> body = {
//         'email': email,
//         'password': password,
//       };

//       
//       var result = await apiService.post(endPoint: 'student/login', body: body);

//       
//       LoginModel loginResponse = LoginModel.fromJson(result);

//       
//       return Right(loginResponse);
//     } on DioException catch (e) {
//       if (e.response != null) {
//         return Left(ServerFailure('Server error: ${e.response?.statusCode}'));
//       } else {
//         return Left(NetworkFailure('Network error: ${e.message}'));
//       }
//     } catch (e) {
//       return Left(ValidationFailure('Unknown error: $e'));
//     }
//   }
// }
