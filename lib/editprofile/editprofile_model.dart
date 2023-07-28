import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditprofileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Name widget.
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Name widget.
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
  // State field(s) for Birthday widget.
  TextEditingController? birthdayController;
  String? Function(BuildContext, String?)? birthdayControllerValidator;
  // State field(s) for Gender widget.
  TextEditingController? genderController1;
  String? Function(BuildContext, String?)? genderController1Validator;
  // State field(s) for Gender widget.
  TextEditingController? genderController2;
  String? Function(BuildContext, String?)? genderController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nameController1?.dispose();
    emailController?.dispose();
    nameController2?.dispose();
    birthdayController?.dispose();
    genderController1?.dispose();
    genderController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
