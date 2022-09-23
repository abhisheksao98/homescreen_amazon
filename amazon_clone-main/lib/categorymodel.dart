import 'package:shopping_demo/service.dart';

class model {
  static const List<String> carouselImages = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];

  List<category> getcategory() {
    List<category> allcategory = [
      category(
          title: 'Mobile',
          image:
              'https://freepngimg.com/save/133273-11-apple-iphone-png-free-photo/1500x1500'),
      category(
          title: 'Fashion',
          image:
              'https://www.pngmart.com/files/11/Shopping-PNG-Background-Image.png'),
      category(
          title: 'Essential',
          image:
              'https://images.freekaamaal.com/featured_images/178355_daily.png'),
      category(
          title: 'Household',
          image:
              'https://hips.hearstapps.com/hmg-prod/images/gettyimages-510693044-1550590816.jpg'),
      category(
          title: 'Electronics',
          image:
              'https://cdn.metro-online.com/-/media/Project/MCW/IN_Metro/Stores-and-Offers/Product-Assortment/ElectronicsAppliancesHero11392x464.jpg?rev=d9da0ba1972843e393f6311c3ec0a2a9&w=1392&hash=86BD8407B5E078D4E21613C435B52A4F'),
      category(
          title: 'Books',
          image:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAD9QTwmz5VesUmbP5M3ZPcXvItcVjdomsmA&usqp=CAU')
    ];
    return allcategory;
  }
}
