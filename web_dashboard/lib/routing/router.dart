import 'package:flutter/material.dart';
import 'package:web_dashboard/pages/clients/clients.dart';
import 'package:web_dashboard/pages/drivers/drivers.dart';
import 'package:web_dashboard/pages/overview/overview.dart';
import 'package:web_dashboard/pages/permissions/permission.dart';
import 'package:web_dashboard/pages/permissions/widgets/permission_edit.dart';
import 'package:web_dashboard/pages/roles/roles.dart';
import 'package:web_dashboard/pages/users/users.dart';
import 'package:web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return getPageRoute(const OverviewPage());
    case driversPageRoute:
      return getPageRoute(const DriversPage());
    case clientsPageRoute:
      return getPageRoute(const ClientsPage());
    case permissionsPageRoute:
      return getPageRoute(const PermissionsPage());
    case rolesPageRoute:
      return getPageRoute(const RolesPage());
    case usersPageRoute:
      return getPageRoute(const UsersPage());
    case editPermissionPageRouter:
      return getPageRoute(const PermissionEditPage());
    default:
      return getPageRoute(const OverviewPage());
  }
}

PageRoute getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
