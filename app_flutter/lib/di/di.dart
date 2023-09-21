import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension: false)
FutureOr<GetIt> _init(GetIt getIt) => init(getIt);

void configureDependencies() => _init(getIt);
