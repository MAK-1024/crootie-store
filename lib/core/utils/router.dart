import 'package:crootie_store/features/home_feature/presentation/screens/homeScreen.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/listview_of_products_widgets/details_of_product_widget.dart';
import 'package:crootie_store/features/onboarding_feature/presentation/screens/onboard.dart';
import 'package:crootie_store/features/product_feature/presentation/screens/productDetails_screen/productDetailsScsreen.dart';
import 'package:crootie_store/features/splash_feature/presentation/screens.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kProductDetailsView = '/productDetailsView';
  static const konBoardingView = '/onBoardingView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: konBoardingView,
        builder: (context, state) => const Onboard(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kProductDetailsView,
        builder: (context, state) => const ProductDetailsScreen(),
      ),
    ],
  );
}
