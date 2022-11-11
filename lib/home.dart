

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:ionicons/ionicons.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State <HomePage> createState() =>  HomePageState();
}

class  HomePageState extends State <HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 189, 189),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          elevation: 0.0,
          systemOverlayStyle: const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent, statusBarColor: Colors.transparent),

          titleSpacing: 0.0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 107, 210, 231),
                  Color.fromARGB(255, 154, 254, 224)
                ],
                stops: [0.1,1],
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  height: 42.0,
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(7.0),
                    elevation: 1.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Stack(
                          alignment: Alignment.center,
                          children: [
                            const Icon(Ionicons.scan,color: Color.fromARGB(132, 0, 0, 0),size: 24,),    
                          ],),
                          prefixIcon: InkWell(
                            onTap: (){},
                            child: const Icon(Ionicons.search,color: Colors.black,size: 22,),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(top:0.0,bottom: 20),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                            borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                          ),
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Color.fromARGB(132, 0, 0, 0),
                            
                          ),
                          hintText: 'Search Amazon.es',

                          ),
                      ),
                    ),
                  ),
                ),
                
            ],
          ),
         
          
          ),
          ),
          body: ListView(children: [
            separadores(),
            morada(),
            imageSlider(),
            prodsSlider(),
            oferta(),
            displayproducts(),
          ],),

        
  
    
    );
  }
  Widget separadores(){
  return Container(
    height: 40,
    decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 107, 210, 231),
                  Color.fromARGB(255, 154, 254, 224)
                ],
                stops: [0.1,1],
              ),
            ),
    child: Row(
      children:[
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Listas da Alexa      PRIME      VÍDEO      MÚSICA',
            style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        )),
      ],
    ));
  }
  Widget morada(){
  return Container(
    height: 40,
    decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 162, 236, 233),
                  Color.fromARGB(255, 179, 253, 250)
                ],
                stops: [0.1,1],
              ),
            ),
    padding: const EdgeInsets.only(left: 20.0),
    child: Row(
      children:[
        const Icon(
          Ionicons.location_outline,
          color: Color.fromARGB(255, 0, 0, 0),
          size: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'Enviar a Tiago - Aveiro 3810-166',
            style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        )),
      ],
    ));
}

  Widget imageSlider(){
  return CarouselSlider(
    options: CarouselOptions(
      height: 300.0,
      viewportFraction: 1.0,
    ),
    items: [
      'https://m.media-amazon.com/images/I/61TWmE2dUhL._SX3000_.jpg',
      'https://m.media-amazon.com/images/I/7134sAjSJFL._SX3000_.jpg',
      'https://m.media-amazon.com/images/I/613uMfr3jaL._SX3000_.jpg',
    ].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Image.network(
            i,
            fit: BoxFit.cover,
            
            
            
          );
        },
      );

    }).toList(),
  );

  
  }
  Widget prodsSlider(){
  
  return Container(
    
    height: 200,
    width: MediaQuery.of(context).size.width,
    
    alignment: Alignment.topRight,
    child: ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 0.0,bottom: 10.0),
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topRight,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: itemLists.length,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                height: 200,
                width: 130,
               
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(left: 7.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      itemLists[index].btTitle,
                      
                      style: const TextStyle(color: Colors.black),
                      
                    )),
                    Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      height: 159-16,
                      width: 130,
                      child: Image.network(
                        itemLists[index].btImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    
                    
                ],
                )
              );
            }
          )
        )

      ],
  ),
  );
  }

  Widget oferta(){


    return Container(
      
      padding: const EdgeInsets.only(top: 10.0,left: 10.0),
      color: Colors.white,
      child: Column(
      children: [
        
        Container(

          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only( top: 10.0),
          child: const Text(
            'Oferta Top',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        Container(
          child: Image.network(
            'https://m.media-amazon.com/images/I/812xwe5lXfL._AC_UL320_.jpg',
            fit: BoxFit.cover,
          ),

        ),
        Row(
          
          children: [
            Container(
              
              padding: const EdgeInsets.only(right: 5.0, top: 5.0,left: 5.0, bottom: 5.0),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(2.0),
                color: Color.fromARGB(255, 190, 15, 15),
              ),
                
              
              
              child: const Text(
                'Até -20 %',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 5.0),
              child: const Text(
                ' Oferta',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(255, 190, 15, 15),
                ),
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            'Poupe em Samsung e mais',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: Text(
            'Descubra todas as ofertas',
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 106, 110),
              fontSize: 14,
              fontWeight: FontWeight.w400,),
          ),
        ),
        
        

      ],
      
    ),
    
    );

    

  }
  Widget displayproducts(){
    return Column(
      
      children: [
        Container(
          height: 10,
          color: Colors.grey[400],
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 15.0, top: 15.0,right: 10.0,bottom: 10.0),
          alignment: Alignment.topLeft,
          child: const Text(
            'Dispostivos Amazon',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        Container(
          height: 430,
          color: Colors.white,

          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.1,


            ),
            itemCount: dispositivos.length>4? 4:4,
            scrollDirection: Axis.vertical,
            itemBuilder:(context,index){
              return Column(
                children: [
                  SizedBox(
                    height:150,
                    
                    child: Image.network(
                      dispositivos[index].btImage,
                    
                      
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: Text(
                      dispositivos[index].btTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  
                ]
                
              );
            }
          ),    
            
          
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 0.0, bottom: 0.0,left: 10.0),
          child: Text(
            'Ver mais',
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 106, 110),
              fontSize: 14,
              fontWeight: FontWeight.w400,),
          ),
        ),
      ],
    );
  }
  List<ItemLists> itemLists=[
      ItemLists(
        btTitle: 'Prime',
        btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/em/peas22/xcm_em_peas_22_198_espt_6321_guqc6wmssr_es_pt_desktop_single_card_379x304._SY304_CB631223823_.jpg',
        
      ),
      ItemLists(
        btTitle: 'Continuar a comprar',
        btImage: 'https://m.media-amazon.com/images/I/41phPdxEPAL._AC_SY200_.jpg',
      ),
      ItemLists(
        btTitle: 'Amazon Outlet',
        btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/AmazonServices/Site/US/Product/FBA/Outlet/Merchandising/ES_Outlet_OD_DSC_379x304_Dec_2020._SY304_CB413249589_.jpg',
      ),
      ItemLists(
        btTitle: 'Continuar onde ficou',
        btImage: 'https://m.media-amazon.com/images/I/81sXFq6m93L._AC_UL320_.jpg',
      ),
      ItemLists(
        btTitle: 'Também poderá gostar',
        btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/Tagus/GW/Prime_Cards/Desktop/ephesus_gw_dt_dashboard_379x304_twitch._SY304_CB669915101_.jpg',
      ),
      ItemLists(
        btTitle: 'Casa e cozinha',
        btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/Tagus/BTF_CARDS/XCM_Manual_1297943_1520891_SE_se_se_january_themed_gw_cards_home_se_sv_3602165_379x304_1X_sv_SE._SY304_CB411304701_.jpgg',
      ),
      ItemLists(
        btTitle: 'Marcas e produtos portugueses',
        btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/x-Site/2021/February/FujiDashPC1x._SY304_CB659988641_.jpg',
      ),
      
    ];
    
List<ItemLists> dispositivos=[
  ItemLists(btTitle:'Blink Video Doorbell' , btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-N2Q5ZDM1ZTct-w186._SY116_CB630774936_.jpg'),
  ItemLists(btTitle: 'Ring Indoor Cam', btImage:'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-Nzg0YmNmMjYt-w186._SY116_CB630774936_.jpg'),
  ItemLists(btTitle:'Kindle Paperwhite Signature Edition',btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-MzQyODBkOWMt-w186._SY116_CB630774936_.jpg'),
  ItemLists(btTitle:'Blink Mini',btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-Y2RjMmEzNTQt-w186._SY116_CB630774936_.jpg'),
];
}   
class ItemLists{
      String btTitle;
      String btImage;


      ItemLists({
        required this.btTitle,
        required this.btImage,

      });
    }










