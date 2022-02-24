import 'package:flutter/material.dart';

class updateProfile extends StatefulWidget {
  const updateProfile({ Key? key }) : super(key: key);

  @override
  _updateProfileState createState() => _updateProfileState();
}

class _updateProfileState extends State<updateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(26, 31, 36, 1),
        automaticallyImplyLeading: false,
        title: Text(
          'Complete Profile',
          //style: 
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(26, 31, 36, 1),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: Image.asset(
              '',
            ).image,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                child: InkWell(
                  onTap: () async {
                    
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    //child: Image.network(),
                      
                    
                  ),
                ),
              ),
              Text(
                'Upload a photo for us to easily identify you.',
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: TextFormField(
                  //controller: yourNameController,
                  obscureText: false,
                  style: TextStyle(color: Colors.white54),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.people, color: Colors.white54),
                    labelText: 'Username',                              
                    labelStyle: TextStyle(color: Colors.white54),   
                    floatingLabelStyle: TextStyle(color: Colors.cyan[100]),                                              
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(17, 20, 23, 1),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                  ),                                         
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: TextFormField(
                  //controller: yourController,
                  obscureText: false,
                  style: TextStyle(color: Colors.white54),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Colors.white54),
                    labelText: 'Phone No',
                    labelStyle: TextStyle(color: Colors.white54),                     
                    floatingLabelStyle: TextStyle(color: Colors.cyan[100]),                  
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(17, 20, 23, 1),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                  ),                 
                  keyboardType: TextInputType.number,
                ),
              ),
              
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: 
                ElevatedButton(
                  onPressed: (){
                      
                  }, 
                  child: Text('Complete Profile',style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 150, 138, 1)), 
                    fixedSize: MaterialStateProperty.all<Size>(Size(230, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.transparent, width: 1),                        
                      )
                    )
                  )
                )
                
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: 
                ElevatedButton(
                  onPressed: (){
                      Navigator.pop(context);
                  }, 
                  child: Text('Skip for Now',style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(26, 31, 36, 1)), 
                    fixedSize: MaterialStateProperty.all<Size>(Size(140, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.transparent, width: 1),
                        
                      )
                    )
                  )
                )
                
              ),
              
            ],
          ),
        ),
      ),
      
    );
  }
}