import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../common/controllers/app_controller.dart';

class SplashController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();

    ever(app.isAuthenticated, (_) => Get.offNamed('/splash_screen'));
    startTimer();
  }

//   String isAuthenticated() => app.isAuthenticated.isTrue
//       ? app.user().role == "admin"
//           ? '/home'
//           : '/home'
//       : '/login';

//   void startTimer() => Future.delayed(const Duration(seconds: 1), () {
//     GetStorage box = GetStorage();
//         bool isFirstOpen = box.read("isFirstOpen") ?? true;
//         print(isFirstOpen);
        
//         Get.offNamed(isFirstOpen ? '/login' : isAuthenticated());
//       });
// }
      //yea
// String isAuthenticated() => app.isAuthenticated.isTrue
  //     ? app.user().role == "user"
  //         ? '/bar'
  //         : '/bar'
  //     : '/login';

  void startTimer() => Future.delayed(const Duration(seconds: 2), () {
        GetStorage box = GetStorage();
        bool isFirstOpen = box.read("isFirstOpen") ?? true;
        print(isFirstOpen);

        //Get.offNamed(isAuthenticated());
      });
}