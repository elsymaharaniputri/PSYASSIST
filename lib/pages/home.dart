import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psyassist/pages/mendengar.dart';
import 'package:psyassist/pages/screen.dart';
import 'package:psyassist/util/dialog.dart';
import '../theme.dart';
import '../util/menu.dart';
import '../util/pfa_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // INITIAL TINGGI DAN LEBAR
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Home ',
                style: medium.copyWith(color: black),
              ),
            ],
          ),
        ),
        centerTitle: true,
        // BACK
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Screen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HERO
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: bg_orange),
                    borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //TEXT
                          Container(
                            width: mywidth * 0.5,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Kamu Harus Tau  Tentang Psychological First Aid !",
                              style: medium.copyWith(color: ft_orange),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          // BUTTON POP UP
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 10.0),
                                      backgroundColor: bg_orange,
                                    ),
                                    onPressed: () {
                                      buatDialog(context, 'Pengguna');
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Text("Klik",
                                            style:
                                                xmedium.copyWith(color: white)),
                                        SizedBox(width: 10.0),
                                        Icon(Icons.menu_book_outlined,
                                            color: Colors.white),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //IMAGE
                      Image.asset('assets/images/home/DC1.png'),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            //TITLE MENU
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Konsep Penting",
                style: xmedium.copyWith(color: black),
              ),
            ),
            SizedBox(height: 10),
            // MENU
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Jumlah kolom dalam grid
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: 4, // Jumlah item dalam grid
                itemBuilder: (context, index) {
                  // Data untuk setiap item dalam grid
                  final menuData = [
                    {
                      'title': 'Bencana dan Dampaknya ',
                      'subtitle':
                          'Membahas terkait konsep bencana, siklus penanggulangan, dampak fisik dan psikologis',
                      'bg_color': bg_orange,
                      'title_color': white,
                      'ft_color': white,
                      'btn_color': white,
                      'ft_btn_color': ft_orange,
                      'icon_color': bg_orange,
                      'onPressed': Home()
                    },
                    {
                      'title': ' PFA (Bantuan Psikologis Awal) ',
                      'subtitle':
                          'Membahas terkait pentingnya PFA, targetnya serta pihak pemberi PFA',
                      'bg_color': bg_blue,
                      'title_color': ft_orange,
                      'ft_color': black,
                      'btn_color': bg_orange,
                      'ft_btn_color': white,
                      'icon_color': white,
                      'onPressed': Home()
                    },
                    {
                      'title': ' Mendengarkan aktif ',
                      'subtitle':
                          ' Membahas terkait prinsip dan teknik mendengarkan aktif',
                      'bg_color': bg_blue,
                      'title_color': ft_orange,
                      'ft_color': black,
                      'btn_color': bg_orange,
                      'ft_btn_color': white,
                      'icon_color': white,
                      'onPressed': Mendengar()
                    },
                    {
                      'title': 'Stabilisasi Emosi ',
                      'subtitle': 'Membahas teknik stabilisasi emosi ',
                      'bg_color': bg_orange,
                      'title_color': white,
                      'ft_color': white,
                      'btn_color': white,
                      'ft_btn_color': ft_orange,
                      'icon_color': bg_orange,
                      'onPressed': Home()
                    },
                  ];

                  return Menu(
                    title: menuData[index]['title'] as String,
                    subtitle: menuData[index]['subtitle'] as String,
                    bg_color: menuData[index]['bg_color'] as Color,
                    title_color: menuData[index]['title_color'] as Color,
                    ft_color: menuData[index]['ft_color'] as Color,
                    btn_color: menuData[index]['btn_color'] as Color,
                    ft_btn_color: menuData[index]['ft_btn_color'] as Color,
                    icon_color: menuData[index]['icon_color'] as Color,
                    onPressed: menuData[index]['onPressed'] as Widget,
                    index: index,
                  );
                },
              ),
            ),

            SizedBox(height: 30),
            // TITLE Top Content PFA
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Top Content PFA",
                style: xmedium.copyWith(color: black),
              ),
            ),
            SizedBox(height: 10),
            // Top Content PFA

            ListView.builder(
              // untuk menyesuaikan tinggi ListView dengan kontennya dan menghindari masalah scroll di dalam Column.
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                final ListPfaHome = [
                  {
                    'image': Image.asset('assets/images/home/What.png'),
                    'title': 'Apakah Bantuan Psikologis Awal (PFA)? ',
                    'icon': Icon(Icons.navigate_next_rounded),
                    // LINK HALAMAN
                    'nextPage': Home()
                  },
                  {
                    'image': Image.asset('assets/images/home/Why.png'),
                    'title': 'Mengapa Bantuan Psikologis Awal (PFA)? ',
                    'icon': Icon(Icons.navigate_next_rounded),
                    // LINK HALAMAN
                    'nextPage': Home()
                  },
                  {
                    'image': Image.asset('assets/images/home/Where.png'),
                    'title':
                        'Kapan dan Dimanakah Bantuan Psikologis Awal diberikan? ',
                    'icon': Icon(Icons.navigate_next_rounded),
                    // LINK HALAMAN
                    'nextPage': Home()
                  },
                  {
                    'image': Image.asset('assets/images/home/Who.png'),
                    'title':
                        'Siapakah Penerima dan Pemberi Bantuan Psikologis Awal?  ',
                    'icon': Icon(Icons.navigate_next_rounded),
                    // LINK HALAMAN
                    'nextPage': Home()
                  },
                  {
                    'image': Image.asset('assets/images/home/How.png'),
                    'title':
                        'Bagaimana Cara Melakukan Bantuan Psikologis Awal?',
                    'icon': Icon(Icons.navigate_next_rounded),
                    // LINK HALAMAN
                    'nextPage': Home()
                  },
                ];

                return PfaHome(
                  title: ListPfaHome[index]['title'] as String,
                  image: ListPfaHome[index]['image'] as Image,
                  icon: ListPfaHome[index]['icon'] as Icon,
                  nextPage: ListPfaHome[index]['nextPage'] as Widget,
                  index: index,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
