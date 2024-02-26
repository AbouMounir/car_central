import 'package:car_rental/src/core/constants.dart';
import 'package:car_rental/src/features/car_details/presentation/pages/car_details.dart';
import 'package:car_rental/src/features/choice_car/presentation/pages/choice_car.dart';
import 'package:car_rental/src/features/on_boarding/on_boarding_page.dart';
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
        return const OnBoardingPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: PageRoutes.choiseCar,
          builder: (BuildContext context, GoRouterState state) {
            return const ChoiceCar();
          },
        ),
        GoRoute(
          path: PageRoutes.carDetails,
          builder: (BuildContext context, GoRouterState state) {
            return const CarDetails();
          },
        ),
      ],
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
