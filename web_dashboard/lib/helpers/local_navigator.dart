import 'package:flutter/cupertino.dart';
import 'package:web_dashboard/constants/controller.dart';
import 'package:web_dashboard/constants/routes.dart';
import 'package:web_dashboard/routes/router.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overViewPageRoute,
    );
