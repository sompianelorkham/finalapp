import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Title widget.
  TextEditingController? titleController1;
  String? Function(BuildContext, String?)? titleController1Validator;
  // State field(s) for Time widget.
  TextEditingController? timeController;
  String? Function(BuildContext, String?)? timeControllerValidator;
  // State field(s) for Location widget.
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  // State field(s) for Owner widget.
  TextEditingController? ownerController;
  String? Function(BuildContext, String?)? ownerControllerValidator;
  // State field(s) for Gender widget.
  TextEditingController? genderController1;
  String? Function(BuildContext, String?)? genderController1Validator;
  // State field(s) for Title widget.
  TextEditingController? titleController2;
  String? Function(BuildContext, String?)? titleController2Validator;
  // State field(s) for Gender widget.
  TextEditingController? genderController2;
  String? Function(BuildContext, String?)? genderController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    titleController1?.dispose();
    timeController?.dispose();
    locationController?.dispose();
    ownerController?.dispose();
    genderController1?.dispose();
    titleController2?.dispose();
    genderController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
