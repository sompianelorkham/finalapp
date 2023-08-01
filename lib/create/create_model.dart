import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Title widget.
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for activitydetail widget.
  TextEditingController? activitydetailController1;
  String? Function(BuildContext, String?)? activitydetailController1Validator;
  // State field(s) for activitydetail widget.
  TextEditingController? activitydetailController2;
  String? Function(BuildContext, String?)? activitydetailController2Validator;
  // State field(s) for Datetime widget.
  TextEditingController? datetimeController;
  String? Function(BuildContext, String?)? datetimeControllerValidator;
  // State field(s) for Time widget.
  TextEditingController? timeController;
  String? Function(BuildContext, String?)? timeControllerValidator;
  // State field(s) for location widget.
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  // State field(s) for activitydetail widget.
  TextEditingController? activitydetailController3;
  String? Function(BuildContext, String?)? activitydetailController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    titleController?.dispose();
    activitydetailController1?.dispose();
    activitydetailController2?.dispose();
    datetimeController?.dispose();
    timeController?.dispose();
    locationController?.dispose();
    activitydetailController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
