import 'package:ecom_app/Presentation/Widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Presentation/Pages/pages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const Home());
  }

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final screens = const [
    HomePage(),
    AccountPage(),
    FavoritePage(),
    NotificationPage()
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: const MainAppBar(),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor:
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
          labelTextStyle: MaterialStatePropertyAll(
              GoogleFonts.raleway(color: Colors.transparent)),
        ),
        child: NavigationBar(
          height: 70,
          backgroundColor: Theme.of(context).primaryColor,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(
            () {
              this.index = index;
            },
          ),
          destinations: [
            NavigationDestination(
                icon: Icon(
                  CupertinoIcons.home,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(
                  CupertinoIcons.person,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                label: 'Category'),
            NavigationDestination(
                icon: Icon(
                  CupertinoIcons.heart,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                label: 'Wishlist'),
            NavigationDestination(
                icon: Icon(
                  CupertinoIcons.bell,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                label: 'Notifications')
          ],
        ),
      ),
    );
  }
}
