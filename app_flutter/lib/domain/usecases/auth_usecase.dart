import 'package:app_flutter/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthLoginUseCase extends UseCase<dynamic, dynamic> {
  final AuthRepository authRepository;

  AuthLoginUseCase(this.authRepository);
  @override
  Future call(params) async {
    return null;
  }
}

abstract class UseCase<T, P> {
  Future<T> call(P params);
}
