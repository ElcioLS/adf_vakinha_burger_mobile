import 'dart:developer';

import 'package:adf_vakinha_burger_mobile/app/core/constants/constants.dart';
import 'package:adf_vakinha_burger_mobile/app/core/mixins/loader_mixin.dart';
import 'package:adf_vakinha_burger_mobile/app/core/mixins/messages_mixin.dart';
import 'package:adf_vakinha_burger_mobile/app/core/rest_client/rest_client.dart';
import 'package:adf_vakinha_burger_mobile/app/repositories/auth/auth_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController
    with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;
  final _message = Rxn<MessageModel>();
  final _loading = false.obs;

  RegisterController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  void onInit() {
    loaderListener(_loading);
    messageListener(_message);
    super.onInit();
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      _loading.toggle();

      await _authRepository.register(name, email, password);
      _loading.toggle();

      // GetStorage().write( Constants.USER_KEY, userLogged.id); //linha da aula tive que modificar

      final userLogged = await _authRepository.login(email, password);
      final storage = GetStorage();
      storage.write(Constants.USER_KEY, userLogged.id);

      // //Posso retirar o código abaixo
      // Get.back();
      // _message(MessageModel(
      //     title: 'Sucesso!',
      //     message: 'Cadastro realizado com sucesso',
      //     type: MessageType.info));
    } on RestClientException catch (e, s) {
      _loading.toggle();
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      _message(MessageModel(
          title: 'Erro', message: e.message, type: MessageType.error));
    } catch (e, s) {
      _loading.toggle();
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      _message(MessageModel(
          title: 'Erro',
          message: 'Erro ao registrar usuário',
          type: MessageType.error));
    }
  }
}
