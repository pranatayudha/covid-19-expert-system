// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:covid_19_expert_system/ui/shared/no_network.dart' as _i5;
import 'package:covid_19_expert_system/ui/views/akun/akun_view.dart' as _i12;
import 'package:covid_19_expert_system/ui/views/input_data_diri/input_data_diri_view.dart'
    as _i6;
import 'package:covid_19_expert_system/ui/views/input_gejala/input_gejala_view.dart'
    as _i7;
import 'package:covid_19_expert_system/ui/views/login/login_view.dart' as _i3;
import 'package:covid_19_expert_system/ui/views/main/main_view.dart' as _i4;
import 'package:covid_19_expert_system/ui/views/riwayat/riwayat_detail/riwayat_detail_view.dart'
    as _i11;
import 'package:covid_19_expert_system/ui/views/riwayat/riwayat_view.dart'
    as _i10;
import 'package:covid_19_expert_system/ui/views/startup/startup_view.dart'
    as _i2;
import 'package:covid_19_expert_system/ui/views/summary/solusi_view.dart'
    as _i9;
import 'package:covid_19_expert_system/ui/views/summary/summary_view.dart'
    as _i8;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i14;

class Routes {
  static const startupView = '/';

  static const loginView = '/login-view';

  static const mainView = '/main-view';

  static const noNetwork = '/no-network';

  static const inputDataDiriView = '/input-data-diri-view';

  static const inputGejalaView = '/input-gejala-view';

  static const summaryView = '/summary-view';

  static const solusiView = '/solusi-view';

  static const riwayatView = '/riwayat-view';

  static const riwayatDetailView = '/riwayat-detail-view';

  static const akunView = '/akun-view';

  static const all = <String>{
    startupView,
    loginView,
    mainView,
    noNetwork,
    inputDataDiriView,
    inputGejalaView,
    summaryView,
    solusiView,
    riwayatView,
    riwayatDetailView,
    akunView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i3.LoginView,
    ),
    _i1.RouteDef(
      Routes.mainView,
      page: _i4.MainView,
    ),
    _i1.RouteDef(
      Routes.noNetwork,
      page: _i5.NoNetwork,
    ),
    _i1.RouteDef(
      Routes.inputDataDiriView,
      page: _i6.InputDataDiriView,
    ),
    _i1.RouteDef(
      Routes.inputGejalaView,
      page: _i7.InputGejalaView,
    ),
    _i1.RouteDef(
      Routes.summaryView,
      page: _i8.SummaryView,
    ),
    _i1.RouteDef(
      Routes.solusiView,
      page: _i9.SolusiView,
    ),
    _i1.RouteDef(
      Routes.riwayatView,
      page: _i10.RiwayatView,
    ),
    _i1.RouteDef(
      Routes.riwayatDetailView,
      page: _i11.RiwayatDetailView,
    ),
    _i1.RouteDef(
      Routes.akunView,
      page: _i12.AkunView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.LoginView(),
        settings: data,
      );
    },
    _i4.MainView: (data) {
      final args = data.getArgs<MainViewArguments>(
        orElse: () => const MainViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i4.MainView(key: args.key, isAdmin: args.isAdmin),
        settings: data,
      );
    },
    _i5.NoNetwork: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.NoNetwork(),
        settings: data,
      );
    },
    _i6.InputDataDiriView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.InputDataDiriView(),
        settings: data,
      );
    },
    _i7.InputGejalaView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.InputGejalaView(),
        settings: data,
      );
    },
    _i8.SummaryView: (data) {
      final args = data.getArgs<SummaryViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i8.SummaryView(
            key: args.key,
            idVirusesMapping: args.idVirusesMapping,
            idVirus: args.idVirus,
            idSymptoms: args.idSymptoms),
        settings: data,
      );
    },
    _i9.SolusiView: (data) {
      final args = data.getArgs<SolusiViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i9.SolusiView(key: args.key, idSymptoms: args.idSymptoms),
        settings: data,
      );
    },
    _i10.RiwayatView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.RiwayatView(),
        settings: data,
      );
    },
    _i11.RiwayatDetailView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.RiwayatDetailView(),
        settings: data,
      );
    },
    _i12.AkunView: (data) {
      final args = data.getArgs<AkunViewArguments>(
        orElse: () => const AkunViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i12.AkunView(
            fromBerandaHeader: args.fromBerandaHeader, key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class MainViewArguments {
  const MainViewArguments({
    this.key,
    this.isAdmin = false,
  });

  final _i13.Key? key;

  final bool? isAdmin;
}

class SummaryViewArguments {
  const SummaryViewArguments({
    this.key,
    required this.idVirusesMapping,
    required this.idVirus,
    required this.idSymptoms,
  });

  final _i13.Key? key;

  final String idVirusesMapping;

  final String idVirus;

  final List<dynamic> idSymptoms;
}

class SolusiViewArguments {
  const SolusiViewArguments({
    this.key,
    required this.idSymptoms,
  });

  final _i13.Key? key;

  final List<dynamic> idSymptoms;
}

class AkunViewArguments {
  const AkunViewArguments({
    this.fromBerandaHeader = false,
    this.key,
  });

  final bool fromBerandaHeader;

  final _i13.Key? key;
}

extension NavigatorStateExtension on _i14.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMainView({
    _i13.Key? key,
    bool? isAdmin = false,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.mainView,
        arguments: MainViewArguments(key: key, isAdmin: isAdmin),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNoNetwork([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.noNetwork,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInputDataDiriView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.inputDataDiriView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInputGejalaView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.inputGejalaView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSummaryView({
    _i13.Key? key,
    required String idVirusesMapping,
    required String idVirus,
    required List<dynamic> idSymptoms,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.summaryView,
        arguments: SummaryViewArguments(
            key: key,
            idVirusesMapping: idVirusesMapping,
            idVirus: idVirus,
            idSymptoms: idSymptoms),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSolusiView({
    _i13.Key? key,
    required List<dynamic> idSymptoms,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.solusiView,
        arguments: SolusiViewArguments(key: key, idSymptoms: idSymptoms),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRiwayatView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.riwayatView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRiwayatDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.riwayatDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAkunView({
    bool fromBerandaHeader = false,
    _i13.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.akunView,
        arguments:
            AkunViewArguments(fromBerandaHeader: fromBerandaHeader, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
