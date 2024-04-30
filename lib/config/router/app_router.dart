import 'package:calculos/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()
    ),

    GoRoute(
      path: '/suma',
      name: SumaScreen.name,
      builder: (context, state) => const SumaScreen()
    ),

    GoRoute(
      path: '/resta',
      name: RestaScreen.name,
      builder: (context, state) => const RestaScreen()
    ),

    GoRoute(
      path: '/multiplicacion',
      name: MultiplicacionScreen.name,
      builder: (context, state) => const MultiplicacionScreen()
    ),

  ]
);