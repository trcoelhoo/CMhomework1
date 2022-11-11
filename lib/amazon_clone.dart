
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework1/cart.dart';
import 'package:homework1/main.dart';
import 'package:homework1/home.dart';
import 'package:homework1/menu.dart';
import 'package:homework1/perfil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';




class AmazonC extends StatefulWidget {
  const AmazonC({super.key});

  @override
  State<AmazonC> createState() => _AmazonCState();
}

class _AmazonCState extends State<AmazonC> {
  final List<Widget> tabs = [
    const HomePage(),
    const PerfilPage(),
    const CartPage(),
    const MenuPage(),
   
  ];
  
  final PageStorageBucket bucket = PageStorageBucket();
  int _selectedIndex = 0;
  Widget _bottomNavBar(int selectedIndex)=>SizedBox(
    height: 47.8,
    child: BottomNavigationBar(
      elevation: 2.5, 
      type: BottomNavigationBarType.fixed, 
      onTap: (int index)=>setState(()=>_selectedIndex=index), 
      currentIndex: selectedIndex, selectedFontSize: 12.0, 
      backgroundColor:Colors.white, 
      selectedItemColor: Colors.white, 
      unselectedItemColor: Colors.white, 
      selectedLabelStyle:  TextStyle(fontSize: 0.0), 
      unselectedLabelStyle:  TextStyle(fontSize: 0.0),
      items:<BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: SizedBox(
            height:46, 
            child: Stack(
              children: [
                selectedIndex==0? Container(
                  height: 4.8,
                  width: 44.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.0),
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                      bottomLeft: Radius.circular(50.0),
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(50.0),
              ),
              color:Colors.teal),
              alignment: Alignment.topCenter,

              ): Container(width: 44.0,),
              Container(height: 44.0, padding: EdgeInsets.only(left: 11.0,top:7.0), child:  Icon(Ionicons.home_outline, color:selectedIndex==0? Colors.teal:Colors.black), 
              
              ),
              ],
            ),
          ),
          label: 'Home',
        ),
        
        BottomNavigationBarItem(
          icon: SizedBox(
            height:46, 
            child: Stack(
              children: [
               selectedIndex==1? Container(
                  height: 4.8,
                  width: 44.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                      bottomLeft: Radius.circular(50.0),
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(50.0),
              ),
              color:Colors.teal),
              alignment: Alignment.topCenter,

              ):Container(width: 44.0,),
              Container(height: 44.0, padding: const EdgeInsets.only(left: 11.0,top:7.0), child:  Icon(Ionicons.person_outline, color: selectedIndex==1? Colors.teal:Colors.black), 
              
              ),
              
              
              ],
            ),
          ),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height:46, 
            child: Stack(
              children: [
                selectedIndex==2? Container(
                  height: 4.8,
                  width: 44.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                      bottomLeft: Radius.circular(50.0),
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(50.0),
              ),
              color:Colors.teal),
              alignment: Alignment.topCenter,

              ):Container(width: 44.0,),
              Container(height: 44.0, padding: const EdgeInsets.only(left: 11.0,top:7.0), child:  Icon(Ionicons.cart_outline, color: selectedIndex==2? Colors.teal:Colors.black), 
              
              ),
              ],
            ),
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            height:46, 
            child: Stack(
              children: [
                selectedIndex==3? Container(
                  height: 4.8,
                  width: 44.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                      bottomLeft: Radius.circular(50.0),
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(50.0),
              ),
              color:Colors.teal),
              alignment: Alignment.topCenter,

              ):Container(width: 44.0,),
              Container(height: 44.0, padding: const EdgeInsets.only(left: 11.0,top:7.0), child:  Icon(Ionicons.menu_outline, color: selectedIndex==3? Colors.teal:Colors.black), 
              
              ),
            
              
              ],
            ),
          ),
          label: 'Menu',
        ),
      ],
    ),
  );
              


  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: _bottomNavBar(_selectedIndex), body: PageStorage(bucket: bucket, child: tabs[_selectedIndex] ));
  }
}

