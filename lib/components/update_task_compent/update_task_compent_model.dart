import '/flutter_flow/flutter_flow_util.dart';
import 'update_task_compent_widget.dart' show UpdateTaskCompentWidget;
import 'package:flutter/material.dart';

class UpdateTaskCompentModel extends FlutterFlowModel<UpdateTaskCompentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tittelTextFiled widget.
  FocusNode? tittelTextFiledFocusNode;
  TextEditingController? tittelTextFiledTextController;
  String? Function(BuildContext, String?)?
      tittelTextFiledTextControllerValidator;
  // State field(s) for TextFieldgoalDescrabion widget.
  FocusNode? textFieldgoalDescrabionFocusNode;
  TextEditingController? textFieldgoalDescrabionTextController;
  String? Function(BuildContext, String?)?
      textFieldgoalDescrabionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tittelTextFiledFocusNode?.dispose();
    tittelTextFiledTextController?.dispose();

    textFieldgoalDescrabionFocusNode?.dispose();
    textFieldgoalDescrabionTextController?.dispose();
  }
}
