import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:jagadbuku_officer/app/data/constant/endpoint.dart';
import 'package:jagadbuku_officer/app/data/model/response_login.dart';
import 'package:jagadbuku_officer/app/data/provider/api_provider.dart';
import 'package:jagadbuku_officer/app/routes/app_pages.dart';

import '../../../data/provider/storage_provider.dart';
class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final loading = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    String status = StorageProvider.read(StorageKey.status);
    log("status : $status");
    if (status == 'longged'){
      Get.offAllNamed(Routes.HOME);
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  login() async {
    loading(true);
    try{
      FocusScope.of(Get.context!).unfocus();
      formKey.currentState?.save();
      if(formKey.currentState!.validate()){
        final response = await ApiProvider.instance().post(Endpoint.login,
            data: dio.FormData.fromMap({
              "username":usernameController.text.toString(),
              "password": passwordController.text.toString()
            }));
        if (response.statusCode == 200){
          final ResponseLogin responseLogin = ResponseLogin.fromJson(response.data);
          await StorageProvider.write(StorageKey.status, "longged");
          await StorageProvider.write(StorageKey.idUser, responseLogin.data!.id!.toString());
          Get.offAllNamed(Routes.HOME);
        } else {
          Get.snackbar("Maaf", "Login Gagal", backgroundColor: Colors.orange);
        }
      }
      loading(false);
    } on dio.DioException catch (e){
      loading(false);
      if (e.response != null) {
        if (e.response?.data != null) {
          Get.snackbar("Maaf", "${e.response?.data['message']}", backgroundColor: Colors.orange);
        }
      } else {
        Get.snackbar("Maaf", e.message ?? "", backgroundColor: Colors.red);
      }
    } catch (e) {
      loading(false);
      Get.snackbar("Error", e.toString(), backgroundColor: Colors.red);
    }
  }
}
