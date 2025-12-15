import '/flutter_flow/flutter_flow_util.dart';
import 'updategoal_compent_widget.dart' show UpdategoalCompentWidget;
import 'package:flutter/material.dart';

class UpdategoalCompentModel extends FlutterFlowModel<UpdategoalCompentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for tittelTextFiled widget.
  FocusNode? tittelTextFiledFocusNode;
  TextEditingController? tittelTextFiledTextController;
  String? Function(BuildContext, String?)?
      tittelTextFiledTextControllerValidator;
  String? _tittelTextFiledTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextFieldgoalDescrabion widget.
  FocusNode? textFieldgoalDescrabionFocusNode;
  TextEditingController? textFieldgoalDescrabionTextController;
  String? Function(BuildContext, String?)?
      textFieldgoalDescrabionTextControllerValidator;
  String? _textFieldgoalDescrabionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    tittelTextFiledTextControllerValidator =
        _tittelTextFiledTextControllerValidator;
    textFieldgoalDescrabionTextControllerValidator =
        _textFieldgoalDescrabionTextControllerValidator;
  }

  @override
  void dispose() {
    tittelTextFiledFocusNode?.dispose();
    tittelTextFiledTextController?.dispose();

    textFieldgoalDescrabionFocusNode?.dispose();
    textFieldgoalDescrabionTextController?.dispose();
  }
}
