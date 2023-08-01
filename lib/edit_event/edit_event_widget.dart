import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_event_model.dart';
export 'edit_event_model.dart';

class EditEventWidget extends StatefulWidget {
  const EditEventWidget({Key? key}) : super(key: key);

  @override
  _EditEventWidgetState createState() => _EditEventWidgetState();
}

class _EditEventWidgetState extends State<EditEventWidget> {
  late EditEventModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditEventModel());

    _model.titleController ??= TextEditingController();
    _model.activitydetailController ??= TextEditingController();
    _model.ageController ??= TextEditingController();
    _model.datetimeController1 ??= TextEditingController();
    _model.datetimeController2 ??= TextEditingController();
    _model.locationController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(35.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.cancel_presentation,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'ແກ້ໄຂກິດຈະກຳ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Serif Lao',
                        fontSize: 30.0,
                      ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.white,
                  borderRadius: 40.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Color(0xFF080010),
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 230.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 12.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 5.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, 1.56),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/p7.jpg',
                                          width: 362.0,
                                          height: 226.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'ຫົວຂໍ້:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Color(0xFF102FE8),
                                    fontSize: 25.0,
                                  ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.titleController,
                                  autofocus: true,
                                  autofillHints: [AutofillHints.name],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Noto Serif Lao',
                                          color: Color(0xFF050505),
                                          fontSize: 25.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        color: Color(0xFF240EEE),
                                        fontSize: 18.0,
                                      ),
                                  validator: _model.titleControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 18.0,
                        thickness: 1.0,
                        color: Color(0xFF04162E),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'ລາຍລະອຽດ:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Color(0xFF102FE8),
                                    fontSize: 25.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 18.0,
                        thickness: 1.0,
                        color: Color(0xFF04162E),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.activitydetailController,
                                autofocus: true,
                                autofillHints: [AutofillHints.jobTitle],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'ຈຳນວນຄົນ ',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        color: Color(0xFF050505),
                                        fontSize: 25.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 16.0,
                                    ),
                                validator: _model
                                    .activitydetailControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.ageController,
                                  onFieldSubmitted: (_) async {
                                    context.pushNamed('detail');
                                  },
                                  autofocus: true,
                                  autofillHints: [AutofillHints.middleName],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'ຊ່ວງອາຍຸ: ',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Noto Serif Lao',
                                          color: Color(0xFF050505),
                                          fontSize: 25.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        color: Color(0xFF050505),
                                        fontSize: 16.0,
                                      ),
                                  keyboardType: TextInputType.number,
                                  validator: _model.ageControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.datetimeController1,
                                autofocus: true,
                                autofillHints: [AutofillHints.middleName],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'ວັນທີ່:',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        color: Color(0xFF050505),
                                        fontSize: 25.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Noto Serif Lao',
                                      color: Color(0xFF050505),
                                      fontSize: 16.0,
                                    ),
                                keyboardType: TextInputType.datetime,
                                validator: _model.datetimeController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.datetimeController2,
                                autofocus: true,
                                autofillHints: [AutofillHints.middleName],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'ຊ່ວງເວລາ:  ',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        color: Color(0xFF050505),
                                        fontSize: 25.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Noto Serif Lao',
                                      color: Color(0xFF050505),
                                      fontSize: 16.0,
                                    ),
                                keyboardType: TextInputType.datetime,
                                validator: _model.datetimeController2Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.locationController,
                                autofocus: true,
                                autofillHints: [AutofillHints.middleName],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'ສະຖານທີ່:        ',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        color: Color(0xFF050505),
                                        fontSize: 25.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Noto Serif Lao',
                                      color: Color(0xFF050505),
                                      fontSize: 16.0,
                                    ),
                                validator: _model.locationControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('detail');
                            },
                            text: 'ບັນທຶກ',
                            options: FFButtonOptions(
                              width: 100.0,
                              height: 38.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
