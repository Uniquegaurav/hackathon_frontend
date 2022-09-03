import 'package:get/get.dart';
import 'package:hackathon_frontend/screens/home_screen/home_screen.dart';
import 'package:hackathon_frontend/screens/plan_Screen/plan_screen.dart';
import 'package:hackathon_frontend/screens/progress_screen/progress_screen.dart';
import 'package:hackathon_frontend/screens/wallet_screen/wallet_screen.dart';

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => const HomeScreen(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/progress',
        page: () => const ProgressScreen(),
        middlewares: [MyMiddleWare()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/wallet',
        page: () => const WalletScreen(),
        middlewares: [MyMiddleWare()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];

class MyMiddleWare extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
