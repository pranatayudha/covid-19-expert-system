import 'package:flutter/material.dart';

import 'application/app/app.locator.dart';
import 'application/app/covid_19_expert_system.dart';
import 'infrastructure/database/hive_db.dart';
import 'ui/customs/custom_bottom_sheets/setup_bottom_sheet_ui.dart';
import 'ui/customs/custom_dialogs/setup_dialog_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveDB.init();

  setupLocator();
  setupDialogUI();
  setupBottomSheetUI();

  runApp(const COVID19ExpertSystem());
}
