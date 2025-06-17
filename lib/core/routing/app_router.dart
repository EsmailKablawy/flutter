import 'package:event/features/forget_password/cubit/forget_password_cubit.dart';
import 'package:event/features/sign_up/ui/screens/sign_up_screen.dart';
import 'package:event/features/sign_up/ui/screens/subscription_sucsfull_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/event/ui/screens/event_screen.dart';
import '../../features/forget_password/ui/screens/forget_password_screen.dart';
import '../../features/home/ui/screens/home_screen.dart';
import '../../features/login/cubit/login_cubit.dart';
import '../../features/login/ui/screens/login_screen.dart';

import '../../features/main_screen/ui/screen/main_screen.dart';
import '../../features/profile/ui/screens/profile_screen.dart';
import '../../features/service/ui/screens/service_screen.dart';
import '../../features/shop/ui/screens/shop_screen.dart';
import '../../features/splash_screen/splash_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      //splash
      case AppRoute.splashScreen:
        return CupertinoPageRoute(
          builder: (_) => const SplashScreen(),
        );

      //auth
      case AppRoute.loginScreen:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      //
      case AppRoute.signUpScreen:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const SignUpScreen(),
          ),
        );
      //
      case AppRoute.forgetPasswordScreen:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ForgetPasswordCubit>(),
            child: const ForgetPasswordScreen(),
          ),
        );
      //
      case AppRoute.subscriptionSucsfullScreen:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const SubscriptionSucsfullScreen(),
          ),
        );
      case AppRoute.mainScreen:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const MainScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );

      // case AppRoute.mainScreen:
      //   return MaterialWithModalsPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<MainCubit>()
      //         ..emitmyDataStates()
      //         ..setName(),
      //       child: const MainScreen(),
      //     ),
      //   );

      default:
        return CupertinoPageRoute(builder: (_) => const SplashScreen());
    }
  }
}

final screens = [
//   BlocProvider(
//     create: (context) => getIt<HomeCubit>()
//       ..setName()
//       ..emitcourseStates(id: '')
//       ..emitcategoriesStates()
//       ..emiteventsStates(),
//     child: const HomeScreen(),
//   ),
//   BlocProvider(
//     create: (context) => getIt<MyCoursesCubit>()
//       ..emitcourseStates()
//       ..emitapprovedcourseStates()
//       ..emitmyPointStates(),
//     child: const MyCoursesScreen(),
//   ),
//   BlocProvider(
//     create: (context) => getIt<MyProfileCubit>()..emitAllEventStates(),
//     child: const ProfileScreen(),
//   ),
//   Container(),
// ];
// final instructorscreens = [
//   BlocProvider(
//     create: (context) =>
//         getIt<InstructorHomeCubit>()..emitinstructorCoursesStates(),
//     child: const InstrcutorHomeScreens(),
//   ),
//   const InstrcutorProfileScreens(),
];
final tabs = [
  HomeScreen(),
  ServiceScreen(),
  EventScreen(),
  ShopScreen(),
  ProfileScreen(),
];
