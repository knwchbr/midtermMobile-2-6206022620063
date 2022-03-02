import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 



class registerscreen extends StatefulWidget {
  const registerscreen({ Key? key }) : super(key: key);

  @override
  _registerscreenState createState() => _registerscreenState();
}

Widget buildUsername(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         keyboardType: TextInputType.emailAddress,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.account_circle,
             color: Color(0xff5ac18e),
           ),
           hintText: 'Username',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}

Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         keyboardType: TextInputType.emailAddress,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.email,
             color: Color(0xff5ac18e),
           ),
           hintText: 'Email',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}
Widget buildID(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
   
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         keyboardType: TextInputType.number,  
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.lock,
             color: Color(0xff5ac18e),
           ),
           hintText: 'ID',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}

Widget buildGPA(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
   
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
        // obscureText: true,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.grade,
             color: Color(0xff5ac18e),
           ),
           hintText: 'GPA',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}

Widget buildMobile(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[

      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2)
            )
          ]
        ),
       height: 60,
       child: TextField(
         keyboardType: TextInputType.emailAddress,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.phone,
             color: Color(0xff5ac18e),
           ),
           hintText: 'Mobile',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}



Widget buildRegisterBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      onPressed: () => print('Register'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      color: Colors.white,
      child: Text(
        'REGISTER',
        style: TextStyle(
          color: Color(0xff5ac18e),
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),

      ),

  );
}

Widget buildLoginBtn() {
  return GestureDetector(
    onTap: () => print('Login Pressed') ,
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account ? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            )
          ),
          TextSpan(
            text: 'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            )
          )
        ]
      ),
    ) 
  );
}



class _registerscreenState extends State<registerscreen> {


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container( 
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration( 
                  gradient: LinearGradient( 
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),
                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 80
                ),
  

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                       margin: EdgeInsets.symmetric(vertical: 5, horizontal: 100),
                       height: 120,
                       width: 120,
                       padding: const EdgeInsets.all(1),
                       child : ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                          child: Image(image: AssetImage('assets/images/fitm.png'),width: 400,height: 600, fit: BoxFit.cover,

                       )
                       
  
                      ),
                    ),
                  

                    SizedBox(height: 10),
                    buildUsername(),
                    SizedBox(height: 10),
                    buildEmail(),
                    SizedBox(height: 10),
                    buildID(),
                    SizedBox(height: 10),
                    buildGPA(),
                    SizedBox(height: 10),
                    DropdownButton<String>(
  items: <String>['โครงการรับตรงข้อสอบเขียน',
   'โครงการโควต้าพื้นที่', 
   'portfolio', 
   'เรียนดี',
   'GAT/PAT'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (_) {},
),
                    buildMobile(),
                    buildRegisterBtn(),
                    buildLoginBtn(),
                  ],
                ),
              ),
              )],
          ),
        ),

      ),
  
    );
  }
}
