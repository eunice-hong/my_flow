import 'package:get_it/get_it.dart';
import 'package:my_flow/app/di/data/datasource_injection.dart';
import 'package:my_flow/app/di/data/logger_injection.dart';
import 'package:my_flow/app/di/data/repository_injection.dart';

extension AppGetIt on GetIt {
  Future<void> init() async {
    setupFirebaseAnalytics();
    await setupDatasource();
    setupRepository();
  }
}
