import 'package:get/get.dart';
import 'package:search_document/ui/ui.dart';
import 'package:search_document/ui/auth/auth.dart';

class AppRoutes {
  static const String _initRoute = '/';
  static const String _signinRoute = '/signin';
  static const String _signupRoute = '/signup';
  static const String _homeRoute = '/home';
  static const String _settingsRoute = '/settings';
  static const String _resetPasswordRoute = '/reset-password';
  static const String _updateProfileRoute = '/update-profile';

  static String getInitRoute() => _initRoute;
  static String getSigninRoute() => _signinRoute;
  static String getSignupRoute() => _signupRoute;
  static String getHomeRoute() => _homeRoute;
  static String getSettingsRoute() => _settingsRoute;
  static String getResetPasswordRoute() => _resetPasswordRoute;
  static String getUpdateProfileRoute() => _updateProfileRoute;

  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: _initRoute, page: () => const SplashUI()),
    GetPage(name: _signinRoute, page: () => SignInUI()),
    GetPage(name: _signupRoute, page: () => SignUpUI()),
    GetPage(name: _homeRoute, page: () => const HomeUI()),
    GetPage(name: _settingsRoute, page: () => const SettingsUI()),
    GetPage(name: _resetPasswordRoute, page: () => ResetPasswordUI()),
    GetPage(name: _updateProfileRoute, page: () => UpdateProfileUI()),
  ];
}
