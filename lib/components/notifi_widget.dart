import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notifi_model.dart';
export 'notifi_model.dart';

class NotifiWidget extends StatefulWidget {
  const NotifiWidget({Key? key}) : super(key: key);

  @override
  _NotifiWidgetState createState() => _NotifiWidgetState();
}

class _NotifiWidgetState extends State<NotifiWidget> {
  late NotifiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotifiModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0,
      height: 15.0,
      decoration: BoxDecoration(
        color: Color(0xFFFF0004),
        borderRadius: BorderRadius.circular(5.0),
      ),
      alignment: AlignmentDirectional(1.0, -1.0),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          '2',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'sans serif or unicompfont',
                fontSize: 9.0,
                fontWeight: FontWeight.w200,
                useGoogleFonts: false,
              ),
        ),
      ),
    );
  }
}
