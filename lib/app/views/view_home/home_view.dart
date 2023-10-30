import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:flutter/material.dart';


@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_outlined), onPressed: () {
          context.router.pop();
        },),
        title: const Text('ANASAYFA'),
        centerTitle: true,
        backgroundColor: AppLightColorConstants.bgAccent,
      ),
      body: Column(
        children: [
          GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                children: [
                  //1. box
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const AngillaView()));
                    },
                    child: Container(
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 26, 152, 171),
                          border: Border.all(
                            color: Color.fromARGB(255, 12, 88, 112),
                            width: 4,
                          )),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Angilla",
                            style: TextStyle(
                              fontFamily: 'Georgia',
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 35,
                            ),
                          )
                        ],
                      ),
                    ),
                  ), //2.box
        ],
      ),
        ])
    );
  }
}