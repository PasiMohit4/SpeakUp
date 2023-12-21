import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/views/screens/auths/signup_screen.dart';
import 'package:speak_up/views/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text(
              'Login',
              style:
              TextStyle(

                  fontSize: 25,
                  fontWeight: FontWeight.w700
              ),

            ),
            const SizedBox(height: 25,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                  controller: _emailcontroller,
                  labelText: 'Email',
                  icon: Icons.email,
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passwordcontroller,
                labelText: 'Password',
                icon: Icons.lock,
                isObscure: true,
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              width: MediaQuery.of(context).size.width-40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                    Radius.circular(20)
                )
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => authController.loginUser(
                    _emailcontroller.text,
                    _passwordcontroller.text
                ),
                child: const Center(
                  child: Text(
                    'Login',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account? ' , style: TextStyle(fontSize: 20),),
                InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupScreen(),
                  ),
                  ),
                    child: Text(
                      'Register' , style: TextStyle(
                        fontSize: 20,
                        color: buttonColor
                    ),
                    ),
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}


