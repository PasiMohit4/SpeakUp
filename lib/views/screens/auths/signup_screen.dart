import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/views/screens/auths/login_screen.dart';
import 'package:speak_up/views/widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _uersnamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Register',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(height: 25,),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage('https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png'),
                  backgroundColor: Colors.black,
                ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: () => authController.pickImage(),
                    icon: const Icon(Icons.add_a_photo),
                  ),

                ),
              ],
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _uersnamecontroller,
                labelText: 'Username',
                icon: Icons.person,
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailcontroller,
                labelText: 'Email',
                icon: Icons.email,
              ),
            ),
            const SizedBox(height: 15,),
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
                onTap: () => authController.registerUser(
                    _uersnamecontroller.text,
                    _emailcontroller.text,
                    _passwordcontroller.text,
                    authController.profilePhoto,
                ),
                child: const Center(
                  child: Text(
                    'Register',style: TextStyle(
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
                const Text('Already have an account? ' , style: TextStyle(fontSize: 20),),
                InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),
                    ),
                  ),
                  child: Text(
                    'Login' , style: TextStyle(
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
