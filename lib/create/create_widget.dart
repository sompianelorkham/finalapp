import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_model.dart';
export 'create_model.dart';

class CreateWidget extends StatefulWidget {
  const CreateWidget({Key? key}) : super(key: key);

  @override
  _CreateWidgetState createState() => _CreateWidgetState();
}

class _CreateWidgetState extends State<CreateWidget> {
  late CreateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('detail');
    });

    _model.titleController ??= TextEditingController();
    _model.activitydetailController1 ??= TextEditingController();
    _model.activitydetailController2 ??= TextEditingController();
    _model.datetimeController ??= TextEditingController();
    _model.timeController ??= TextEditingController();
    _model.locationController ??= TextEditingController();
    _model.activitydetailController3 ??= TextEditingController();
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
            title: Text(
              'ສ້າງກິດຈະກຳ',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Noto Serif Lao',
                    fontSize: 30.0,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
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
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/images.jpg',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 12.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'ຫົວຂໍ້:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Color(0xFF102FE8),
                                    fontSize: 25.0,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.titleController,
                                autofocus: true,
                                autofillHints: [AutofillHints.jobTitle],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        color: Color(0xFF3386F4),
                                        fontSize: 20.0,
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
                                      color: Color(0xFF240EEE),
                                    ),
                                validator: _model.titleControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 18.0,
                        thickness: 1.0,
                        color: Color(0xFF7DB2F8),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                100.0, 0.0, 0.0, 0.0),
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
                        color: Color(0xFF7DB2F8),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.activitydetailController1,
                                autofocus: true,
                                autofillHints: [AutofillHints.jobTitle],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'ຈຳນວນຄົນທີເຂົ້າຮ່ວມ',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        color: Color(0xFF050505),
                                        fontSize: 23.0,
                                        lineHeight: 103.0,
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
                                    ),
                                validator: _model
                                    .activitydetailController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        indent: 1.0,
                        endIndent: 100.0,
                        color: FlutterFlowTheme.of(context).accent4,
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
                                  controller: _model.activitydetailController2,
                                  autofocus: true,
                                  autofillHints: [AutofillHints.jobTitle],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'ຊ່ວງອາຍຸ:            ',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Noto Serif Lao',
                                          color: Color(0xFF050505),
                                          fontSize: 23.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF5E4DF5),
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
                                      ),
                                  validator: _model
                                      .activitydetailController2Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.05),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.datetimeController,
                                    autofocus: true,
                                    autofillHints: [AutofillHints.jobTitle],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'ວັນທີ່ເລີ່ມ/ວັນທີສິ້ນສຸດ:  ',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Noto Serif Lao',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 23.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF5E4DF5),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Noto Serif Lao',
                                          color: Color(0xFF7DB2F8),
                                        ),
                                    validator: _model
                                        .datetimeControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.timeController,
                                  autofocus: true,
                                  autofillHints: [AutofillHints.name],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'ຊ່ວງເວລາ:  ',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Noto Serif Lao',
                                          color: Color(0xFF050505),
                                          fontSize: 23.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF5E4DF5),
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
                                        fontSize: 18.0,
                                      ),
                                  keyboardType: TextInputType.datetime,
                                  validator: _model.timeControllerValidator
                                      .asValidator(context),
                                ),
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
                                autofillHints: [AutofillHints.name],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'ສະຖານທີ່: ',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        color: Color(0xFF050505),
                                        fontSize: 23.0,
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
                                      fontSize: 18.0,
                                    ),
                                validator: _model.locationControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('showcatgoryactivity');
                          },
                          text: 'ໂພສ',
                          options: FFButtonOptions(
                            width: 218.0,
                            height: 35.0,
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
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(),
                      ),
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(),
                      ),
                      Container(
                        height: 200.0,
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.activitydetailController3,
                            autofocus: true,
                            autofillHints: [AutofillHints.jobTitle],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Color(0xFF050505),
                                    fontSize: 18.0,
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
                                  color: FlutterFlowTheme.of(context).primary,
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
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 16.0,
                                    ),
                            validator: _model.activitydetailController3Validator
                                .asValidator(context),
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
