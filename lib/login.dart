import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // forma para esconder algo da tela quando o teclado aparece
    var keyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          minimum: const EdgeInsets.all(30),
          child: Column(
            // alinha na vertical
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // funciona como sistema de Grid do Bootstrap
              // se o teclado abrir, então o logo e o titulo desaparecem 
              keyboardOpen ? SizedBox() : Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(FontAwesomeIcons.pepperHot, color: Color(0xFF7540EE)),
                    SizedBox(width: 10),
                    Text(
                      'LIEFERZEIT',
                      style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF7540EE)),
                    )
                  ],
                ),
              ),

              // uma forma de agrupar
              // funciona como sistema de Grid do Bootstrap
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome!!",
                      style: TextStyle(
                          color: Color(0xFF25265E),
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Enter your access data to enter the application",
                      style: TextStyle(
                        color: Color(0xFF787993),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'email',
                            hintStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF787993),
                                fontStyle: FontStyle.italic))),
                    SizedBox(height: 10),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'password',
                            hintStyle: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF787993),
                                fontStyle: FontStyle.italic))),
                  ],
                ),
              ),
              // uma forma de agrupar
              // funciona como sistema de Grid do Bootstrap
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // espaçamento entre os objetos
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                        onPressed: () => null,
                        child: Text(
                          "Enter",
                          style: TextStyle(
                              color: Color(0xFF7540EE),
                              fontWeight: FontWeight.bold),
                        ),
                        color: Color(0xFF7540EE).withOpacity(.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    Text(
                      "Forgot password",
                      style: TextStyle(
                        color: Color(0xFF7540EE),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              // uma forma de agrupar
              // funciona como sistema de Grid do Bootstrap
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Still without account? ",
                      style: TextStyle(
                        color: Color(0xFF787993),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Create one",
                      style: TextStyle(
                        color: Color(0xFFFF7052),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
