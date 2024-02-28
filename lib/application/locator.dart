import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stdio93/application/locator.config.dart';


final getIt = GetIt.instance;

const desktop = Environment('desktop');


@InjectableInit(
  preferRelativeImports: false,
  throwOnMissingDependencies: true,
)
GetIt configureDependencies() => getIt.init();
