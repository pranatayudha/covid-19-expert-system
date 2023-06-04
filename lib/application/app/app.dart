import 'package:dio/dio.dart';
import 'package:places_service/places_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../infrastructure/apis/solution_api.dart';
import '../../infrastructure/apis/symptoms_api.dart';
import '../../infrastructure/apis/user_api.dart';
import '../../infrastructure/apis/virus_api.dart';
import '../../ui/shared/no_network.dart';
import '../../ui/views/akun/akun_view.dart';
import '../../ui/views/input_data_diri/input_data_diri_view.dart';
import '../../ui/views/input_gejala/input_gejala_view.dart';
import '../../ui/views/login/login_view.dart';
import '../../ui/views/main/main_view.dart';
import '../../ui/views/riwayat/riwayat_detail/riwayat_detail_view.dart';
import '../../ui/views/riwayat/riwayat_view.dart';
import '../../ui/views/startup/startup_view.dart';
import '../../ui/views/summary/solusi_view.dart';
import '../../ui/views/summary/summary_view.dart';
import '../services/connectivity_service.dart';
import '../services/dio_service.dart';
import '../services/local_db_service.dart';
import '../services/media_service.dart';
import '../services/url_launcher_service.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: MainView),
    MaterialRoute(page: NoNetwork),
    MaterialRoute(page: InputDataDiriView),
    MaterialRoute(page: InputGejalaView),
    MaterialRoute(page: SummaryView),
    MaterialRoute(page: SolusiView),
    MaterialRoute(page: RiwayatView),
    MaterialRoute(page: RiwayatDetailView),
    MaterialRoute(page: AkunView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: PlacesService),
    LazySingleton(classType: MediaService),
    LazySingleton(classType: URLLauncherService),
    LazySingleton(classType: ConnectivityService),
    Singleton(classType: LocalDBService),
    Singleton(
      classType: DioService,
      resolveUsing: DioService.getInstance,
      asType: Dio,
    ),
    LazySingleton(classType: UserAPI),
    LazySingleton(classType: SymptomsAPI),
    LazySingleton(classType: VirusAPI),
    LazySingleton(classType: SolutionAPI),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it **/
}
