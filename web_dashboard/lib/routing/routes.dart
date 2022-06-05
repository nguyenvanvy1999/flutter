const rootRoute = '/';

const String overviewPageDisplayName = 'Overview';
const String overviewPageRoute = '/overview';

const String driversPageDisplayName = 'Drivers';
const String driversPageRoute = '/drivers';

const String clientsPageDisplayName = 'Clients';
const String clientsPageRoute = '/clients';

const String permissionsPageDisplayName = 'Permissions';
const String permissionsPageRoute = '/permissions';

const String rolesPageDisplayName = 'Roles';
const String rolesPageRoute = '/roles';

const String usersPageDisplayName = 'Users';
const String usersPageRoute = '/users';

const String authenticationPageDisplayName = 'Log out';
const String authenticationPageRoute = '/auth';

const String editPermissionPageRouter = '/edit-permission';

class MenuItem {
  MenuItem(this.name, this.route);

  final String name;
  final String route;
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(overviewPageDisplayName, overviewPageRoute),
  MenuItem(driversPageDisplayName, driversPageRoute),
  MenuItem(clientsPageDisplayName, clientsPageRoute),
  MenuItem(permissionsPageDisplayName, permissionsPageRoute),
  MenuItem(rolesPageDisplayName, rolesPageRoute),
  MenuItem(usersPageDisplayName, usersPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
