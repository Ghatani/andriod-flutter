import 'package:flutter/material.dart';

class UpdateRecordScreen extends StatefulWidget {

  String? material, date;
  UpdateRecordScreen(this.material, this.date);

  @override
  _UpdateRecordScreenState createState() => _UpdateRecordScreenState();
}

class _UpdateRecordScreenState extends State<UpdateRecordScreen> {


  final _materialController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _materialController.text = widget.material.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}