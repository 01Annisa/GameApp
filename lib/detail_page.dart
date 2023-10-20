import 'package:flutter/material.dart';

class detail_page extends StatefulWidget {
  String img;
  detail_page(this.img);
  @override
  State<detail_page> createState() => _detail_pageState();
}

class _detail_pageState extends State<detail_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Colors.deepPurple.shade800,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/${widget.img}.jpg'))),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '${widget.img}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text('4.5',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.star,
                          size: 17,
                        )
                      ],
                    ),
                    Text('3 jt ulasan')
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.assignment_returned_rounded,
                      size: 17,
                    ),
                    Text('250 MB'),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(' 50 jt+',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.download,
                          size: 17,
                        )
                      ],
                    ),
                    Text('Download')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Tentang Game Ini',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Free Fire adalah shooting game mobile paling terkenal di dunia. Setiap 10 menit permainan menempatkanmu di pulau terpencil dimana kamu akan bersaing dengan 49 pemain lainnya, semua berjuang untuk bertahan. Pemain secara bebas memilih lokasi turunnya dengan parasut, dan berusaha tetap berada di zona aman selama mungkin. Mengendarai kendaraan untuk menjelajahi peta, bersembunyi di alam liar, atau menjadi tak terlihat dengan bersembunyi di rumput dan semak-semak. Menyergap, membidik, bertahan, hanya untuk satu tujuan: bertahan dan menjawab panggilan tugas.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('[Permainan Battle Royale Terbaik]'),
            Text(
              'Mencari senjata, tetap di zona aman, kalahkan musuhmu dan bertahan sampai akhir. Selama permainan, temukan Legendary Airdrop sambil menghindari serangan udara untuk mendapatkan sedikit keunggulan dari lawan.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('[Squad dengan 4 orang, dengan obrolan suara dalam game]'),
            Text(
              'Buat regu hingga 4 pemain dan jalin komunikasi dengan regu kamu sejak awal. Pimpin temanmu menuju kemenangan dan jadilah tim terakhir yang berdiri sebagai pemenang di puncak!',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('[Clash Squad]'),
            Text(
              'Fase cepat mode 4v4 kini dibuka setiap hari! Atur keuanganmu, beli senjata, dan kalahkan musuhmu!',
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text('[Grafis realistik dan halus]'),
            Text(
              'Kontrol yang mudah dan grafis yang halus menjamin pengalaman optimal yang akan kamu temukan di perangkatmu untuk bergabung di jajaran para legenda',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
