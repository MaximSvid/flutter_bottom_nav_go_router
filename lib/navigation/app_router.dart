import 'package:flutter_bottom_nav_go_router/navigation/scaffold_with_nav_bar.dart';
import 'package:flutter_bottom_nav_go_router/screens/home_screen.dart';
import 'package:flutter_bottom_nav_go_router/screens/list_screen.dart';
import 'package:flutter_bottom_nav_go_router/screens/settings/settings_details_screen.dart';
import 'package:flutter_bottom_nav_go_router/screens/settings/settings_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: <RouteBase>[
    // Используем StatefulShellRoute для создания нижней навигации
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavBar(
          navigationShell: navigationShell,
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeScreen(),
            ),
  ],
),
StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/list',
            builder: (context, state) => const ListScreen(),
          ),
],
),

StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsScreen(),
            routes: [
              GoRoute(
                path: 'details',
                builder: (context, state) => const SettingsDetailsScreen(),
              ),
            ],
          ),
        ]),
      ],
    ),
  ],
);

          