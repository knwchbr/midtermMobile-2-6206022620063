import 'package:flutter/material.dart';

// ignore: must_be_immutable

  
class ProfilePage extends StatelessWidget {
  
String name, email, ID,GPA,Gradua;

  double wh = 0 , total =0;
  ProfilePage(
      {Key? key, required this.name, required this.email,required this.ID,required this.GPA,required this.Gradua })
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
                    title: Text("emial : "),
                    subtitle: Text(' $email '),
                  ),
                  ),
                  
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("ID : "),
                    subtitle: Text(' $ID ') ),
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
                    title: Text("Graduated from "),
                    subtitle: Text(' $Gradua ' )
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("โครงการที่สมัคร"),
                    subtitle: Text('  ' )
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("สาขาที่เลือกอันดับที่ 1"),
                    subtitle: Text('  ' )
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("สาขาที่เลือกอันดับที่ 2 "),
                    subtitle: Text('  ' )
                    ),
                  ),
                  Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text("สาขาที่เลือกอันดับที่ 3 "),
                    subtitle: Text(' ' )
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
