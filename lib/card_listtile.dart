import 'package:flutter/material.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card ve List tile'),
      ),
      body: Center(
        child: ListView(
          // singlechild scrolldan farkı chil değil children bekliyor olması. Tek bir elemanı değil birden fazla eleamnı tutyor buraya sonrada text flan da ekleersin başka widgetlar yani.
          reverse: true, // elemanlrı tersten yaz demek.
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text('Selam'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildKullan() {
    return SingleChildScrollView(
      // sığmayan elemanlarımı kaydırmalı olarak sayfaya sığdırdı.
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          // kart şekilinde arka planı farklı bir şeymiş gibi gözüktürür.
          color: Colors.blue.shade100, // card widgetına renk verir.
          shadowColor: Colors.red, // gölge verir.
          elevation: 12, // gölgeyi büyütür
          shape: RoundedRectangleBorder(
            // kenerları ovel şeklinde yapar.
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            // Cardımıza otomatik özellikler ekler.
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('Başlık Ksımı'),
            subtitle: Text('Alt Başlık'),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          // bölücü
          color: Colors.red,
          thickness: 2, // çizginin kalınlığı
          height: 10, // card ile arasındaki boşluk
          indent: 60, // sol taraftan çizgi boşluğu
          endIndent: 60, // sağ taraftan çizgi boşluğu
        ),
      ],
    );
  }
}
