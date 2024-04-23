import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../common/controllers/app_controller.dart';
import '../../../../resources/databases/user_database.dart';
import '../../../../resources/models/user_model.dart';

class AuthController extends GetxController {
  AppController app = Get.find<AppController>();
  final GoTrueClient _auth = Supabase.instance.client.auth;
  final GetStorage _box = GetStorage();

  late TextEditingController email;
  late TextEditingController nama;
  late TextEditingController password;

  RxBool obscureText = false.obs;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    nama = TextEditingController();
    password = TextEditingController();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  //   email.dispose();
  //   username.dispose();
  //   name.dispose();
  //   password.dispose();
  // }

  Future<void> signup() async {
    print('daftar');
    try {
      AuthResponse response =
          await _auth.signUp(email: email.text, password: password.text);

      if (response.user != null) {
        UserModel userModel = UserModel(
          email: email.text,
          nama: nama.text,
          password: password.text,
          role: "admin",
          createdAt: DateTime.now().toIso8601String(),
        );

        var result = await UserDatabase().insert(userModel: userModel);
        UserModel userModelNew = UserModel.fromMap(result[0]);
        await _box.write("admin", userModelNew.toMap());

        app.isAuthenticated.value = true;
  //     } else {
  //       print("Daftar Gagal");
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  showNotification("Akun berhasil dibuat", Colors.green);
      } else {
        showNotification("Daftar Gagal", Colors.red);
      }
    } else {
      showNotification("Konfirmasi kata sandi tidak cocok", Colors.red);
    }
  } catch (e) {
    showNotification("Gagal membuat akun", Colors.red);
  }
}

  Future<void> login() async {
    try {
      AuthResponse response = await _auth.signInWithPassword(
          email: email.text, password: password.text);

      if (response.user != null) {
        UserModel? userModel = await UserDatabase().select(email: email.text);
        if (userModel != null) {
          print(userModel.toMap());
          await _box.write("admin", userModel.toMap());

          app.isAuthenticated.value = true;
  //       } else {
  //         print("User tidak ditemukan");
  //       }
  //     } else {
  //       print("User tidak ditemukan");
  //     }
  //   } catch (e) {
  //     print("Login Gagal");
  //   }
  // }
  showNotification("Login berhasil", Colors.green);
        } else {
          showNotification("User tidak ditemukan", Colors.red);
        }
      } else {
        showNotification("Password tidak ditemukan", Colors.red);
      }
    } catch (e) {
      showNotification("Email atau Password salah", Colors.red);
    }
  }

  void showNotification(String message, Color color) {
    Get.snackbar(
      "Notifikasi",
      message,
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
      backgroundColor: color, // Customize the background color
      colorText: Colors.white, // Customize the text color
    );
  }

  Future<void> logout() async {
    try {
      if (_box.read("admin") != null) {
        _box.remove('admin');
      }
      await _auth.signOut();

      app.isAuthenticated.value = false;
    } catch (e) {
      print(e);
    }
  }
}