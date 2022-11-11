import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
       child: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent),
        elevation: 0.0,
        titleSpacing:0.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [                  
                Color.fromARGB(255, 107, 210, 231),
                Color.fromARGB(255, 154, 254, 224)],
              stops: [0.5,1.0],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
              alignment: Alignment.topLeft,
              child: Image.asset('assets/images/amazon.png', width: 120, height: 45, color: Colors.black,),

            )),
            Container(
              padding: const EdgeInsets.only(right: 15.0,left: 15.0),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Icon(Ionicons.notifications_outline, color: Colors.black,),
                  ),
                  Icon(Ionicons.search, color: Colors.black,),
                  
                ]
              )

            )
          ],
        )

        )
      ),
      body: ListView(
          shrinkWrap: true,
          children: [
            details(),
            botoes(),
            const SizedBox(height: 10.0,),
            pedidos(),
            const SizedBox(height: 10.0,),
            const SizedBox(height: 5.0,
            
              child: const DecoratedBox(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 189, 189, 189),
                  ),),),
            const SizedBox(height: 15.0,),
            comprar(),
            const SizedBox(height: 5.0,
            
              child: const DecoratedBox(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 189, 189, 189),
                  ),),),
            const SizedBox(height: 15.0,),
            conta(),
            const SizedBox(height: 15.0,),
          ],
      ),
    );
  }

  Widget details(){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 113, 216, 230),
            Color.fromARGB(255, 203, 231, 235),
          ],
          stops: [0.0,1.0],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          tileMode: TileMode.repeated),

        ),
        padding: EdgeInsets.only(left: 10.0, right: 10.0,bottom: 10.0,top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              Text(
                'Olá, ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Tiago',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22.0,
                  ),
                ),
              ),
              
            ],
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white,width:2.5),
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.black26),
              child:Padding(
                padding: EdgeInsets.all(05.0),
                child: Icon(
                  Ionicons.person_outline,
                  color: Colors.white,
                  size: 30.0,
                ),
              )
            ),
          
        ],
        ),
        
      );
    
  }
  Widget botoes(){
    return Column(
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              height: 20.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 203, 231, 235),
                    Colors.white,
                  ],
                  stops: [0.0,1.0],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  tileMode: TileMode.repeated),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height:40.0,
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width:0.0),
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white),
                    child: OutlinedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.black.withOpacity(0.03),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: Text(
                        'Os seus Pedidos',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    )
                  ),
                  Expanded(
                  child: Container(
                    height:40.0,
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width:0.0),
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white),
                    child: OutlinedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.black.withOpacity(0.03),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: Text(
                        'Comprar novamente',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    )
                  ),
              ],
            ),
      
          ],
        ),
        SizedBox(height: 10.0,), Row(
          children: [
                Expanded(
                  child: Container(
                    height:40.0,
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width:0.0),
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white),
                    child: OutlinedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.black.withOpacity(0.03),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: Text(
                        'A sua conta',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    )
                  ),
                  Expanded(
                  child: Container(
                    height:40.0,
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width:0.0),
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white),
                    child: OutlinedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.black.withOpacity(0.03),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: Text(
                        'As suas listas',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    )
                  ),
              ],
            ),
      
          ],
        );
  }
  Widget pedidos(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Os seus pedidos',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                'Ver tudo',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 106, 110),
                  fontSize: 14.5,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            
          ],
        ),
        Container(
          height: 170.0,
          padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 0.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dispositivos.length,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                
                padding: const EdgeInsets.only(left: 10.0,right: 05.0),
                
                child: DecoratedBox(decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26,width:1.5),
                  borderRadius: BorderRadius.circular(05.0),
                  color: Colors.white),
                child: Container(
                  width: 180.0,
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  child: Image.network(
                    dispositivos[index].btImage,
                    fit: BoxFit.cover,
                    width: 180.0,
                  ),
                  ),
                
                ),
                
                
                );
                
            },
          ),
        ),
      ],
    );
  }
  Widget comprar(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10.0,
              bottom: 10.0),
              child: Text(
                'Continuar a comprar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                'Editar',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 106, 110),
                  fontSize: 14.5,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

        
            
          ],
        ),Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
          Container(
          height: 280,
          color: Colors.white,

          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              
              crossAxisCount: 3,
              childAspectRatio: 1.1,


            ),
            itemCount: dispositivoscomprar.length>6? 6:6,
            scrollDirection: Axis.vertical,
            itemBuilder:(context,index){
              return Column(
                
                children: [
                  Container(
                
                    padding: const EdgeInsets.only(left: 10.0,right: 05.0) ,
                    
                    child: DecoratedBox(decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26,width:1.5),
                      borderRadius: BorderRadius.circular(05.0),
                      color: Colors.white),
                    child: Container(
                      width: 180.0,
                      height: 110.0,
                      padding: const EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                      child: Image.network(
                        dispositivoscomprar[index].btImage,
                        fit: BoxFit.cover,
                        width: 180.0,
                      ),
                      ),
                    
                    ),

                    
                
                
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10.0,right: 05.0),
                    child: Text(
                      maxLines:1,
                      dispositivoscomprar[index].btTitle,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),

                ],
                  
                  
                
                
              );
            }
          ),    
            
          
        ),
        Container(
              
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                
                '˘ Ver mais ',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 106, 110),
                  fontSize: 14.5,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
        
      ],
    ),
      ],
    );
  }

  Widget conta(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'A sua conta',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                'Ver tudo',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 106, 110),
                  fontSize: 14.5,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            
          ],
        ),
        Container(
          height: 65.0,
          color: Colors.white,
          padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 0.0),
          child: ListView.builder(
            itemCount: itemlistss.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.white,
                padding: const EdgeInsets.only(left: 05.0,right: 05.0),
                child: OutlinedButton(
                  
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black.withOpacity(0.03),
                    
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(04.0),
                    ),
                  ),
                  onPressed: (){},
                  child:Text(
                    itemlistss[index].btTitle,
                    style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                

                
                
                );
                
            },
          ),
        ),
      ],
    );
  }
}
List<ItemLists>itemlistss=[
  ItemLists(btTitle: 'Formas de Pagamento',btImage:''),
  ItemLists(btTitle: 'Subscreva & Poupe',btImage:''),
  ItemLists(btTitle: 'Moradas',btImage:''),
  ItemLists(btTitle: 'Os meus pedidos',btImage:''),
  ItemLists(btTitle: 'As suas mensagens',btImage:''),
  ItemLists(btTitle: 'Gerir saldo do cartão oferta',btImage:''),
];
List<ItemLists> dispositivos=[
  ItemLists(btTitle:'Blink Video Doorbell' , btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-N2Q5ZDM1ZTct-w186._SY116_CB630774936_.jpg'),
  ItemLists(btTitle: 'Ring Indoor Cam', btImage:'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-Nzg0YmNmMjYt-w186._SY116_CB630774936_.jpg'),
  ItemLists(btTitle:'Kindle Paperwhite Signature Edition',btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-MzQyODBkOWMt-w186._SY116_CB630774936_.jpg'),
  ItemLists(btTitle:'Blink Mini',btImage: 'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-Y2RjMmEzNTQt-w186._SY116_CB630774936_.jpg'),
];
List<ItemLists> dispositivoscomprar=[
  ItemLists(btTitle:'SanDisk Ultra microSDXC' , btImage: 'https://m.media-amazon.com/images/I/61jhzv9AQRL.__AC_SY300_SX300_QL70_ML2_.jpg'),
  ItemLists(btTitle: 'Sony ALCF55S.SYH Tampa', btImage:'https://m.media-amazon.com/images/I/61fPYajwr7L._AC_SX679_.jpg'),
  ItemLists(btTitle:'PEMOTech Tripé',btImage: 'https://m.media-amazon.com/images/I/71fJ6Wb+1sL._AC_SX679_.jpg'),
  ItemLists(btTitle:'IPOW Mini suporte móvel',btImage: 'https://m.media-amazon.com/images/I/61LYUQVLiHL._AC_SX425_.jpg'),
  ItemLists(btTitle:'200 Cápsulas Borbone respresso',btImage: 'https://m.media-amazon.com/images/I/51KRJAl4ZOL._AC_SX679_.jpg'),
  ItemLists(btTitle:'Parker 51 caneta-tinteiro',btImage: 'https://m.media-amazon.com/images/I/91ICf-UCYQL._AC_SX679_.jpg'),
  ItemLists(btTitle:'Calções para homem',btImage: 'https://m.media-amazon.com/images/I/61Rlfrh92zL._AC_UX679_.jpg'),
  ItemLists(btTitle:'Philips OneBlade',btImage: 'https://m.media-amazon.com/images/I/71eu-v7OMDL._AC_SX679_.jpg'),
  ItemLists(btTitle:'JBL Xtreme 2',btImage: 'https://m.media-amazon.com/images/I/61-ZFpGRrzL._AC_SX425_.jpg'),
];

class ItemLists{
      String btTitle;
      String btImage;


      ItemLists({
        required this.btTitle,
        required this.btImage,

      });
    }