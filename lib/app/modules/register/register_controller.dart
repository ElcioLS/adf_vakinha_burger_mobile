import 'package:adf_vakinha_burger_mobile/app/core/mixins/loader_mixin.dart';
import 'package:adf_vakinha_burger_mobile/app/core/mixins/messages_mixin.dart';
import 'package:adf_vakinha_burger_mobile/app/repositories/auth/auth_repository.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController
    with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;
  final message = Rxn<MessageModel>();

  final loading = false.obs;

  RegisterController({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  void onInit() {
    loaderListener(loading);
    messageListener(message);
    super.onInit();
  }

  void qualquer() {
    message.value = MessageModel(
      title: 'Teste',
      message: 'Mensagem de teste',
      type: MessageType.error,
    );
    message(MessageModel(
      title: 'Teste',
      message: 'Mensagem de info',
      type: MessageType.info,
    ));
    // loading.toggle();
    // Future.delayed(const Duration(seconds: 2), () => loading.toggle());
  }
}
