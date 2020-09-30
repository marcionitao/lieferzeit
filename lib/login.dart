import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(30),
        child: Column(
          // alinha na vertical
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.pepperHot,
                  color: Color(0xFF7540EE)
                ),
                Text('LIEFERZEIT', 
                style: TextStyle(
                  fontSize: 18, 
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF7540EE)
                  ),
                )
              ],
            ),

            Text("Welcome!!", style: TextStyle(
              color: Color(0xFF25265E),
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),

            Text("Enter your access data to enter the application", style: TextStyle(
              color: Color(0xFF787993),
              fontStyle: FontStyle.italic,
            ),),

            TextFormField(
              decoration: InputDecoration(
                hintText: 'email', 
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF787993),
                  fontStyle: FontStyle.italic
                )
              )
            ),

            TextFormField(
              decoration: InputDecoration(
                hintText: 'password', 
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF787993),
                  fontStyle: FontStyle.italic
                )
              )
            ),

            Row(
              // espaçamento entre os objetos
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  onPressed: () => null, 
                  child: Text("Enter", style: TextStyle(
                    color: Color(0xFF7540EE),
                    fontWeight: FontWeight.bold
                  ),),
                  color: Color(0xFF7540EE).withOpacity(.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                ),

                Text("Forgot password", style: TextStyle(
                  color: Color(0xFF7540EE),
                  fontStyle: FontStyle.italic,
                ),),
              ],
            ),

            Row(
              children: [
                Text("Still without account? ", style: TextStyle(
                  color: Color(0xFF787993),
                  fontStyle: FontStyle.italic,
                ),),

                Text("Create one", style: TextStyle(
                  color: Color(0xFFFF7052),
                  fontStyle: FontStyle.italic,
                ),),
              ],
            )
          ],
        ),
      )
    );
  }
}
