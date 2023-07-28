import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShowcatgoryactivityModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for NameActivity widget.
  TextEditingController? nameActivityController;
  String? Function(BuildContext, String?)? nameActivityControllerValidator;
  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Title widget.
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for Datetime widget.
  TextEditingController? datetimeController;
  String? Function(BuildContext, String?)? datetimeControllerValidator;
  // State field(s) for location widget.
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for Numberpeople widget.
  TextEditingController? numberpeopleController;
  String? Function(BuildContext, String?)? numberpeopleControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nameActivityController?.dispose();
    nameController?.dispose();
    titleController?.dispose();
    datetimeController?.dispose();
    locationController?.dispose();
    numberpeopleController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
