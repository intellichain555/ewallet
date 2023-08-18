// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// import '/flutter_flow/flutter_flow_model.dart';

import 'package:collection/collection.dart';
import 'package:flutter/scheduler.dart';
// import 'package:provider/provider.dart';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// import '/flutter_flow/flutter_flow_widgets.dart';
// import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/services.dart';

Widget wrapWithModel<T extends FFM>({
  required T model,
  required Widget child,
  required VoidCallback updateCallback,
  bool updateOnChange = false,
}) {
  // Set the component to optionally update the page on updates.
  model.setOnUpdate(
    onUpdate: updateCallback,
    updateOnChange: updateOnChange,
  );
  // Models for components within a page will be disposed by the page's model,
  // so we don't want the component widget to dispose them until the page is
  // itself disposed.
  model.disposeOnWidgetDisposal = false;
  // Wrap in a Provider so that the model can be accessed by the component.
  return Provider<T>.value(
    value: model,
    child: child,
  );
}

T createModel<T extends FFM>(
  BuildContext context,
  T Function() defaultBuilder,
) {
  final model = context.read<T?>() ?? defaultBuilder();
  model._init(context);
  return model;
}

abstract class FFM {
  // Initialization methods
  bool _isInitialized = false;
  void initState(BuildContext context);
  void _init(BuildContext context) {
    if (!_isInitialized) {
      initState(context);
      _isInitialized = true;
    }
  }

  // Dispose methods
  // Whether to dispose this model when the corresponding widget is
  // disposed. By default this is true for pages and false for components,
  // as page/component models handle the disposal of their children.
  bool disposeOnWidgetDisposal = true;
  void dispose();
  void maybeDispose() {
    if (disposeOnWidgetDisposal) {
      dispose();
    }
  }

  // Whether to update the containing page / component on updates.
  bool updateOnChange = false;
  // Function to call when the model receives an update.
  VoidCallback _updateCallback = () {};
  void onUpdate() => updateOnChange ? _updateCallback() : () {};
  FFM setOnUpdate({
    bool updateOnChange = false,
    required VoidCallback onUpdate,
  }) =>
      this
        .._updateCallback = onUpdate
        ..updateOnChange = updateOnChange;
  // Update the containing page when this model received an update.
  void updatePage(VoidCallback callback) {
    callback();
    _updateCallback();
  }
}

class TestModel extends FFM {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

class FlutterFlowDynamicModels<T extends FFM> {
  FlutterFlowDynamicModels(this.defaultBuilder);

  final T Function() defaultBuilder;
  final Map<String, T> _childrenModels = {};
  final Map<String, int> _childrenIndexes = {};
  Set<String>? _activeKeys;

  T getModel(String uniqueKey, int index) {
    _updateActiveKeys(uniqueKey);
    _childrenIndexes[uniqueKey] = index;
    return _childrenModels[uniqueKey] ??= defaultBuilder();
  }

  List<S> getValues<S>(S? Function(T) getValue) {
    return _childrenIndexes.entries
        // Sort keys by index.
        .sorted((a, b) => a.value.compareTo(b.value))
        .where((e) => _childrenModels[e.key] != null)
        // Map each model to the desired value and return as list. In order
        // to preserve index order, rather than removing null values we provide
        // default values (for types with reasonable defaults).
        .map((e) => getValue(_childrenModels[e.key]!) ?? _getDefaultValue<S>()!)
        .toList();
  }

  S? getValueAtIndex<S>(int index, S? Function(T) getValue) {
    final uniqueKey =
        _childrenIndexes.entries.firstWhereOrNull((e) => e.value == index)?.key;
    return getValueForKey(uniqueKey, getValue);
  }

  S? getValueForKey<S>(String? uniqueKey, S? Function(T) getValue) {
    final model = _childrenModels[uniqueKey];
    return model != null ? getValue(model) : null;
  }

  void dispose() => _childrenModels.values.forEach((model) => model.dispose());

  void _updateActiveKeys(String uniqueKey) {
    final shouldResetActiveKeys = _activeKeys == null;
    _activeKeys ??= {};
    _activeKeys!.add(uniqueKey);

    if (shouldResetActiveKeys) {
      // Add a post-frame callback to remove and dispose of unused models after
      // we're done building, then reset `_activeKeys` to null so we know to do
      // this again next build.
      SchedulerBinding.instance.addPostFrameCallback((_) {
        _childrenIndexes.removeWhere((k, _) => !_activeKeys!.contains(k));
        _childrenModels.keys
            .toSet()
            .difference(_activeKeys!)
            // Remove and dispose of unused models since they are  not being used
            // elsewhere and would not otherwise be disposed.
            .forEach((k) => _childrenModels.remove(k)?.dispose());
        _activeKeys = null;
      });
    }
  }
}

T? _getDefaultValue<T>() {
  switch (T) {
    case int:
      return 0 as T;
    case double:
      return 0.0 as T;
    case String:
      return '' as T;
    case bool:
      return false as T;
    default:
      return null as T;
  }
}

class LoginPhoneNumber extends StatefulWidget {
  const LoginPhoneNumber({
    Key? key,
    this.width,
    this.height,
    this.hintText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? hintText;

  @override
  _LoginPhoneNumberState createState() => _LoginPhoneNumberState();
}

class _LoginPhoneNumberState extends State<LoginPhoneNumber> {
  late TestModel _model;
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      // height: widget.height,
      child: TextFormField(
        controller: _model.textController,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.textController',
          Duration(milliseconds: 2000),
          () => setState(() {}),
        ),
        // autofocus: true,
        obscureText: false,
        decoration: InputDecoration(
          // labelText: 'Label here...',
          // labelStyle: FlutterFlowTheme.of(context).labelMedium,
          hintText: widget.hintText,
          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'sans serif or unicompfont',
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
          suffix: InkWell(
            onTap: () async {
              _model.textController?.clear();
              setState(() {});
            },
            child: Icon(
              Icons.cancel,
              size: 10,
            ),
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(0),
            //   child: Image.asset(
            //     'assets/images/account_retain_visibilty.png',
            //     width: 10,
            //     height: 10,
            //     fit: BoxFit.cover,
            //   ),
          ),
          // suffix: _model.textController!.text.isNotEmpty
          //     ? InkWell(
          //         onTap: () async {
          //           _model.textController?.clear();
          //           setState(() {});
          //         },
          //         child: Icon(
          //           Icons.cancel,
          //           size: 10,
          //         ),
          //         // child: ClipRRect(
          //         //   borderRadius: BorderRadius.circular(0),
          //         //   child: Image.asset(
          //         //     'assets/images/account_retain_visibilty.png',
          //         //     width: 10,
          //         //     height: 10,
          //         //     fit: BoxFit.cover,
          //         //   ),
          //       )
          //     : null,
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
        // validator: _model.textControllerValidator.asValidator(context),
        // inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
      ),
    );
  }
}