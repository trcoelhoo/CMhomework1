import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//Color.fromARGB(255, 189, 189, 189),
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
          body: Container(
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
          
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              SizedBox(height: 20.0,),
              GridView.builder(
                itemCount: menu.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.71,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,),
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 15.0, right: 15.0,top: 20.0),
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1.5),
                      borderRadius: BorderRadius.circular(08.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children:[
                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 12.0,top: 10.0,right: 12.0),
                          child: Text(menu[index].bTitle, maxLines: 2,
                            
                          ),),
                          SizedBox(height: 29.0,), 
                          ClipRRect(
                            
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60.0),
                              topRight: Radius.circular(60.0),
                              bottomLeft: Radius.circular(08.0),
                              bottomRight: Radius.circular(08.0),
                            ),
                            child: Container(
                              height:100.0,
                              color: Color.fromARGB(255, 202, 245, 251),
                              child: Image.network(
                                menu[index].bImage,
                                fit: BoxFit.fitHeight,
                                width: 150,
                                height: 100,
                              ),
                              )
                            ),
                          
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20.0,),
             
            ],
          ),
        ),
      );
    }
  }

List<ItemLists> menu=[
  ItemLists(bTitle: 'Pedidos' , bImage: 'https://m.media-amazon.com/images/G/30/x-locale/cs/help/images/gateway/self-service/order._CB659957666_.png'),
  ItemLists(bTitle: 'Moradas', bImage: 'https://m.media-amazon.com/images/G/30/x-locale/cs/help/images/gateway/self-service/YA_icon_address_01._CB657847929_.png'),
  ItemLists(bTitle: 'Segurança', bImage: 'https://m.media-amazon.com/images/G/30/x-locale/cs/help/images/gateway/self-service/security._CB657847929_.png'),
  ItemLists(bTitle:'Prime' , bImage:'https://m.media-amazon.com/images/G/30/x-locale/cs/help/images/gateway/self-service/prime-ss-modified_Sep4._CB657847929_.png'),
  ItemLists(bTitle:'Pagamento' , bImage:'https://m.media-amazon.com/images/G/30/x-locale/cs/help/images/gateway/self-service/payment._CB659957666_.png'),
  ItemLists(bTitle:'Presentes' , bImage:'https://m.media-amazon.com/images/G/30/x-locale/cs/help/images/gateway/self-service/gift_card._CB659957666_.png'),
  ItemLists(bTitle:'Mensagens' , bImage:'https://m.media-amazon.com/images/G/30/x-locale/cs/help/images/gateway/self-service/YA_icon_Message_3._CB657847929_.png'),
  ItemLists(bTitle:'Contactos' , bImage:'https://m.media-amazon.com/images/G/30/x-locale/cs/help/images/gateway/self-service/contact_us._CB659957666_.png'),
  ItemLists(bTitle:'App' , bImage:'https://m.media-amazon.com/images/G/30/x-locale/cs/ya/images/amazon_app._CB643863032_.png'),
  ItemLists(bTitle: 'Casa', bImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/AmazonServices/Site/US/Product/FBA/Outlet/Merchandising/ES_Outlet_OD_DSC_379x304_Dec_2020._SY304_CB413249589_.jpg'),
  ItemLists(bTitle: 'Livros', bImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/X-Site/Top_campaigns_refresh/Q2/Desktop/XCM_CUTTLE_1436347_2374593_379x304_1X_es_ES._SY304_CB635784052_.jpg'),
  ItemLists(bTitle: 'Outdoor', bImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/ES-hq/2022/img/Home_Improvement/XCM_CUTTLE_1470268_2588394_186x116_it_IT._SY116_CB609734928_.jpg'),
  ItemLists(bTitle: 'Brinquedos', bImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/ES-hq/2022/img/Toys_Internet/XCM_CUTTLE_1470396_2589170_186x116_it_IT._SY116_CB609553186_.jpg'),
  ItemLists(bTitle: 'Desporto', bImage: 'https://images-na.ssl-images-amazon.com/images/I/31vwc6nP9SS._AC._SR240,240.jpg'),
  ItemLists(bTitle: 'Produtos', bImage: 'https://images-na.ssl-images-amazon.com/images/I/51mx1VXM4JS._AC._SR240,240.jpg'),

];
class ItemLists{
      String bTitle;
      String bImage;


      ItemLists({
        required this.bTitle,
        required this.bImage,

      });
    }
                  
                          