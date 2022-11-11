import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});
  
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool _value = false;
  int qt=1;
  @override
  Widget build(BuildContext context) {
    bool _value = false;
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
          body: ListView(children: [
            separadores(),
            morada(),
            subtotal(),

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
            'Carrinho        Comprar novamente',
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
  Widget subtotal(){
    
    return Column(
      
      children:[
        Container(
          margin: EdgeInsets.only(left: 20.0,right: 10.0,top: 20.0),
          child: Row(
            children: [
              const Text(
                'Subtotal',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const Text(
                ' 86',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const Text(
                ' 98',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize:12,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const Text(
                '€',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(right: 2.0),
          child: Stack(children: [
            Icon(Icons.check_circle,color:Colors.teal, size: 20.0,),
            Padding(padding: EdgeInsets.only(left: 22.0,top: 2.0),
            child: RichText(
              text: TextSpan(text: 'O seu pedido é elegível para Envio GRÁTIS. Ver detalhes',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.teal,
              ),
              
              ),
            ),
            ),

          ],)
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 42.0,
          width:380,
          margin: EdgeInsets.only(left: 10.0,right: 10.0),
          child: ElevatedButton(
            onPressed: (){},
            child: const Text(
              'Finalizar compra (2 produtos)',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow[600],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          margin: EdgeInsets.only(left: 5.0,right: 1.0),
          child: Row(children: [
            Checkbox(
          
              value: _value,
              activeColor: Colors.teal,
              onChanged: (bool? value){
                setState(() {
                  _value = value!;
                });
              },
            ),
            Container(
              
              child: Text('Enviar como presente. Incluir mensagem personalizada',

            )
            ),
            
          ]),
        ),
        const SizedBox(
              height: 15.0,
            ),
            const SizedBox(height: 10.0,
            
              child: const DecoratedBox(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 189, 189, 189),
                  ),),),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          
          itemCount: carrinho.length,
          itemBuilder: (context,index) {
            return Column(


              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.0,top: 10.0),
                          child: Image.network(carrinho[index].btImage,
                            height: 105,
                            width: 105,
                            fit: BoxFit.fitHeight,
                        ),
                        )
                      ],
                    ),
                   
                    Column(
                      children: [
                        Container(
                          width: 235,
                          padding: EdgeInsets.only(left:10.0),
                          
                          child: Text(
                            
                            carrinho[index].btTitle,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          width: 235,
                          padding: EdgeInsets.only(left:10.0,top: 5.0),
                          child:Row(
                          
                          children: [
                            
                             Text(
                              carrinho[index].btPrice,
                              style: TextStyle(
                                
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              carrinho[index].btPrice2,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:12,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              carrinho[index].btPrice3,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),

                        ),
                        
                        Container(
                          width: 235,
                          padding: EdgeInsets.only(left: 10.0,top: 4.0),
                          child: Text(
                            carrinho[index].btenvio,
                            style: TextStyle(

                              fontSize: 14,

                            ),
                          ),
                        ),
                        Container(
                          width: 235,
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            carrinho[index].btstock,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        Container(
                          width: 235,
                          child:Padding(
                            
                          padding: EdgeInsets.only(left:10.0),
                          child: Row(
                          
                          children: [
                            Text(
                              'Cor: ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              carrinho[index].btcor,
                              maxLines: 1,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ]),
                          ),
                        ),

                      
                      ],
                    ),
                    
                      ]),
                      SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0,right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12, width: 1.5),
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.black12),
                            child: Row(children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    qt--;
                                  });
                                },
                                child: Container(
                                  height: 35,
                                  width: 32,
                                  alignment: Alignment.center,
                                  child: Icon(Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                  ),
                                ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12, width: 1.5),
                                    borderRadius: BorderRadius.circular(0.0),
                                    color: Colors.white),
                                    child: Container(
                                      height: 32,
                                      width: 35,
                                      alignment: Alignment.center,
                                      child: Text(
                                        '$qt',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                ),
                                
                                InkWell(
                                onTap: () {
                                  setState(() {
                                    qt++;
                                  });
                                },
                                child: Container(
                                  height: 35,
                                  width: 32,
                                  alignment: Alignment.center,
                                  child: Icon(Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                  ),
                                ),
                                ),
                                
                                  
                              
                            ],)
                          ),
                          Container(
                                    width: 80,
                                    height:35.0,
                                    margin: EdgeInsets.only(left: 10.0,right: 190.0),
                                    decoration: BoxDecoration(
                                      
                                      border: Border.all(color: Colors.white,width:0.0),
                                      borderRadius: BorderRadius.circular(05.0),
                                      color: Colors.white),
                                    child: OutlinedButton(
                                      
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(

                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(05.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Apagar',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    )],
                          )
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                    width: 185,
                                    height:35.0,
                                    margin: EdgeInsets.only(left: 20.0),
                                    decoration: BoxDecoration(
                                      
                                      border: Border.all(color: Colors.white,width:0.0),
                                      borderRadius: BorderRadius.circular(05.0),
                                      color: Colors.white),
                                    child: OutlinedButton(
                                      
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(

                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(05.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Guardar para mais tarde',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    
                          ),
                          Container(
                                    width: 190,
                                    height:35.0,
                                    margin: EdgeInsets.only(left: 10.0),
                                    decoration: BoxDecoration(
                                      
                                      border: Border.all(color: Colors.white,width:0.0),
                                      borderRadius: BorderRadius.circular(05.0),
                                      color: Colors.white),
                                    child: OutlinedButton(
                                      
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(

                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(05.0),
                                        ),
                                      ),
                                      child: Text(
                                        'Ver mais produtos como este',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    ),
                          
                        
                        
                          ],
                        )
                    

                    
                  ],
                );
              
              

          },
        ),
      ],
    );
  }
}
                        



List<ItemLists> carrinho=[
  ItemLists(
    btTitle: 'Blink Video Doorbell',
    btImage:'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-N2Q5ZDM1ZTct-w186._SY116_CB630774936_.jpg',
    btPrice: '41',
    btPrice2: '99',
    btPrice3: '€',
    btenvio: 'Elegível para Envio GRÁTIS',
    btstock: 'Em stock',
    btcor: 'Solo Video Doorbell',
  ),
  ItemLists(
    btTitle: 'Ring Indoor Cam',
    btImage:'https://images-eu.ssl-images-amazon.com/images/G/30/kindle/journeys/NjFlMTM3NmMt/NjFlMTM3NmMt-Nzg0YmNmMjYt-w186._SY116_CB630774936_.jpg',
    btPrice: '44',
    btPrice2: '99',
    btPrice3: '€',
    btenvio: 'Elegível para Envio GRÁTIS',
    btstock: 'Em stock',
    btcor: 'Branco',
  ),


  
];
class ItemLists{
      String btTitle;
      String btImage;
      String btPrice;
      String btPrice2;
      String btPrice3;
      String btenvio;
      String btstock;
      String btcor;


      ItemLists({
        required this.btTitle,
        required this.btImage,
        required this.btPrice,
        required this.btPrice2,
        required this.btPrice3,
        required this.btenvio,
        required this.btstock,
        required this.btcor,

      });
    }