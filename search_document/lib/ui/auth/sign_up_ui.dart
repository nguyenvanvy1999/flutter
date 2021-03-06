import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:search_document/constants/app_routes.dart';
import 'package:search_document/ui/components/components.dart';
import 'package:search_document/helpers/helpers.dart';
import 'package:search_document/controllers/controllers.dart';

class SignUpUI extends StatelessWidget {
  SignUpUI({Key? key}) : super(key: key);

  final AuthController authController = AuthController.to;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  LogoGraphicHeader(),
                  const SizedBox(height: 48.0),
                  FormInputFieldWithIcon(
                    controller: authController.nameController,
                    iconPrefix: Icons.person,
                    labelText: 'auth.nameFormField'.tr,
                    validator: Validator().name,
                    onChanged: (value) => {},
                    onSaved: (value) =>
                        authController.nameController.text = value!,
                  ),
                  const FormVerticalSpace(),
                  FormInputFieldWithIcon(
                    controller: authController.emailController,
                    iconPrefix: Icons.email,
                    labelText: 'auth.emailFormField'.tr,
                    validator: Validator().email,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => {},
                    onSaved: (value) =>
                        authController.emailController.text = value!,
                  ),
                  const FormVerticalSpace(),
                  FormInputFieldWithIcon(
                    controller: authController.passwordController,
                    iconPrefix: Icons.lock,
                    labelText: 'auth.passwordFormField'.tr,
                    validator: Validator().password,
                    obscureText: true,
                    onChanged: (value) => {},
                    onSaved: (value) =>
                        authController.passwordController.text = value!,
                    maxLines: 1,
                  ),
                  const FormVerticalSpace(),
                  PrimaryButton(
                      labelText: 'auth.signUpButton'.tr,
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          SystemChannels.textInput.invokeMethod(
                              'TextInput.hide'); //to hide the keyboard - if any
                          authController.registerWithEmailAndPassword(context);
                        }
                      }),
                  const FormVerticalSpace(),
                  LabelButton(
                    labelText: 'auth.signInLabelButton'.tr,
                    onPressed: () => Get.toNamed(AppRoutes.getSigninRoute()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
