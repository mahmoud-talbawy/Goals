import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_screen_widget.dart' show LoginScreenWidget;
import 'package:flutter/material.dart';

class LoginScreenModel extends FlutterFlowModel<LoginScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailusername widget.
  FocusNode? emailusernameFocusNode;
  TextEditingController? emailusernameTextController;
  String? Function(BuildContext, String?)? emailusernameTextControllerValidator;
  String? _emailusernameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'password must be 6 or more charchtors';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailusernameTextControllerValidator =
        _emailusernameTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    emailusernameFocusNode?.dispose();
    emailusernameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
