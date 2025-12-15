import '/flutter_flow/flutter_flow_util.dart';
import 'creategoal_compent_widget.dart' show CreategoalCompentWidget;
import 'package:flutter/material.dart';

class CreategoalCompentModel extends FlutterFlowModel<CreategoalCompentWidget> {
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
