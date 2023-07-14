import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const HomeScreen({Key? key, required this.navigationShell}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme
            .of(context)
            .colorScheme
            .primary,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: _goBranch,
        currentIndex: widget.navigationShell.currentIndex,
        backgroundColor: Theme
            .of(context)
            .colorScheme.background,
        items: const [
          BottomNavigationBarItem(
            label: 'Discover',
            activeIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined,),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            activeIcon: Icon(Icons.search_sharp),
            icon: Icon(Icons.search_sharp,),
          ),
          BottomNavigationBarItem(
            label: 'Add',
            activeIcon: Icon(Icons.add_circle),
            icon: Icon(Icons.add_circle_outline,),
          ),
          BottomNavigationBarItem(
            label: 'Plans',
            activeIcon: Icon(Icons.check_circle),
            icon: Icon(Icons.check_circle_outlined,),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline,),
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
