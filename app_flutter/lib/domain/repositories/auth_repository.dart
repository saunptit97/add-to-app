import 'package:app_flutter/data/models/auth_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<dynamic, AuthModel>> signIn({
    required Map<String, dynamic> body,
  });
}
