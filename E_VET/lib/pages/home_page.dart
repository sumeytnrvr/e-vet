import 'package:e_vet/constant.dart';
import 'package:e_vet/default_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//tüm sayfayı beyaz yaptım.
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            title:RichText(
              text:const TextSpan(
                children: [
                  TextSpan(
                    text: 'Hi Sümeyye\n',//en üst sola kullanıcı adı yerleştirdim.
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,//text kalınlaştırdım.
                    ),
                  ),
                  TextSpan(
                    text: 'What would you like to do for your pet?',
                    style:TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,//yazıları siyah yaptım.
                ),
              ) ,
            ),
          ),
          sliverList(
            child:Container(//sayfadaki yeşil kısım
              padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical:20,
              ),
              margin: const EdgeInsets.only(//kenar boşluklarını ayarladım.
                top: 20,
                left: 20,
                right: 20,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),//kenarlarını eğrileştirdim.
                color: primaryColor,
                boxShadow: const [
                  BoxShadow(
                    color:Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0,10),
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage('images/cat.png'),//kedi resmi ekledim.
                  alignment: Alignment.centerRight,
                )
              ),
              height: 170,//yüksekliğini ayarladım.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      'View Health \nCertificate',//sağlık karnesini görüntülemek için widget ekledim.
                         style: TextStyle(
                         fontSize: 22,
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         height:1,
                       ),
                  ),
                  Container(//yeşil kısmın sağ alt köşesine bi buton ekledim.
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical:5,
                    ),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),//butonu eğrişleştirdim.
                      color: Colors.white,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset:const Offset(0, 10),
                        ),
                      ],
                    ) ,
                    child:const Text(//butonun üstüne görüntüle yazdırdım
                      'View now',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          sliverList(
              child:Container(//yeşil widget altına katagori kısmını ayarladım.
                padding: const EdgeInsets.all(20),//ara boşlukları ayarladım.
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,//cate ve see birbininden ayırdım.
                      children: [
                        Text(
                          'Catagory',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'See All',
                          style: Theme.of(context).textTheme.headline6!.
                          copyWith(
                            color:Colors.grey,
                          )
                        )
                      ],
                    ),
                  ],
                ),
              ),
          ),
      sliverList(
          child:
      SizedBox(//kategorilerin kare kare boyut ve adetlerini düzenledim.
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          primary: false,
          //physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.all(0),
          scrollDirection: Axis.horizontal,
          children: [
            GridOption(//uzun uzun tekrar yazmak yerine fonk. yapıp istediğim zaman yeni kategori oluşturabilicem.
              image: 'images/vet.png',
              title: 'Vet',
              isSelected:false,
              onTap:(){},
              ),

            GridOption(
              image: 'images/grooming.png',
              title: 'Grooming',
              isSelected:false,
              onTap:() {},
            ),
            GridOption(
              image: 'images/showeer-min.png',
              title: 'Shower',
              isSelected:false,
              onTap:(){},
            ),
            GridOption(
              image: 'images/cutt-min.png',
              title: 'Nail Clipping',
              isSelected:false,
              onTap:(){},
            ),
            GridOption(
              image: 'images/food.png',
              title: 'Food',
              isSelected:false,
              onTap:(){},
            ),
          ],
        ),
      )),
          sliverList(
            child:Container(//yeşil widget altına katagori kısmını ayarladım.
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom:5,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//category ve see birbininden ayırdım.
                    children: [
                      Text(
                        'Nearby Veterinary',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                          'See All',
                          style: Theme.of(context).textTheme.headline6!.
                          copyWith(
                            color:Colors.grey,
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          sliverList(
              child: ListView(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(0),
            children:  const [
              DrListContainer(),
              DrListContainer(),
              DrListContainer(),
              DrListContainer(),
        ],
    ))
     ],
    ),
   );
  }
}

class DrListContainer extends StatelessWidget {
  const DrListContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      padding:  const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: secondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
            //offset: const Offset(
              //0,
              //10,
            //),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('images/male-doctor.png'),
                fit: BoxFit.cover,
              )
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text(
                    'Dr.Burhan Altıntop',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  const Text(
                    'General Veterinary',
                    style: TextStyle(
                        fontSize: 12,
                    )
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width:MediaQuery.of(context).size.width*0.5,
                 child: Row(
                   mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children:[
                  Text(
                    '\$125.000',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                      Text(
                        '2.1 km',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                ],
              ),
                  ),
            ],
          ),
        ),
          SizedBox(
            width: 40,
            child: Container(
              decoration: const BoxDecoration(
                color:primaryColor,
                shape: BoxShape.circle,
              ),

            child: IconButton(
              icon: const Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
              onPressed: (){
                print('on click');
              },
            ),
            ),
          ),
      ],

    ),

          );
  }
}

class GridOption extends StatelessWidget {//kareler için fonksiyon
  const GridOption({
    Key? key,
    required this.image,
    required this.title,
    this.isSelected=false, required this.onTap,
  }) : super(key: key);

  final String image;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
      print('Tapped');
      },
      child:Container(
      margin: const EdgeInsets.only(left: 25),//2 kare arası mesafeyi oluşturdum.
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width/4.3,//yazı ve kare arası mesafeyi oluşturdum.
          height: 85,
          decoration: BoxDecoration(
            color: isSelected? primaryColor:secondaryColor,
            borderRadius: BorderRadius.circular(25),//karelere eğrilik verdim.
          ),
        child: Image.asset(//karelerin içine resim ekledim.
            image,
             //fit:BoxFit.scaleDown,
          height: 50,
        ),
    ),
       Flexible(
            child:Text(//karelerin altına kategaori yazısını ekledim.
          title,
          style: const TextStyle(
          fontSize: 18,//boyut ve renkeri ayarladım.
          color: Colors.black54,
          fontWeight: FontWeight.bold,
            ),
          )
        ),
      ],
    ),
    ),
    );
  }
}
