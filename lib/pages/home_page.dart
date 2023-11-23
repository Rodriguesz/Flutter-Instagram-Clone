import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! APPBAR
      appBar: appBar(),

      bottomNavigationBar: bottomNavigationBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white, // Cor da barrinha
                    width: 0.1, // Largura da barrinha
                  ),
                ),
              ),
              child: SizedBox(
                height: 140,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return storyIcon(
                            'https://static.wikia.nocookie.net/jojo/images/2/27/Shigechi_AV.png/revision/latest?cb=20161231095210&path-prefix=es',
                            'Seu story',
                            20.8,
                            107,
                            0,
                            0);
                      } else {
                        return storyIcon(
                            'https://static.wikia.nocookie.net/jjba/images/9/9c/JolyneCujoh.jpg/revision/latest?cb=20230326172412&path-prefix=pt-br',
                            'JolyneCujoh',
                            10,
                            107,
                            0,
                            0);
                      }
                    }),
              ),
            ),

            //!   POST 1
            Column(children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://static.wikia.nocookie.net/jjba/images/a/a3/Jotaro_Kujo5.png/revision/latest?cb=20200702220047&path-prefix=pt-br'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Jotaro.kujo10',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/68/a4/b7/68a4b7dd5c15c5b382c6da225016f0bb.png'))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.favorite_outline,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.white,
                      size: 27,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.send_outlined,
                      color: Colors.white,
                      size: 27,
                    ),
                    SizedBox(
                      width: 235,
                    ),
                    Icon(
                      Icons.save,
                      color: Colors.white,
                      size: 27,
                    ),
                  ],
                ),
              )
            ]),

            //! POST 2
          ],
        ),
      ),
    );
  }

  ///STORIES
  Widget storyIcon(String imagem, String name, double l, double t, double r, double b) {
    return Stack(children: [
      const Padding(
        padding: EdgeInsets.only(right: 10),
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.purpleAccent,
        ),
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(3, 3, 0, 3),
        child: CircleAvatar(
          radius: 47,
          backgroundColor: Colors.black,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(6, 6, 0, 6),
        child: CircleAvatar(
          radius: 44,
          backgroundImage: NetworkImage(imagem),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(l, t, r, b),
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      )
    ]);
  }

  /// BARRA DE NAVEGAÇÃO INFERIOR
  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      // currentIndex: indice,
      // onTap: (index) {
      //   setState(() {
      //     indice = index;
      //   });
      // },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 8),
              child: Icon(
                Icons.home,
                size: 30,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 10, 8),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 10, 8),
              child: Icon(
                Icons.video_collection_outlined,
                size: 30,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 10, 8),
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 10, 8),
              child: Icon(
                Icons.person,
                size: 30,
              ),
            ),
            label: ''),
      ],
    );
  }

  /// APPBAR
  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Instagram',
        style: TextStyle(fontSize: 25),
      ),
      backgroundColor: Colors.black,
      actions: const [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 8, 11, 8),
          child: Icon(
            Icons.add_box_outlined,
            size: 30,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 8, 11, 8),
          child: Icon(
            Icons.favorite_outline_outlined,
            size: 30,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 8, 11, 8),
          child: Icon(
            Icons.chat_outlined,
            size: 30,
          ),
        ),
      ],
    );
  }
}
