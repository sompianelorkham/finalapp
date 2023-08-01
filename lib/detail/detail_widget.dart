import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'detail_model.dart';
export 'detail_model.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({Key? key}) : super(key: key);

  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  late DetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailModel());

    _model.titleController1 ??= TextEditingController();
    _model.timeController ??= TextEditingController();
    _model.locationController ??= TextEditingController();
    _model.ownerController ??= TextEditingController();
    _model.genderController1 ??= TextEditingController();
    _model.titleController2 ??= TextEditingController();
    _model.genderController2 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                'ລາຍລະອຽດ',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Noto Serif Lao',
                    ),
              ),
            ),
            Container(
              width: 372.0,
              decoration: BoxDecoration(),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(100.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('editEvent');
                  },
                  text: 'ແກ້ໄຂ',
                  options: FFButtonOptions(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF5E4DF5),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Noto Serif Lao',
                          color: Colors.white,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('delete');
                },
                text: 'ລົບ',
                options: FFButtonOptions(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFB60B2E),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Noto Serif Lao',
                        color: Colors.white,
                        lineHeight: 1.0,
                      ),
                  elevation: 5.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            'assets/images/p7.jpg',
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: 250.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.titleController1,
                              autofocus: true,
                              autofillHints: [AutofillHints.gender],
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'ເຕະບານ',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Noto Serif Lao',
                                      color: Color(0xFF3386F4),
                                      fontSize: 25.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
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
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Color(0xFF240EEE),
                                    fontSize: 25.0,
                                  ),
                              keyboardType: TextInputType.multiline,
                              validator: _model.titleController1Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Color(0xFF3386F4),
                          size: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.white,
                              borderWidth: 1.0,
                              fillColor: Colors.white,
                              icon: Icon(
                                Icons.date_range,
                                color: Color(0xFF102FE8),
                                size: 40.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.timeController,
                          autofocus: true,
                          autofillHints: [AutofillHints.name],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'ວັນທີ/ເດືອນ/ປີ',
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
                                    .primaryBackground,
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
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Color(0xFF050505),
                                    fontSize: 20.0,
                                  ),
                          keyboardType: TextInputType.number,
                          validator: _model.timeControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 24.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.location_on,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 50.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.locationController,
                              autofocus: true,
                              autofillHints: [AutofillHints.name],
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'ສະຖານທີ່',
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
                                        .primaryBackground,
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
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Color(0xFF050505),
                                    fontSize: 18.0,
                                  ),
                              keyboardType: TextInputType.multiline,
                              validator: _model.locationControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Icon(
                                Icons.person,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 50.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.ownerController,
                              autofocus: true,
                              autofillHints: [AutofillHints.gender],
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'ຊື່ຜູ້ສ້າງ',
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
                                        .primaryBackground,
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
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 22.0,
                                  ),
                              keyboardType: TextInputType.multiline,
                              validator: _model.ownerControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Icon(
                              Icons.male,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 50.0,
                            ),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 90.0,
                        borderWidth: 1.0,
                        fillColor: Color(0xFF102FE8),
                        icon: Icon(
                          Icons.login,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.genderController1,
                                autofocus: true,
                                autofillHints: [AutofillHints.gender],
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'ເພດ',
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
                                          .primaryBackground,
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
                                      .primaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Noto Serif Lao',
                                      color: Color(0xFF050505),
                                      fontSize: 22.0,
                                    ),
                                keyboardType: TextInputType.multiline,
                                validator: _model.genderController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.titleController2,
                            autofocus: true,
                            autofillHints: [AutofillHints.jobTitle],
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'ຈຳນວນຄົນ',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Color(0xFF050505),
                                    fontSize: 25.0,
                                  ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 18.0,
                                    ),
                            validator: _model.titleController2Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    250.0, 0.0, 0.0, 50.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('join');
                                  },
                                  text: 'ເຂົ້າຮ່ວມ',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Noto Serif Lao',
                                          color: Colors.white,
                                          fontSize: 25.0,
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200.0,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.genderController2,
                        autofocus: true,
                        autofillHints: [AutofillHints.gender],
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'ເພດ',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Noto Serif Lao',
                                    color: Color(0xFF050505),
                                    fontSize: 18.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
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
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).lineColor,
                              fontSize: 18.0,
                            ),
                        keyboardType: TextInputType.multiline,
                        validator: _model.genderController2Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('join');
              },
              text: 'ເຂົ້າຮ່ວມ',
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Noto Serif Lao',
                      color: Colors.white,
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 80.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
