import 'package:flutter/material.dart';
import 'package:star_cart2/view/components/bottom.dart';



class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.red,

            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              color: Colors.red,

            ),
            SizedBox(height: 20),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBar()));
            },
            child: Container(
              height: 40,
              width: 100,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.blue

             ),
              child: Center(child: Text('Login')),
            ),
            )
          ],
        ),
      ),
    );
  }
}