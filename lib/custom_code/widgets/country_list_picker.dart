// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:country_list_pick/country_list_pick.dart';

class CountryListPicker extends StatefulWidget {
  const CountryListPicker({
    Key? key,
    this.width,
    this.height,
    this.code,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? code;

  @override
  _CountryListPickerState createState() => _CountryListPickerState();
}

mixin ToAlias {}

@deprecated
class CElement = CountryCode with ToAlias;

/// Country element. This is the element that contains all the information
class CountryCode {
  /// the name of the country
  String? name;

  /// the flag of the country
  String? flagUri;

  /// the country code (IT,AF..)
  String? code;

  /// the dial code (+39,+93..)
  String? dialCode;

  CountryCode({this.name, this.flagUri, this.code, this.dialCode});

  @override
  String toString() => "$dialCode";

  String toLongString() => "$dialCode $name";

  String toCountryStringOnly() => '$name';
}

class _CountryListPickerState extends State<CountryListPicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: CountryListPick(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text('Pick your country'),
          ),

          // if you need custome picker use this
          // pickerBuilder: (context, CountryCode countryCode) {
          //   return Row(
          //     children: [
          //       Image.asset(
          //         countryCode.flagUri,
          //         package: 'country_list_pick',
          //       ),
          //       Text(countryCode.code),
          //       Text(countryCode.dialCode),
          //     ],
          //   );
          // },

          // To disable option set to false
          theme: CountryTheme(
            isShowFlag: false,
            isShowTitle: true,
            isShowCode: true,
            isDownIcon: true,
            showEnglishName: false,
          ),
          // Set default value
          initialSelection: '+62',
          // or
          // initialSelection: 'US'
          // onChanged: (CountryCode code) {
          //   if (code != null) {
          //     print(code.name);
          //     print(code.code);
          //     print(code.dialCode);
          //     print(code.flagUri);
          //   } else {
          //     print('aaa');
          //   }
          //   return;
          // },
          // Whether to allow the widget to set a custom UI overlay
          useUiOverlay: true,
          // Whether the country list should be wrapped in a SafeArea
          useSafeArea: false),
    );
  }
}
