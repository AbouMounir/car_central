import 'package:car_rental/src/core/constants.dart';
import 'package:car_rental/src/features/choice_car/presentation/pages/choice_car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const CarRentalApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: PageRoutes.home,
      builder: (BuildContext context, GoRouterState state) {
        return const ChoiceCar();
      },
      /* routes: <RouteBase>[
        GoRoute(
          path: PageRoutes.choise_car,
          builder: (BuildContext context, GoRouterState state) {
            return const ChoiceCar();
          },
        ),
      ], */
    ),
  ],
);

class CarRentalApp extends StatelessWidget {
  const CarRentalApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            routerConfig: _router,
            debugShowCheckedModeBanner: false,
            title: 'Car Rental',
            theme: ThemeData(
              useMaterial3: true,
            ),
          );
        });
  }
}
