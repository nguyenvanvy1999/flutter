import 'package:flutter/material.dart';
import 'package:web_dashboard/helpers/local_navigator.dart';
import 'package:web_dashboard/helpers/responsive.dart';
import 'package:web_dashboard/widgets/larger_screen.dart';
import 'package:web_dashboard/widgets/side_menu.dart';
import 'package:web_dashboard/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topNavigationBar(context, scaffoldState),
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        drawer: const Drawer(
          child: SideMenu(),
        ),
        body: ResponsiveWidget(
          largeScreen: const LargerScreen(),
          smallScreen: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          ),
        ));
  }
}
