import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'profilepage.dart';


class registerscreen extends StatefulWidget {
  const registerscreen({ Key? key }) : super(key: key);

  @override
  _registerscreenState createState() => _registerscreenState();
}




class _registerscreenState extends State<registerscreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _ID = TextEditingController();
  TextEditingController _GPA = TextEditingController();
  TextEditingController _Gradua = TextEditingController();
  String? value1;
  String? value2;
  String? value3;
  String? value4;
  String value = '';
  
Widget buildUsername(BuildContext context){
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
         controller: _name,
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

Widget buildEmail(BuildContext context){
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
         controller: _email,
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
Widget buildID(BuildContext context){
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
         controller: _ID,
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

Widget buildGPA(BuildContext context){
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
        controller: _GPA,
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

Widget buildGradua(BuildContext context){
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
         controller: _Gradua,
         keyboardType: TextInputType.emailAddress,
         style: TextStyle(
           color: Colors.black87
         ),
         decoration: InputDecoration(
           border: InputBorder.none,
           contentPadding: EdgeInsets.only(top: 14),
           prefixIcon: Icon(
             Icons.school,
             color: Color(0xff5ac18e),
           ),
           
           hintText: 'Graduation from',
           hintStyle: TextStyle(
             color: Colors.black38
           )
         ),
       ), 
      )

    ],

  );
}

Widget buildBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage(name: _name.text,
        email: _email.text, ID: _ID.text,GPA: _GPA.text, Gradua: _Gradua.text,)));
      },
     
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
                    buildUsername(context),
                    SizedBox(height: 10),
                    buildEmail(context),
                    SizedBox(height: 10),
                    buildID(context),
                    SizedBox(height: 10),
                    
                    buildGPA(context),
                    SizedBox(height: 10),
                    buildGradua(context),
                    SizedBox(height: 10),
                    Text(
              "เลือกโครงการที่ต้องการสมัคร",
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
DropdownButton(               
  items: <String>
  ['โครงการรับตรงสอบข้อเขียน',
   'โครงการโควตาพื้นที่',
    'โครงการ portfolio',
    'โครงการเรียนดี',
    'โครงการรับตรงใช้คะแนน GAT/PAT'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value,style: TextStyle(color: Colors.black),),


    );
  }).toList(),
  onChanged: (value1) => {
  print(value1.toString()), 
  setState((){
    value1 = value1; 
    }),
  },
  hint: Text(
    "Please choose",
    style: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500
    ),
  ),
),
Text(
              "เลือกสาขาวิชาที่ต้องการสมัครอันดับ 1",
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
DropdownButton<String>(
  items: <String>['เลือกอันดับสมัครเรียนสาขาที่ 1',
   'หลักสูตร 4 ปีรับ ม.6 ปวช.',
    'สาขาวิชาเทคโนโลยีสารสนเทศ (IT)',
    'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)',
    'สาขาวิชาวิศวกรรมอุตสาหการและการจัดการ (IEM)',
    'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต (MM)',
    'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)',
    'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)',
    'หลักสูตร ต่อเนื่อง รับ ปวส.',
    'สาขาวิชาเทคโนโลยีสารสนเทศ (ITI)',
    'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)',
    'สาขาวิชาการจัดการอุตสาหกรรม (IMT)',
    'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT)',
    'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET)',
    'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM)'
    ].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value, style: TextStyle(color: Colors.black),),
    );
  }).toList(),
 onChanged: (value2) {
    setState(() {
    });
  },
  hint: Text(
    "Please choose",
    style: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500
    ),
  ),
),
Text(
              "เลือกสาขาวิชาที่ต้องการสมัครอันดับ 2",
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
DropdownButton<String>(
  items: <String>['เลือกอันดับสมัครเรียนสาขาที่ 2',
   'หลักสูตร 4 ปีรับ ม.6 ปวช.',
    'สาขาวิชาเทคโนโลยีสารสนเทศ (IT)',
    'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)',
    'สาขาวิชาวิศวกรรมอุตสาหการและการจัดการ (IEM)',
    'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต (MM)',
    'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)',
    'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)',
    'หลักสูตร ต่อเนื่อง รับ ปวส.',
    'สาขาวิชาเทคโนโลยีสารสนเทศ (ITI)',
    'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)',
    'สาขาวิชาการจัดการอุตสาหกรรม (IMT)',
    'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT)',
    'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET)',
    'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM)'
    ].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (value3) {
    setState(() {
    });
  },
  hint: Text(
    "Please choose",
    style: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500
    ),
  ),
),
Text(
              "เลือกสาขาวิชาที่ต้องการสมัครอันดับ 3",
              style: TextStyle(fontSize: 20, color: Colors.black),
              ),
DropdownButton<String>(
  items: <String>['เลือกอันดับสมัครเรียนสาขาที่ 3',
   'หลักสูตร 4 ปีรับ ม.6 ปวช.',
    'สาขาวิชาเทคโนโลยีสารสนเทศ (IT)',
    'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)',
    'สาขาวิชาวิศวกรรมอุตสาหการและการจัดการ (IEM)',
    'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต (MM)',
    'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)',
    'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)',
    'หลักสูตร ต่อเนื่อง รับ ปวส.',
    'สาขาวิชาเทคโนโลยีสารสนเทศ (ITI)',
    'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)',
    'สาขาวิชาการจัดการอุตสาหกรรม (IMT)',
    'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT)',
    'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET)',
    'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM)'
    ].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: (value4) {
    setState(() {
    });
  },
  hint: Text(
    "Please choose",
    style: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500
    ),
  ),
),



                              buildBtn(context)
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



