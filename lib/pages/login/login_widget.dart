import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('Home');
    });

    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
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
        backgroundColor: Color(0xFFEDE7F6),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFEDE7F6),
                  ),
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 269.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFEDE7F6),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFEDE7F6),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/children.png',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                32.0, 32.0, 32.0, 32.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 50.0),
                                    child: Text(
                                      'login ເຂົ້າສູ່ Activity lovers',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Noto Serif Lao',
                                            color: Colors.black,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    width: 370.0,
                                    child: TextFormField(
                                      controller: _model.emailAddressController,
                                      autofocus: true,
                                      autofillHints: [AutofillHints.email],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'ອີເມວ',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Noto Serif Lao',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
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
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 18.0,
                                          ),
                                      keyboardType: TextInputType.emailAddress,
                                      validator: _model
                                          .emailAddressControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    width: 370.0,
                                    child: TextFormField(
                                      controller: _model.passwordController,
                                      autofocus: true,
                                      autofillHints: [AutofillHints.password],
                                      obscureText: !_model.passwordVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'ລະຫັດຜ່ານ',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Noto Serif Lao',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
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
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model.passwordVisibility =
                                                !_model.passwordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 18.0,
                                          ),
                                      validator: _model
                                          .passwordControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('Home');
                                    },
                                    text: 'ເຂົ້າສູ່ລະບົບ',
                                    options: FFButtonOptions(
                                      width: 370.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF512DA8),
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
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),

                                // You will have to add an action on this rich text to go to your login page.
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 1.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('Register');
                                    },
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'ທ່ານມີບັນຊີແລ້ວບໍ່? ',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'ສ້າງບັນຊີ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Noto Serif Lao',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Noto Serif Lao',
                                              fontSize: 18.0,
                                            ),
                                      ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  80.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 30.0,
                                height: 30.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/IOS_Google_icon.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Sign in with google',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Noto Serif Lao',
                                        fontSize: 18.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('forgotPassword');
                              },
                              child: Text(
                                'ລືມລະຫັດຜ່ານ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Serif Lao',
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://images.unsplash.com/photo-1514924013411-cbf25faa35bb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1380&q=80',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
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
