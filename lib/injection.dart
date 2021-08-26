import 'package:devour/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt serviceLocator = GetIt.instance;

@injectableInit
void setupInjections() => $initGetIt(serviceLocator);
