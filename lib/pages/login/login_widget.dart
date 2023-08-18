import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({
    Key? key,
    bool? showDelete,
  })  : this.showDelete = showDelete ?? true,
        super(key: key);

  final bool showDelete;

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
      setState(() {
        _model.showPassword = false;
      });
    });

    _model.textController ??= TextEditingController();
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
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/photo_login_new_bg.png',
                  ).image,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      height: double.infinity,
                      child: Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width *
                                            (710 / 750),
                                        340.0,
                                      ),
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              1.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: valueOrDefault<double>(
                                              MediaQuery.sizeOf(context).width *
                                                  (218 / 750),
                                              109.0,
                                            ),
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Opacity(
                                                  opacity: 0.0,
                                                  child: Container(
                                                    width:
                                                        valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          (28 / 750),
                                                      14.0,
                                                    ),
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        width: 100.0,
                                                        height: valueOrDefault<
                                                            double>(
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              (112 / 750),
                                                          56.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(),
                                                      ),
                                                      Container(
                                                        width: valueOrDefault<
                                                            double>(
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              (50 / 750),
                                                          25.0,
                                                        ),
                                                        height: valueOrDefault<
                                                            double>(
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              (54 / 750),
                                                          28.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                                'contact');
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/contact_logo_new.png',
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              fit: BoxFit.cover,
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
                                          Expanded(
                                            child: Stack(
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height:
                                                                      valueOrDefault<
                                                                          double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        (20 /
                                                                            750),
                                                                    10.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height:
                                                                      valueOrDefault<
                                                                          double>(
                                                                    MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        (56 /
                                                                            750),
                                                                    32.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      'Welcome to HUIONE',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'sans serif or unicompfont',
                                                                            fontSize:
                                                                                valueOrDefault<double>(
                                                                              MediaQuery.sizeOf(context).width * (56 / 750),
                                                                              28.0,
                                                                            ),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      height:
                                                                          MediaQuery.sizeOf(context).height *
                                                                              1.0,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Opacity(
                                                                              opacity: 0.0,
                                                                              child: Container(
                                                                                width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                height: valueOrDefault<double>(
                                                                                  MediaQuery.sizeOf(context).width * (150 / 750),
                                                                                  75.0,
                                                                                ),
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFE44747),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: valueOrDefault<double>(
                                                                                MediaQuery.sizeOf(context).width * ((20 + 28 + 108) / 750),
                                                                                78.0,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                                shape: BoxShape.rectangle,
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                    child: Text(
                                                                                      'Account',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'sans serif or unicompfont',
                                                                                            fontSize: valueOrDefault<double>(
                                                                                              MediaQuery.sizeOf(context).width * (28 / 750),
                                                                                              14.0,
                                                                                            ),
                                                                                            fontWeight: FontWeight.w200,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    height: valueOrDefault<double>(
                                                                                      MediaQuery.sizeOf(context).width * (20 / 750),
                                                                                      10.0,
                                                                                    ),
                                                                                    decoration: BoxDecoration(),
                                                                                  ),
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * ((710 - 26 * 2) / 750),
                                                                                    height: valueOrDefault<double>(
                                                                                      MediaQuery.sizeOf(context).width * (100 / 750),
                                                                                      50.0,
                                                                                    ),
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0x19FFFFFF),
                                                                                      borderRadius: BorderRadius.circular(100.0),
                                                                                      shape: BoxShape.rectangle,
                                                                                    ),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Opacity(
                                                                                          opacity: 0.0,
                                                                                          child: Container(
                                                                                            width: valueOrDefault<double>(
                                                                                              MediaQuery.sizeOf(context).width * (50 / 750),
                                                                                              25.0,
                                                                                            ),
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          '+855',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'sans serif or unicompfont',
                                                                                                fontSize: 17.5,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                        ),
                                                                                        Opacity(
                                                                                          opacity: 0.0,
                                                                                          child: Container(
                                                                                            width: valueOrDefault<double>(
                                                                                              MediaQuery.sizeOf(context).width * (20 / 750),
                                                                                              10.0,
                                                                                            ),
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/new_select_img.png',
                                                                                            width: 7.0,
                                                                                            height: 4.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                        Opacity(
                                                                                          opacity: 0.0,
                                                                                          child: Container(
                                                                                            width: MediaQuery.sizeOf(context).width * (40 / 750),
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: 1.0,
                                                                                          height: 30.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Color(0x34FFFFFF),
                                                                                          ),
                                                                                        ),
                                                                                        Opacity(
                                                                                          opacity: 0.0,
                                                                                          child: Container(
                                                                                            width: MediaQuery.sizeOf(context).width * (40 / 750),
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Flexible(
                                                                                          child: Container(
                                                                                            height: valueOrDefault<double>(
                                                                                              MediaQuery.sizeOf(context).width * (80 / 750),
                                                                                              40.0,
                                                                                            ),
                                                                                            constraints: BoxConstraints(
                                                                                              maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                                                                                            ),
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Container(
                                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                    height: 100.0,
                                                                                                    decoration: BoxDecoration(),
                                                                                                    child: Container(
                                                                                                      width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                      height: 60.0,
                                                                                                      child: custom_widgets.LoginPhoneNumber(
                                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                        height: 60.0,
                                                                                                        hintText: 'Phone Number ',
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Opacity(
                                                                                          opacity: 0.0,
                                                                                          child: Container(
                                                                                            width: valueOrDefault<double>(
                                                                                              MediaQuery.sizeOf(context).width * (50 / 750),
                                                                                              25.0,
                                                                                            ),
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: valueOrDefault<double>(
                                                                                MediaQuery.sizeOf(context).width * ((156 + 50) / 750),
                                                                                103.0,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                                shape: BoxShape.rectangle,
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    height: valueOrDefault<double>(
                                                                                      MediaQuery.sizeOf(context).width * (50 / 750),
                                                                                      25.0,
                                                                                    ),
                                                                                    decoration: BoxDecoration(),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                    child: Text(
                                                                                      'Password',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'sans serif or unicompfont',
                                                                                            fontSize: valueOrDefault<double>(
                                                                                              MediaQuery.sizeOf(context).width * (28 / 750),
                                                                                              14.0,
                                                                                            ),
                                                                                            fontWeight: FontWeight.w200,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    height: valueOrDefault<double>(
                                                                                      MediaQuery.sizeOf(context).width * (20 / 750),
                                                                                      10.0,
                                                                                    ),
                                                                                    decoration: BoxDecoration(),
                                                                                  ),
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * ((710 - 26 * 2) / 750),
                                                                                    height: valueOrDefault<double>(
                                                                                      MediaQuery.sizeOf(context).width * (100 / 750),
                                                                                      50.0,
                                                                                    ),
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0x19FFFFFF),
                                                                                      borderRadius: BorderRadius.circular(100.0),
                                                                                      shape: BoxShape.rectangle,
                                                                                    ),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Opacity(
                                                                                          opacity: 0.0,
                                                                                          child: Container(
                                                                                            width: valueOrDefault<double>(
                                                                                              MediaQuery.sizeOf(context).width * (50 / 750),
                                                                                              25.0,
                                                                                            ),
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Flexible(
                                                                                          child: Container(
                                                                                            height: valueOrDefault<double>(
                                                                                              MediaQuery.sizeOf(context).width * (80 / 750),
                                                                                              40.0,
                                                                                            ),
                                                                                            constraints: BoxConstraints(
                                                                                              maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                                                                                            ),
                                                                                            decoration: BoxDecoration(),
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Flexible(
                                                                                                  child: Container(
                                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                                    child: TextFormField(
                                                                                                      controller: _model.textController,
                                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                                        '_model.textController',
                                                                                                        Duration(milliseconds: 2000),
                                                                                                        () => setState(() {}),
                                                                                                      ),
                                                                                                      autofocus: true,
                                                                                                      obscureText: false,
                                                                                                      decoration: InputDecoration(
                                                                                                        isDense: true,
                                                                                                        hintText: 'Phone Number',
                                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                              fontFamily: 'sans serif or unicompfont',
                                                                                                              color: Color(0xFFC2C2C2),
                                                                                                              fontSize: valueOrDefault<double>(
                                                                                                                MediaQuery.sizeOf(context).width * (32 / 750),
                                                                                                                16.0,
                                                                                                              ),
                                                                                                              useGoogleFonts: false,
                                                                                                            ),
                                                                                                        enabledBorder: InputBorder.none,
                                                                                                        focusedBorder: InputBorder.none,
                                                                                                        errorBorder: InputBorder.none,
                                                                                                        focusedErrorBorder: InputBorder.none,
                                                                                                        suffixIcon: _model.textController!.text.isNotEmpty
                                                                                                            ? InkWell(
                                                                                                                onTap: () async {
                                                                                                                  _model.textController?.clear();
                                                                                                                  setState(() {});
                                                                                                                },
                                                                                                                child: Icon(
                                                                                                                  Icons.clear,
                                                                                                                  size: 10.0,
                                                                                                                ),
                                                                                                              )
                                                                                                            : null,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'sans serif or unicompfont',
                                                                                                            fontSize: valueOrDefault<double>(
                                                                                                              MediaQuery.sizeOf(context).width * (32 / 750),
                                                                                                              16.0,
                                                                                                            ),
                                                                                                            useGoogleFonts: false,
                                                                                                          ),
                                                                                                      textAlign: TextAlign.start,
                                                                                                      keyboardType: TextInputType.number,
                                                                                                      cursorColor: Color(0xFFF9F9F9),
                                                                                                      validator: _model.textControllerValidator.asValidator(context),
                                                                                                      inputFormatters: [
                                                                                                        FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    setState(() {
                                                                                                      _model.showPassword = _model.showPassword ? false : true;
                                                                                                    });
                                                                                                  },
                                                                                                  child: Container(
                                                                                                    width: valueOrDefault<double>(
                                                                                                      MediaQuery.sizeOf(context).width * (20 / 750),
                                                                                                      10.0,
                                                                                                    ),
                                                                                                    height: valueOrDefault<double>(
                                                                                                      MediaQuery.sizeOf(context).width * (20 / 750),
                                                                                                      10.0,
                                                                                                    ),
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0x00FFFFFF),
                                                                                                    ),
                                                                                                    child: Stack(
                                                                                                      children: [
                                                                                                        Opacity(
                                                                                                          opacity: _model.showPassword ? 1.0 : 0.0,
                                                                                                          child: ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                                            child: Image.asset(
                                                                                                              'assets/images/account_retain_visibilty.png',
                                                                                                              width: 10.0,
                                                                                                              height: 10.0,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Opacity(
                                                                                                          opacity: _model.showPassword ? 0.1 : 1.0,
                                                                                                          child: ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                                            child: Image.asset(
                                                                                                              'assets/images/account_retain_visibilty_off.png',
                                                                                                              width: 10.0,
                                                                                                              height: 10.0,
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
                                                                                        ),
                                                                                        Opacity(
                                                                                          opacity: 0.0,
                                                                                          child: Container(
                                                                                            width: valueOrDefault<double>(
                                                                                              MediaQuery.sizeOf(context).width * (50 / 750),
                                                                                              25.0,
                                                                                            ),
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: valueOrDefault<double>(
                                                                                MediaQuery.sizeOf(context).width * ((156 + 50) / 750),
                                                                                103.0,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                                shape: BoxShape.rectangle,
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    height: valueOrDefault<double>(
                                                                                      MediaQuery.sizeOf(context).width * (70 / 750),
                                                                                      35.0,
                                                                                    ),
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    height: valueOrDefault<double>(
                                                                                      MediaQuery.sizeOf(context).width * (100 / 750),
                                                                                      50.0,
                                                                                    ),
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(100.0),
                                                                                    ),
                                                                                    child: FFButtonWidget(
                                                                                      onPressed: () async {
                                                                                        context.pushNamed('Home');
                                                                                      },
                                                                                      text: 'Login',
                                                                                      options: FFButtonOptions(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                        color: Color(0xFFD92128),
                                                                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                              fontFamily: 'sans serif or unicompfont',
                                                                                              color: Colors.white,
                                                                                              fontSize: valueOrDefault<double>(
                                                                                                MediaQuery.sizeOf(context).width * (35 / 750),
                                                                                                17.5,
                                                                                              ),
                                                                                              fontWeight: FontWeight.w200,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                        elevation: 3.0,
                                                                                        borderSide: BorderSide(
                                                                                          color: Colors.transparent,
                                                                                          width: 1.0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(100.0),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: valueOrDefault<double>(
                                                                                MediaQuery.sizeOf(context).width *
                                                                                    valueOrDefault<double>(
                                                                                      40 / 750,
                                                                                      20.0,
                                                                                    ),
                                                                                23.0,
                                                                              ),
                                                                              decoration: BoxDecoration(),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 1,
                                                                                    child: Container(
                                                                                      width: 100.0,
                                                                                      height: 100.0,
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Text(
                                                                                        'Forget Password',
                                                                                        textAlign: TextAlign.start,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'sans serif or unicompfont',
                                                                                              fontSize: valueOrDefault<double>(
                                                                                                MediaQuery.sizeOf(context).width * (28 / 750),
                                                                                                14.0,
                                                                                              ),
                                                                                              fontWeight: FontWeight.w200,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 1,
                                                                                    child: Container(
                                                                                      width: 100.0,
                                                                                      height: 100.0,
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Text(
                                                                                        'Currency Rates',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'sans serif or unicompfont',
                                                                                              fontSize: valueOrDefault<double>(
                                                                                                MediaQuery.sizeOf(context).width * (28 / 750),
                                                                                                14.0,
                                                                                              ),
                                                                                              fontWeight: FontWeight.w200,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 1,
                                                                                    child: Container(
                                                                                      width: 100.0,
                                                                                      height: 100.0,
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Text(
                                                                                        'Register',
                                                                                        textAlign: TextAlign.end,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'sans serif or unicompfont',
                                                                                              fontSize: valueOrDefault<double>(
                                                                                                MediaQuery.sizeOf(context).width * (28 / 750),
                                                                                                14.0,
                                                                                              ),
                                                                                              fontWeight: FontWeight.w200,
                                                                                              useGoogleFonts: false,
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
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 50.0,
              child: custom_widgets.CustomStatusBar(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 50.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
