import 'package:flutter/material.dart';

class transactions extends StatefulWidget {
  const transactions({Key? key}) : super(key: key);

  @override
  _transactionsState createState() => _transactionsState();
}

class _transactionsState extends State<transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: ,
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
        title: Text('Transactions'),
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
                      'Transactions',
                      //style: ,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
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
                                  'transaction name',
                                  style: TextStyle(color: Colors.white),
                                      ),
                                
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'Income',
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
                              Text('amount', style: TextStyle(color: Colors.cyan[200]),),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 4, 0, 0),
                                child: Text('MMMEd', style: TextStyle(color: Colors.white38),),
                              ),
                            ],
                          ),
                        ),
                  

        ],),    
        ),
        ],),      
    );
  }
}
