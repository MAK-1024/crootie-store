import 'package:crootie_store/features/auth_feature/presentation/screeens/login_screen/loginscreen.dart';
import 'package:crootie_store/features/auth_feature/presentation/screeens/register_screen/register_Screen.dart';
import 'package:crootie_store/features/home_feature/presentation/screens/homeScreen.dart';
import 'package:crootie_store/features/product_feature/presentation/screens/productDetailsScsreen.dart';
import 'package:crootie_store/features/selected_products_features/presentation/screens/selected_products.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth_feature/presentation/screeens/login_screen/loginscreen.dart';
import '../../features/auth_feature/presentation/screeens/register_screen/register_Screen.dart';
import '../../features/home_feature/presentation/screens/moreScreen.dart';
import '../../features/onboarding_feature/presentation/screens/onboard.dart';
import '../../features/splash_feature/presentation/splash_screen.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kProductDetailsView = '/productDetailsView';
  static const konBoardingView = '/onBoardingView';
<<<<<<< HEAD
  static const kSelectedProducts = '/selectedProducts';
  static const kLoginScreen = '/loginScreen';
  static const kRegisterScreen = '/registerScreen';
=======
  static const kLoginScreen = '/LoginScreen';
  static const kRegisterScreen = '/RegisterScreen';
  static const kMoreScreen = '/MoreScreen';

>>>>>>> 8b8dec6bfb5e7680a242288481a4c404df7f2746

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        path: konBoardingView,
        builder: (context, state) => const OnboardScreen(),
      ),

      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomePage(),
      ),

      GoRoute(
        path: kProductDetailsView,
        builder: (context, state) => const ProductDetailsScreen(),
      ),
<<<<<<< HEAD
      GoRoute(
        path: kSelectedProducts,
        builder: (context, state) => const SelectedProducts(),
      ),
=======

>>>>>>> 8b8dec6bfb5e7680a242288481a4c404df7f2746
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) => LoginScreen(),
      ),
<<<<<<< HEAD
=======

>>>>>>> 8b8dec6bfb5e7680a242288481a4c404df7f2746
      GoRoute(
        path: kRegisterScreen,
        builder: (context, state) => RegisterScreen(),
      ),
<<<<<<< HEAD
=======

      GoRoute(
        path: kMoreScreen,
        builder: (context, state) => MoreScreen(),
      ),
>>>>>>> 8b8dec6bfb5e7680a242288481a4c404df7f2746
    ],
  );
}
