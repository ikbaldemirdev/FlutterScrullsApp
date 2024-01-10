import 'package:flutter/material.dart';

class GridViewOrnek extends StatefulWidget {
  const GridViewOrnek({super.key});

  @override
  State<GridViewOrnek> createState() => _GridViewOrnekState();
}

class _GridViewOrnekState extends State<GridViewOrnek> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange, width: 5),
              //borderRadius: new BorderRadius.all(
              //new Radius.circular(20.0),
              //),
              boxShadow: [
                new BoxShadow(
                  color: Colors.red,
                  offset: new Offset(20.0, 5.0),
                  blurRadius: 20.0,
                )
              ],
              shape: BoxShape.circle,
              color: Colors.blue[100 * ((index + 1) % 8)],
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              image: DecorationImage(
                image: AssetImage("assets/images/rick.jpg"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Merhaba Flutter $index',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
            ),
          ),
          onTap: () => debugPrint("Merhaba Flutter $index tıklanıldı"),
          onDoubleTap: () =>
              debugPrint("Merhaba Flutter $index çift tıklanıldı"),
          onLongPress: () => debugPrint("Merhaba Flutter $index uzun basıldı"),
          onHorizontalDragStart: (e) =>
              debugPrint("Merhaba Flutter $index uzun basıldı $e"),
        );
      },
    );
  }
}

/*GridView.count(
      crossAxisCount: 2, // satırda kaç eleman olduğunu belirlemize yarıyor.
      reverse:
          true, // true olduğunda en sondaki eleman en baştan başlayarak yerleştirelecektir.
      primary: true,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 1',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 2',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 3',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 4',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 5',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 6',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ); */

    /*GridView.extent(
      primary: true,
      maxCrossAxisExtent: 100, // elemanların büyüklüğüne karar veriyor buna göre ekrana eleman sayısı sığıyor.
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 1',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 2',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 3',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 4',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 5',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            'Merhaba Flutter 6',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ); */
