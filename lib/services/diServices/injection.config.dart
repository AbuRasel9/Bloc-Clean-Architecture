// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/network/base_api_services.dart' as _i712;
import '../../data/network/network_services_api.dart' as _i254;
import '../../repository/auth_http_repository.dart' as _i994;
import '../../repository/auth_repository.dart' as _i242;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i242.AuthRepository>(() => _i994.AuthHttpRepository());
    gh.factory<_i712.BaseApiServices>(() => _i254.NetworkServicesApi());
    return this;
  }
}
