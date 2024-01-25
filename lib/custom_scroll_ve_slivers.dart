import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 100, // app bar yükseklğini ayarlıyor
          floating: false, // farkı anlaman için denemen lazım zevke göre bişi.
          pinned: true, // app barın kaydırmada gözükmesi.
          snap:
              false, // floatingle aynı anda kullandığında sayfayı aşşağı çektiğinde app bar direkt öne çıkar.
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver App Bar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/rick.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          // padding(boşluk bırakma) vermek istiyorsam normal padding değil silver padding kullanmam gerekir.
          padding: EdgeInsets.all(4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(SabitListeElemanlari),
          ),
        ),
        //Sabit elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü.
        SliverGrid(
          delegate: SliverChildListDelegate(
              SabitListeElemanlari), // delegate elemanları oluşturmaya yarar. List delegate ise listedeli elemanları getirmeye yarar buildir ise dinamik rastgele eleman çağırmasına yarar.
          gridDelegate: // gridin nasıl çalışmasını söyleyen yerdir 2 de kaç eleman olmasını söyler.
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
        SliverFixedExtentList(
          // performanslı çalışmasını istersen bunu kullan.
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
          itemExtent: 50,
        ),
        //Dinamik (builder) elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü.
        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount:
                  6), // random eleman oluşturmak için. childcount demek ne kadar devam edecek demek 6 dedim çükü 6 eleman sonra random oluşturmayı bırakacak.
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),
        //Dinamik (builder) elemanlarla bir satırda max genişliğini söylediğimiz grid türü.
        SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
        ),
        SliverGrid.count(
          crossAxisCount: 6,
          children: SabitListeElemanlari,
        ), // maxcrossla aynı çalışma mantığına sahip.
        SliverGrid.extent(
          // bunlarda builder kullanamıyoruz sabit liste kullanmak zorundayım .
          maxCrossAxisExtent: 300,
          children: SabitListeElemanlari,
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
          ),
        ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(SabitListeElemanlari),
            itemExtent: 100),
      ],
    );
  }

  List<Widget> get SabitListeElemanlari {
    return [
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        "Dinamik Liste Elemanı ${index + 1} ",
        style: TextStyle(fontSize: 19),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
        // rastgele renk üretmek için yaptım
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
