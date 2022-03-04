import 'package:flutter/material.dart';

// ignore: must_be_immutable

  
class ProfilePage extends StatelessWidget {
  
String name, email, ID,GPA,Gradua , cer ,choose1 ,choose2 ,choose3, choose4 ;

  double wh = 0 , total =0;
  ProfilePage(
      {Key? key, required this.name, required this.email,required this.ID,required this.GPA,required this.Gradua,required this.cer,
      required this.choose1,required this.choose2,required this.choose3,required this.choose4 })
      : super(key: key);
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 80
                ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                          image: AssetImage('assets/images/fitm.png')),
                      color: Colors.lightGreen.shade200,
                      borderRadius: BorderRadius.circular(30)),
                  height: 75,
                ),
        
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("Your Name: "),
                    subtitle: Text(' $name '),
                  ),
                  ),

                   Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("ID : "),
                    subtitle: Text(' $ID '),
                  ),
                  ),
                  
                  
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("Email : "),
                    subtitle: Text(' $email ') ),
                  ),

                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("วุฒิการศึกษา : "),
                    subtitle: Text(' $cer ') ),
                  ),
                  
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("GPA : "),
                    subtitle: Text(' $GPA ' )
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("จบการศึกษาจาก : "),
                    subtitle: Text(' $Gradua ' )
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("โครงการที่สมัคร"),
                    subtitle: Text(' $choose1 ' )
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("สาขาที่เลือกอันดับที่ 1"),
                    subtitle: Text(' $choose2 ' )
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("สาขาที่เลือกอันดับที่ 2 "),
                    subtitle: Text(' $choose3 ' )
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("สาขาที่เลือกอันดับที่ 3 "),
                    subtitle: Text(' $choose4 ' )
                    ),
                  ),
                  
                 

                  
                
                  
              ],
            ),
          ),
        ),
      ),
    ),);
      
    
  }
}
