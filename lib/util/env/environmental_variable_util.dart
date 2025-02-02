import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_flow/gen/assets.gen.dart';
import 'package:my_flow/util/env/app_default_variables.dart';

Future<void> setUpEnvironmentVariable() async {
  try {
    // try load environment variable from assets
    await dotenv.load(
      fileName: kDebugMode ? Assets.env.debug : Assets.env.release,
    );
  } catch (e) {
    await dotenv.load(
      fileName: Assets.env.env,
      mergeWith: appDefaultVariables,
    );
  }
}
