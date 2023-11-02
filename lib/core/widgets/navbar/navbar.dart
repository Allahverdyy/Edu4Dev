import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HomeViewRoute(), HomeViewRoute(), HomeViewRoute(), HomeViewRoute(), ProfileViewRoute()],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: tabsRouter.setActiveIndex);
      },
    );
  }
}

List<BottomNavigationBarItem> bottomNavItems =  <BottomNavigationBarItem>[
  const BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.grid_3x3),
    label: 'Category',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.search_outlined),
    label: 'Search',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.favorite_outline),
    label: 'Favourite',
  ),
  const BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
  ),
];

const List<Widget> bottomNavScreen = <Widget>[
  Text('Index 0: Home'),
  Text('Index 1: Category'),
  Text('Index 2: Search'),
  Text('Index 3: Favourite'),
  Text('Index 4: Cart'),
];
