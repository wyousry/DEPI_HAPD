
abstract class Failures {
  final String message;
  Failures(this.message);
}

class ServerFailure extends Failures {
  ServerFailure(super.message); 

  // factory ServerFailure.fromDioError(DioException dioError) {
  //   switch (dioError.type) {
  //     case DioExceptionType.connectionTimeout:
  //       return ServerFailure('Connection timeout with ApiServer');
  //     case DioExceptionType.sendTimeout:
  //       return ServerFailure('Send timeout with ApiServer');
  //     case DioExceptionType.receiveTimeout:
  //       return ServerFailure('Connection timeout with ApiServer');
  //     case DioExceptionType.badCertificate:
  //     // TODO: Handle this case.
  //     case DioExceptionType.badResponse:
  //     // TODO: Handle this case.
  //     case DioExceptionType.cancel:
  //     // TODO: Handle this case.
  //     case DioExceptionType.connectionError:
  //     // TODO: Handle this case.
  //     case DioExceptionType.unknown:
  //     // TODO: Handle this case.
  //   }
  // }
}

class NetworkFailure extends Failures {
  NetworkFailure(super.message);
}

class ValidationFailure extends Failures {
  ValidationFailure(super.message);
}
