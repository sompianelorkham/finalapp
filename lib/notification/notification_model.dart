import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Title widget.
  TextEditingController? titleController1;
  String? Function(BuildContext, String?)? titleController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Title widget.
  TextEditingController? titleController2;
  String? Function(BuildContext, String?)? titleController2Validator;
  // State field(s) for Title widget.
  TextEditingController? titleController3;
  String? Function(BuildContext, String?)? titleController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController1?.dispose();
    titleController1?.dispose();
    textController3?.dispose();
    titleController2?.dispose();
    titleController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
