import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/views/screens/spanish/spanish_homescreen.dart';

class SelectingScreen extends StatelessWidget {
  const SelectingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [

                const Text(
                    'Which language would you like to learn ? ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight:
                      FontWeight.w600
                  ),
                ),
              const SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(5)
                    )
                ),
                child: InkWell(
                  onTap: ()  => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SpanishHomeScreen(),
                  ),
                  ),
                  child: const Center(
                    child: Text(
                      'Spanish',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),
                    ),
                  ),
                ),
              ),


            ],
        ),
      ),
    );
  }
}
