import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:zeex_task/views/splash_screen/splash.dart';

import 'consts/consts.dart';
import 'controllers/auth_controllers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyDK_XzeABLebwPfEyRqkdEGBSgExb8Dsrk",
        authDomain: "zeex-task.firebaseapp.com",
        projectId: "zeex-task",
        storageBucket: "zeex-task.firebasestorage.app",
        messagingSenderId: "1072269267529",
        appId: "1:1072269267529:web:2101772a6fe4d0347a6598",
        measurementId: "G-YE13X24HXB",
      ),
    ).then((value) => Get.put(AuthController()));
  } else {
    await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  }
  //
  // final AuthController authController = Get.put(AuthController());
  // await authController.autoLogin(); // Check session when app starts

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zeex Ai Task',
      // theme: TAppTheme.lightTheme,
      // darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: SplashScreen(),
    );
  }
}
