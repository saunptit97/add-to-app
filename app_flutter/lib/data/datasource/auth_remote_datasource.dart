import 'package:app_flutter/data/models/auth_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRemoteDatasource {
  Future<Either<dynamic, AuthModel>> signIn(
      {required Map<String, dynamic> body});
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  @override
  Future<Either<dynamic, AuthModel>> signIn({
    required Map<String, dynamic> body,
  }) {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
