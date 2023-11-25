import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:yotzim_basalon/my_app.dart';
// import 'package:firebase_core/firebase_core.dart';

///FIXME: To fix `uri_does_not_exist`, run the following command:
///
/// flutterfire configure
/// docs:
/// https://firebase.google.com/docs/flutter/setup?authuser=0&hl=en&platform=web
// import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((LogRecord record) {
    log('${record.loggerName} ${record.level.name}: ${record.time}: ${record.message}');
  });
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
