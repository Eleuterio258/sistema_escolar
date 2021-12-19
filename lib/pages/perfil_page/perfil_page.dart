import 'package:flutter/material.dart';
import 'package:sistema_escolar/res/colors/app_colors.dart';
import 'package:sistema_escolar/res/image/link_image.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
        title:  const Text('Perfil'),
        leading: IconButton(
          onPressed: () {},
          icon:const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 8.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: AppColors.green,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: const [
                        Text(
                            "Tollow",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                           Text("5423"),
                        ],
                      ),
                    ),
                    Image(
                      width: 120,
                      height: 120,
                      image: NetworkImage(
                        LinkImage.messi,
                      ),
                    ),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: const [
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                           Text("26433"),
                        ],
                      ),
                    ),
                  ],
                ),
              const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 10),
                  child: Text(
                    "ID:20194532",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 20),
                  child: Text(
                    "Eleuterio Notico",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "Friends",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.child_friendly,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "Friends",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.video_call,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "Friends",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "Friends",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
