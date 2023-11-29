import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speak_up/constants.dart';
import 'package:speak_up/controllers/profile_controller.dart';
import 'package:speak_up/views/screens/selecting_screen.dart';

class ProfileScreen extends StatefulWidget {
  final String uid;
  const ProfileScreen({
    Key? key,
    required this.uid,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  void initState() {

    super.initState();
    profileController.updateUserId(widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        if(controller.user.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black12,
            leading: const Icon(Icons.person_add_alt_1_outlined),
            actions: const [
              Icon(Icons.more_horiz),

            ],
            title: Text(controller.user['name'],
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),

          body: SafeArea(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: controller.user['profilePhoto'],
                          height: 100,
                          width: 100,
                          placeholder: (context, url) => const CircularProgressIndicator(),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      )
                    ],


                      ),
                    const SizedBox(height: 35,),
                    Container(
                      height: 47,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black12,
                        ),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            if(widget.uid == authController.user.uid) {
                              authController.signOut();
                            }
                          },
                            child: Text(
                               'Sign Out',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                        ),
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
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectingScreen(),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Change Language',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),
                          ),
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
    );

  }
}
