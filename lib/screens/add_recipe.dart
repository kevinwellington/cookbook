import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({super.key});

  @override
  State<AddRecipePage> createState() => _AddRecipePageState();
}


class _AddRecipePageState extends State<AddRecipePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Align(alignment: Alignment.topCenter,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Center(child: Text('Add New Recipe', style: TextStyle(color: Colors.white, fontSize: 50,))),
          SizedBox(height: 50,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width / 4,),
              Text('            Title:', style: TextStyle(color: Colors.white, fontSize: 30,),),
              SizedBox(width: 15,),
              Flexible(child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)), filled: true, fillColor: Colors.white, contentPadding: EdgeInsets.all(16)))),
              SizedBox(width: MediaQuery.of(context).size.width / 4)
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 4,),
                Text('  Meal Type:', style: TextStyle(color: Colors.white, fontSize: 30,),),
                SizedBox(width: 15,),
                Flexible(child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)), filled: true, fillColor: Colors.white, contentPadding: EdgeInsets.all(16)))),
                SizedBox(width: MediaQuery.of(context).size.width / 4)
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 4,),
                Text('       Cuisine:', style: TextStyle(color: Colors.white, fontSize: 30,),),
                SizedBox(width: 15,),
                Flexible(child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)), filled: true, fillColor: Colors.white, contentPadding: EdgeInsets.all(16)))),
                SizedBox(width: MediaQuery.of(context).size.width / 4)
              ],
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 4,),
                Text('Ingredients:', style: TextStyle(color: Colors.white, fontSize: 30,),),
                SizedBox(width: 15,),
                Flexible(child: TextField(minLines: 5, maxLines: 10, decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)), filled: true, fillColor: Colors.white, contentPadding: EdgeInsets.all(16)))),
                SizedBox(width: MediaQuery.of(context).size.width / 4)
              ],
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width / 4,),
                Text('Instructions:', style: TextStyle(color: Colors.white, fontSize: 30,),),
                SizedBox(width: 15,),
                Flexible(child: TextField(minLines: 5, maxLines: 10, decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)), filled: true, fillColor: Colors.white, contentPadding: EdgeInsets.all(16)))),
                SizedBox(width: MediaQuery.of(context).size.width / 4)
              ],
            ),
            SizedBox(height: 50,),
            Center(
              child: SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 7, 22, 48),
                  ),
                  onPressed: () {}, 
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Add to ', style: TextStyle(color: Colors.white, fontSize: 15),),
                        Text('CookBook', style: GoogleFonts.dancingScript(color: Colors.white, fontSize: 20),)
                      ],
                    )
                  )
                ),
              ),
            ),
            SizedBox(height: 50,),
          ],
        )
      )
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}