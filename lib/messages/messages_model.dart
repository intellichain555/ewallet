import '/components/notifi_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MessagesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for notifi component.
  late NotifiModel notifiModel1;
  // Model for notifi component.
  late NotifiModel notifiModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    notifiModel1 = createModel(context, () => NotifiModel());
    notifiModel2 = createModel(context, () => NotifiModel());
  }

  void dispose() {
    unfocusNode.dispose();
    notifiModel1.dispose();
    notifiModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
