import 'package:flutter/material.dart';

class addTransaction extends StatefulWidget {
  const addTransaction({ Key? key }) : super(key: key);

  @override
  _addTransactionState createState() => _addTransactionState();
}

class _addTransactionState extends State<addTransaction> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(57, 210, 192, 1),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(17, 20, 23, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add new transactions',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
      
                                ),
                            ),
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: IconButton(
                                
                                icon: Icon(
                                  Icons.close_rounded,
                                  
                                  size: 25,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 100,
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.8,
                          ),
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: TextFormField(
                              validator: (value){
                                if (value==null || value.isEmpty){return "Field cannot be empty";}
                                return null;
                              },
                              //controller: textController1,
                              obscureText: false,       
                              style: TextStyle(color: Colors.white54),                  
                              decoration: InputDecoration(          
                                hintStyle: TextStyle(color: Colors.white54),                   
                                hintText: 'Amount',
                                enabledBorder: UnderlineInputBorder(                                 
                                  borderSide: BorderSide(    
                                    color: Color.fromRGBO(26, 31, 36, 1.0),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(      
                                  color: Colors.white38, 
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20, 5, 24, 5),
                                prefixIcon: Icon(
                                  Icons.attach_money_rounded,
                                  color: Colors.white54,
                                  size: 32,
                                ),
                              ),
                              
                              textAlign: TextAlign.center,
                              
                            ),
                          ),
                        ),
                        TextFormField(
                              validator: (value){
                                if (value==null || value.isEmpty){return "Field cannot be empty";}
                                return null;
                              },  
                              //controller: ,
                              obscureText: false,            
                              style: TextStyle(color: Colors.white54),
                              decoration: InputDecoration(    
                                icon: Icon(Icons.date_range_rounded, color: Colors.white54),                       
                                labelText: 'Date',
                                labelStyle: TextStyle(color: Colors.white54),
                                floatingLabelStyle: TextStyle(color: Colors.cyan[100]),                               
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(26, 31, 36, 1.0),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white30,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding:
                                    EdgeInsetsDirectional.fromSTEB(20, 5, 24, 5),          
                              ),
                              
                              textAlign: TextAlign.start,
                            ),
                          SizedBox(height: 20),       
                        TextFormField(
                            validator: (value){
                              if (value==null || value.isEmpty){return "Field cannot be empty";}
                              return null;
                            },                          
                            //controller: budgetNameController,
                            //obscureText: false,
                            style: TextStyle(color: Colors.white54),
                            decoration: InputDecoration(
                              icon: Icon(Icons.people, color: Colors.white54),                             
                              labelText: 'User Name',
                              labelStyle: TextStyle(color: Colors.white54),
                              floatingLabelStyle: TextStyle(color: Colors.cyan[100]),    
                                                        
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(26, 31, 36, 1.0),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white30,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 24, 5),
                            ),
                            
                            textAlign: TextAlign.start,
                          ),
                        SizedBox(height: 20),
                        TextFormField(
                            validator: (value){
                              if (value==null || value.isEmpty){return "Field cannot be empty";}
                              return null;
                            },
                            //controller: ,
                            obscureText: false,
                            style: TextStyle(color: Colors.white54),
                            decoration: InputDecoration(    
                              icon: Icon(Icons.transfer_within_a_station_rounded, color: Colors.white54),                       
                              labelText: 'Transaction',
                              labelStyle: TextStyle(color: Colors.white54),
                              floatingLabelStyle: TextStyle(color: Colors.cyan[100]),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(26, 31, 36, 1.0),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white30,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 24, 5),
                            ),
                            
                            textAlign: TextAlign.start,
                          ),
                                               
                        
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [                                        
                            TextButton(
                              onPressed: () async {
                                if (_formkey.currentState!.validate()){
                                  setState(() {
                                    _formkey.currentState!.save();
                                    
                                  });
                      }
                              },
                              child: Text('Create Transaction',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
      
                                ),
                              ),
                              ),                 
                  ],
                ),
              ),    
              SizedBox(height: 20),  
              Text(
                'Tap above to complete request',
                  style: TextStyle(
                            fontSize: 14,   
                            color: Colors.white30,
                        ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      
    );
  }
}