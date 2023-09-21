import 'package:app_flutter/data/models/auth_model.dart';
import 'package:app_flutter/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<dynamic, AuthModel>> signIn({
    required Map<String, dynamic> body,
  }) async {
    return const Right(AuthModel(email: ""));
  }
}
