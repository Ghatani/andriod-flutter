import 'dart:convert';

import 'package:dolakha_supplier_system/utility/utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'addRecord.dart';
import 'updateRecord.dart';

class records extends StatefulWidget {
  const records({ Key? key }) : super(key: key);

  @override
  _recordsState createState() => _recordsState();
}

class _recordsState extends State<records> {

List list1 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color.fromRGBO(0, 150, 138, 1),
        backgroundColor: Color(0xFF757575),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            //color: FlutterFlowTheme.of(context).textColor,
            size: 32,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        title: Text('RECORDS'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Text(
                      'Your shift records here',
                      //style: ,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ListView.builder(
            itemCount: list1.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => 
                  UpdateRecordScreen(list1[index]['materialName'].toString(), list1[index]['date'].toString())));
                },
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.92,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(17, 20, 23, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0x6639D2C0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Icon(
                                Icons.monetization_on_rounded,
                                color: Colors.cyan[300],          
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list1[index]['materialName'].toString(),
                                  style: TextStyle(color: Colors.white),
                                      ),
                                
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    list1[index]['date'].toString(),
                                    style: TextStyle(color: Colors.white38), 
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('tip', style: TextStyle(color: Colors.cyan[200]),),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 4, 0, 0),
                                child: Text(list1[index]['quantity'].toString(), style: TextStyle(color: Colors.white38),),
                              ),
                            ],
                          ),
                        ),
                  ],),    
                ),
              );
            },)
        ],), 
      


      floatingActionButton: FloatingActionButton(
          onPressed: () {
              Navigator.pushNamed(context, '/addRecord');
          },
          backgroundColor: Colors.black,
          tooltip: 'Add new',
          elevation: 6,
          child: Icon(Icons.note_add_sharp),
        ),
    );
  }

  void getListApi() async {
    // login api should be here
    var url = Uri.parse('https://mangodb/user/login');
    var response = await http.get(url);

    // print('Response body: ${response.body}');

    var responseData = jsonDecode(response.body); 
    if (response.statusCode == 200 || response.statusCode == 201) {
      setState(() {
        list1 = responseData;
      });
    } else {
      showToastMessage(responseData['message'], Colors.red);
    }
  }
}