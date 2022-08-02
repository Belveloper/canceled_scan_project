import 'package:cnic_scanner/cnic_scanner.dart';
import 'package:cnic_scanner/model/cnic_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/Scanner/Id_scanner.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  CnicModel _cnicModel = CnicModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        label: const Text('scanner'),
        backgroundColor: Colors.black87,
        animatedIcon: AnimatedIcons.menu_arrow,
        spacing: 10,
        spaceBetweenChildren: 10,
        children: [
          SpeedDialChild(
              child: Icon(
                Icons.document_scanner_outlined,
                color: Colors.black87,
              ),
              label: 'Id scan',
              onTap: () async {
                print("id scanning ...");

                await scanCnic(ImageSource.gallery);
              }),
          SpeedDialChild(
              child: Icon(
                Icons.sd_card,
                color: Colors.black87,
              ),
              label: 'passport scan',
              onTap: () {
                print("passport scanning ...");
              }),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/pass.zip"),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Pour finaliser la verification  de votre identite clicker sur le button 'scanner' et choisissez le type de scan ",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  TextEditingController nameTEController = TextEditingController(),
      cnicTEController = TextEditingController(),
      dobTEController = TextEditingController(),
      doiTEController = TextEditingController(),
      doeTEController = TextEditingController();

  Future<void> scanCnic(ImageSource imageSource) async {
   
    CnicModel cnicModel =
        await CnicScanner().scanImage(imageSource: imageSource);
    if (cnicModel == null) return;
    setState(() {
      _cnicModel = cnicModel;
      nameTEController.text = _cnicModel.cnicHolderName;
      print("asmou :"+nameTEController.text);
      cnicTEController.text = _cnicModel.cnicNumber;
      dobTEController.text = _cnicModel.cnicHolderDateOfBirth;
      doiTEController.text = _cnicModel.cnicIssueDate;
      doeTEController.text = _cnicModel.cnicExpiryDate;
    });


  }
}
