// MY CONFIG
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController txtSearch = new TextEditingController();

  Map<int, Map<String, dynamic>> mapBerita = {
    0: {
      "title": "Kartu Prakerja akan membuka gelombang ke 14 pada tahun ..",
      "date": "2 Agustus 2021",
      "img_url":
          "https://cdn-2.tstatic.net/tribunnews/foto/bank/images/kartu-pra-kerja11234.jpg",
    },
    1: {
      "title":
          "Training / Kursus dan Jasa Pembuatan website aplikasi android ...",
      "date": "10 Agustus 2021",
      "img_url": "https://i.ytimg.com/vi/BWbzelp9VHk/maxresdefault.jpg",
    },
    2: {
      "title":
          "UPDATE Covid 19 hari ini sudah mencapai 12.589 pasien sembuh ..",
      "date": "12 Agustus 2021",
      "img_url":
          "https://asset.kompas.com/crops/7gWusRliChzBK5nzUKNt_st8Vi4=/0x0:0x0/750x500/data/photo/2021/01/15/6001749f201b1.jpg",
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(top: 25, bottom: 25, left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              //header
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple,
                      ),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.people_alt),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //search
              TextField(
                controller: txtSearch,
                decoration: InputDecoration(
                  hintText: "Search..",
                  contentPadding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(style: BorderStyle.none, width: 0),
                  ),
                  filled: true,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(5),
                    child: IconButton(
                      color: Colors.black12,
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
                style: Theme.of(context).textTheme.bodyText2,
                textInputAction: TextInputAction.next,
                onEditingComplete: () => FocusScope.of(context).nextFocus(),
              ),
              SizedBox(
                height: 20,
              ),
              //card
              Container(
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.green,
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(25, 10, 25, 15),
                                child: Text(
                                  'Health',
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.blue,
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(25, 10, 25, 15),
                                child: Text(
                                  'Sports',
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.purple,
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(25, 10, 25, 15),
                                child: Text(
                                  'Education',
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.orange,
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(25, 10, 25, 15),
                                child: Text(
                                  'Food',
                                  textAlign: TextAlign.right,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Berita Terkini',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //
              //news update
              Container(
                width: double.infinity,
                height: 200,
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mapBerita.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        child: GestureDetector(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 250,
                              color: Colors.white,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 200,
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Image.network(
                                              mapBerita[index]!["img_url"],
                                              height: 160,
                                              width: 250,
                                              fit: BoxFit.fill,
                                              alignment: Alignment.topCenter,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          child: Container(
                                            height: 80,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight:
                                                      Radius.circular(20)),
                                              color: Colors.white,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 10, 20, 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    mapBerita[index]!["title"],
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    mapBerita[index]!["date"],
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
