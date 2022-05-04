import 'package:e_vet/constant.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroScreenPage extends StatefulWidget {
  const IntroScreenPage({Key? key}) : super(key: key);

  @override
  _IntroScreenPageState createState() => _IntroScreenPageState();
}

class _IntroScreenPageState extends State<IntroScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body:Column(
       children: [
         Expanded(//üst yeşil kısım düzenleme
           child: Container( //Resim ve home for pet yazısının yerini boyutunu belirledim.
             padding: const EdgeInsets.only(top: 60,right: 30, left: 30),
             decoration: const BoxDecoration(
                 color: primaryColor,
             ) ,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                 /*Text(//Yazının boyutunu rengini belirledim.
                   'HOME\nFOR PET',
                   style: TextStyle(
                     fontSize:20,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                    ),
                 ),*/
                 Expanded(//resim ekledim.
                     child:Image( image: AssetImage('images/pet.png')) ),
               ],
             ),
           ),
         ),
         Expanded(
           child: ClipPath(
             clipper: ClipPathClass(),
             child: Container(//alt beyaz kısım düzenleme
               width:MediaQuery.of(context).size.width,
               padding: const EdgeInsets.all(25 ),
               decoration: const BoxDecoration(
                   color:Colors.white
              ) ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [//yazılar renkler boyut ayarlandı
                  const Text(
                    'Take Care Of \n Your Lovely Pet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                     ),
                  ),
                 const SizedBox(height: 25),
                  RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                    TextSpan(
                      text: 'Make your bonding relationship between ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff949494),
                      ),
                    ),
                    TextSpan(
                      text:'pets & humans.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),
                  ],
                      ),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(//yeni sayfaya geçmek için fonk ve get strated kısmı oluşturuldu
                    onTap:(){
                      print('Button Clicked');
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                    builder: (context)=> const HomePage()),
                     (Route<dynamic>route) => false);
    },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 8,
                    ) ,
                    decoration: BoxDecoration(
                      borderRadius:
                      const BorderRadiusDirectional.all(Radius.circular(55)),//kaydırma kısmının eğriliğini verdik
                      color: primaryColor,
                      boxShadow: [
                        BoxShadow(
                          color:Colors.grey.withOpacity(0.3),
                          blurRadius:4,
                          spreadRadius:2,
                        ),
                      ],
                    ) ,
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Container(//get strated kaydırma kısmının beyaz butonu
                          padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                           shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.chevron_right,
                              size: 35,
                              color:primaryColor,
                            )),
                       const Expanded(
                            child: Text(
                              'Get Started',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontSize: 22,
                                 fontWeight: FontWeight.bold,
                                 color:Colors.white,
                               ),
                                 ),
                         )
                      ],
                    )
                  )
                  )
                ],
              ),
             ),
           ),
         ),

       ],
      ),

    );
  }
}
class ClipPathClass extends CustomClipper<Path>{ //Ekranı ikiye böldüğmüz beyaz kısmın eğriliğini ayarladım.
  @override
  Path getClip(Size size){
    Path path=Path();

    path.addOval(Rect.fromCircle(
      center: Offset(size.width/2,size.height),
      radius: size.height-50,
    ));
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)=>false;
}
