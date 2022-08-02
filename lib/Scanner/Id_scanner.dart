import 'package:cnic_scanner/model/cnic_model.dart';
import 'package:flutter/material.dart';
import 'package:cnic_scanner/cnic_scanner.dart';
import 'package:image_picker/image_picker.dart';

class ScanWidget extends StatefulWidget {
  const ScanWidget({Key? key}) : super(key: key);

  @override
  State<ScanWidget> createState() => _ScanWidgetState();
}

class _ScanWidgetState extends State<ScanWidget> {
  @override
  Widget build(BuildContext context) {

    throw UnimplementedError();
  }
}

class CardModel {
  String _cnicNumber = "";
  String _cnicIssueDate = "";
  String _cnicHolderName = "";
  String _cnicExpiryDate = "";
  String _cnicHolderDateOfBirth = "";
}
