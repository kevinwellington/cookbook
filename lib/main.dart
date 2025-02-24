import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/search.dart';
import 'screens/favorites.dart';
import 'screens/add_recipe.dart';
import 'screens/random_recipe.dart';
import 'screens/meal_calendar.dart';
import 'screens/shopping_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 10, 52, 99)),
      home: TitleWidget(),
    );
  }
}

class TitleWidget extends StatefulWidget {
  const TitleWidget({super.key});

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}
class _TitleWidgetState extends State<TitleWidget> {
  Widget currentPage = const MyHomePage();
  
  void _onDrawerItemClick({required int clickedIndex}) {
    setState(() {
      switch (clickedIndex) {
        case 0:
          currentPage = const MyHomePage();
          break;
        case 1:
          currentPage = const MyFavoritesPage();
          break;
        case 2:
          currentPage = const AddRecipePage();
          break;
        case 3:
          currentPage = const RandomRecipePage();
          break;
        case 4:
          currentPage = const MealCalendarPage();
          break;
        case 5:
          currentPage = const ShoppingListPage();
          break;
        default:
          currentPage = const MyHomePage();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage, // This handles screen transitions
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text('CookBook', style: GoogleFonts.dancingScript(color: Colors.white, fontSize: 50)),
        backgroundColor: const Color.fromARGB(255, 7, 22, 48),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white, size: 35,),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },)
        
      ),
      drawer: MainDrawer(onDrawerItemClick: _onDrawerItemClick),
    );
  }
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onDrawerItemClick});

  final void Function({required int clickedIndex}) onDrawerItemClick;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF537091),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 80,
            child: Container(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(color: Color(0xFF1F2D44)),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                icon: Icon(Icons.close_rounded, color: Colors.white, size: 35,),
                alignment: Alignment.bottomLeft,
              )
            )
          ),
          ListTile(
            leading: Icon(Icons.search_outlined, color: Colors.white,),
            title: const Text('Search', style: TextStyle(color: Colors.white),),
            selected: true,
            onTap: () {
              onDrawerItemClick(clickedIndex: 0);
              Navigator.pop(context);
            }
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline, color: Colors.white,),
            title: const Text('Favorites', style: TextStyle(color: Colors.white),),
            selected: true,
            onTap: () {
              onDrawerItemClick(clickedIndex: 1);
              Navigator.pop(context);
            }
          ),
          ListTile(
            leading: Icon(Icons.add_box_outlined, color: Colors.white,),
            title: const Text('Add New Recipe', style: TextStyle(color: Colors.white),),
            selected: true,
            onTap: () {
              onDrawerItemClick(clickedIndex: 2);
              Navigator.pop(context);
            }
          ),
          ListTile(
            leading: ImageIcon(AssetImage('assets/dice.png'), color: Colors.white,),
            title: const Text('Random Recipe', style: TextStyle(color: Colors.white),),
            selected: true,
            onTap: () {
              onDrawerItemClick(clickedIndex: 3);
              Navigator.pop(context);
            }
          ),
          ListTile(
            leading: Icon(Icons.calendar_month_rounded, color: Colors.white,),
            title: const Text('Meal Calendar', style: TextStyle(color: Colors.white),),
            selected: true,
            onTap: () {
              onDrawerItemClick(clickedIndex: 4);
              Navigator.pop(context);
            }
          ),
          ListTile(
            leading: Icon(Icons.list_alt_outlined, color: Colors.white,),
            title: const Text('Shopping List', style: TextStyle(color: Colors.white),),
            selected: true,
            onTap: () {
              onDrawerItemClick(clickedIndex: 5);
              Navigator.pop(context);
            }
          ),
        ]
      ),
    );
  }
}