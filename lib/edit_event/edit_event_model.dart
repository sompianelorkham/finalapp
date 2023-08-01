import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditEventModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Title widget.
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for activitydetail widget.
  TextEditingController? activitydetailController;
  String? Function(BuildContext, String?)? activitydetailControllerValidator;
  // State field(s) for Age widget.
  TextEditingController? ageController;
  String? Function(BuildContext, String?)? ageControllerValidator;
  // State field(s) for Datetime widget.
  TextEditingController? datetimeController1;
  String? Function(BuildContext, String?)? datetimeController1Validator;
  // State field(s) for Datetime widget.
  TextEditingController? datetimeController2;
  String? Function(BuildContext, String?)? datetimeController2Validator;
  // State field(s) for location widget.
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    titleController?.dispose();
    activitydetailController?.dispose();
    ageController?.dispose();
    datetimeController1?.dispose();
    datetimeController2?.dispose();
    locationController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
