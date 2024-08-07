import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psyassist/model/accordionmodel.dart';
import 'package:psyassist/pages/home.dart';
import 'package:psyassist/util/dialog_mendengar.dart';
import 'package:psyassist/util/dialog.dart';
import 'package:psyassist/util/dropdown_mendengar.dart';
import 'package:psyassist/util/point_mendengar.dart';
import 'package:psyassist/util/prinsip_mendengar.dart';
import '../theme.dart';
import '../util/menu.dart';
import '../util/pfa_home.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';

class Mendengar extends StatefulWidget {
  const Mendengar({super.key});

  @override
  State<Mendengar> createState() => _MendengarState();
}

class _MendengarState extends State<Mendengar> {
  final List<AccordionModel> listAccordion = [
    AccordionModel(
        nomor: '1',
        point: [
          Point(
              point:
                  'Parafrasa : merangkum, meringkas inti pesan yang ingin disampaikan dengan kata-kata sendiri. '),
          Point(
              point:
                  "Tujuan: mengecek kembali apakah pesan ditangkap dengan baik."),
          Point(
              point:
                  "Contoh:\n Ari: Aku tidak mau ke sekolah lagi. Sebel! Semua teman mengejekku, ibu guru juga galak, sehingga aku sering dimarahi. Aku mau diam di rumah saja.Pendamping: Ari lebih suka di rumah ya, karena di sekolah tidak menyenangkan buatmu.")
        ],
        subtitle:
            'Merangkum, meringkas inti pesan yang ingin disampaikan dengan kata-kata .....',
        title: 'Parafrasa'),
    AccordionModel(
        nomor: '2',
        point: [
          Point(
              point:
                  'Refleksi perasaan : mencerminkan kembali perasaan yang disampaikan oleh pemberi pesan. '),
          Point(
              point:
                  "Contoh:\n Putri: Setiap kali aku keluar rumah, bapak itu pasti sudah menunggu di ujung gang dengan wajah yang menyeramkan. Aku gak berani keluar lagi!\nPendamping: Rasanya menakutkan sekali, ya Put."),
        ],
        subtitle:
            'Mencerminkan kembali perasaan yang disampaikan oleh pemberi pesan...',
        title: 'Refleksi perasaan'),
    AccordionModel(
        nomor: '3',
        point: [
          Point(
              point:
                  'Refleksi makna: mencampurkan perasaan dan fakta dalam suatu respons akurat'),
          Point(
              point:
                  " Contoh:\nJojo: Kakak selalu mengambil buku gambar saya tanpa kasih tahu saya. Padahal buku itu kan punya saya!\nPendamping: Jojo merasa kesal ya karena kakak sikapnya tidak sopan.")
        ],
        subtitle:
            'Mencampurkan perasaan dan fakta dalam suatu respons akurat...',
        title: 'Refleksi makna'),
  ];

  @override
  Widget build(BuildContext context) {
    // INITIAL TINGGI DAN LEBAR,
    final mywidth = MediaQuery.of(context).size.width;
    final myheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Mendengar ',
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
                context, MaterialPageRoute(builder: (context) => Home()));
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
                    color: bg_orange, borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20.0),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Apa Itu",
                              style: large.copyWith(color: white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 3),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Mendengarkan Aktif ?",
                              style: medium.copyWith(color: white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 25),
                          // BUTTON POP UP
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
                                      backgroundColor: white,
                                    ),
                                    onPressed: () {
                                      dialogMendengar(context, 'Pengguna');
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             AccordionPage()));
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Text("Klik",
                                            style: xmedium.copyWith(
                                                color: ft_orange)),
                                        SizedBox(width: 10.0),
                                        Icon(Icons.menu_book_outlined,
                                            color: bg_orange),
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
                      Container(
                          child: Image.asset(
                              'assets/images/mendengar/Mendengar.png'))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            //TITLE POINT MENDENGAR AKTIF
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Point  Mendengarkan Aktif",
                style: xmedium.copyWith(color: ft_orange),
              ),
            ),
            //POINT MENDENGAR AKTIF
            ListView.builder(
              // untuk menyesuaikan tinggi ListView dengan kontennya dan menghindari masalah scroll di dalam Column.
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                final ListPoint = [
                  {
                    'nomor': '1',
                    'title': 'Apakah Bantuan Psikologis Awal (PFA)? ',
                  },
                  {
                    'nomor': '2',
                    'title':
                        'Melibatkan interpretasi / refleksi dan pemahaman terhadap lawan bicara',
                  },
                  {
                    'nomor': '3',
                    'title': 'Kita berperan sebagai CERMIN ',
                  },
                  {
                    'nomor': '4',
                    'title':
                        'Kemampuan mendengarkan mutlak dimiliki dalam membantu dan memberikan pelayanan',
                  },
                ];

                return PointMendengar(
                  title: ListPoint[index]['title'] as String,
                  nomor: ListPoint[index]['nomor'] as String,
                  index: index,
                );
              },
            ),

            SizedBox(height: 20),
            //TITLE PRINSIP MENDENGAR AKTIF
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Prinsip Mendengarkan Aktif",
                style: xmedium.copyWith(color: ft_orange),
              ),
            ),

            //PRINSIP MENDENGAR AKTIF

            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Jumlah kolom dalam grid
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: 600 / 200,
                  ),
                  itemCount: 4, // Jumlah item dalam grid
                  itemBuilder: (context, index) {
                    final ListPrinsip = [
                      {
                        'title': 'Berikan perhatian',
                        'image': Image.asset(
                            'assets/images/mendengar/Healthcare.png')
                      },
                      {
                        'title': 'Berikan umpan balik ',
                        'image': Image.asset('assets/images/mendengar/Chat.png')
                      },
                      {
                        'title': 'Jangan menghakimi ',
                        'image':
                            Image.asset('assets/images/mendengar/Encourage.png')
                      },
                      {
                        'title': 'Tunjukkan Anda mendengarkan ',
                        'image':
                            Image.asset('assets/images/mendengar/Listening.png')
                      },
                    ];

                    return PrinsipMendengar(
                      title: ListPrinsip[index]['title'] as String,
                      image: ListPrinsip[index]['image'] as Image,
                      index: index,
                    );
                  }),
            ),

            //TIITLE Beberapa teknik mendengarkan aktif

            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Beberapa teknik mendengarkan aktif",
                style: xmedium.copyWith(color: ft_orange),
              ),
            ),

            //ACCORDION Beberapa teknik mendengarkan aktif
            //ACCORDION
            Column(
              children: [
                Accordion(
                    headerBorderColor: Colors.blueGrey,
                    headerBorderColorOpened: Colors.transparent,
                    // headerBorderWidth: 1,
                    headerBackgroundColorOpened: bg_blue2,
                    contentBackgroundColor: Colors.white,
                    contentBorderColor: bg_blue2,
                    contentBorderWidth: 3,
                    contentHorizontalPadding: 20,
                    scaleWhenAnimating: true,
                    openAndCloseAnimation: true,
                    headerPadding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                    sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    sectionClosingHapticFeedback: SectionHapticFeedback.light,
                    children: listAccordion.map(
                      (e) {
                        return AccordionMendengar()
                            .section(e.title, e.point, e.subtitle, e.nomor);
                      },
                    ).toList()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
