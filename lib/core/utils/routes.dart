import 'package:david_hyll/app/presentation/pages/add_adventure_page.dart';
import 'package:david_hyll/app/presentation/pages/discover_page.dart';
import 'package:david_hyll/app/presentation/pages/home_screen.dart';
import 'package:david_hyll/app/presentation/pages/plans_page.dart';
import 'package:david_hyll/app/presentation/pages/profile_page.dart';
import 'package:david_hyll/app/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _discoverShellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'discoverShell');
final _searchShellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'searchShell');
final _addAdventureShellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'addAdventureShell');
final _plansShellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'plansAdventureShell');
final _profileShellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'profileShell');

final goRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: true,
  // refreshListenable: GoRouterRefreshStream(userAuthBloc.stream),
  routes: [

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeScreen(
            navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _discoverShellNavigatorAKey,
          routes: [
            GoRoute(
              path: '/',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: DiscoverPage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _searchShellNavigatorBKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/search',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: SearchPage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _addAdventureShellNavigatorBKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/add_adventure',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: AddAdventurePage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _plansShellNavigatorBKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/plans',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: PlansPage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _profileShellNavigatorBKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/profile',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: ProfilePage(),
              ),
            ),
          ],
        ),
      ],
    ),

  ],
);