class Products {
  final String title;
  final String price;
  final String images;

  Products({required this.title, required this.price, required this.images});
}

class allproduct {
  List<Products> getproducts() {
    List<Products> gridMap = [
      Products(
        title: "Nike Air Max 250",
        price: "12000Rs",
        images:
            "https://5.imimg.com/data5/XY/UV/ID/SELLER-74573575/nike-comfortable-trendy-shoes-500x500.jpg",
      ),
      Products(
        title: "Slim Fit Jeans",
        price: "800Rs",
        images:
            "https://static.pullandbear.net/2/photos/2020/I/0/2/p/9682/515/427/9682515427_1_1_3.jpg",
      ),
      Products(
        title: "Regular jeans",
        price: "1500",
        images:
            "https://media.gq-magazine.co.uk/photos/615495771b9c304b4ef74425/master/w_1920,h_1280,c_limit/29092021_Hj_03.jpg",
      ),
      Products(
        title: "White T-Shirt",
        price: "600Rs",
        images: "https://pngimg.com/uploads/tshirt/tshirt_PNG5435.png",
      ),
      Products(
        title: "Grey Shirt",
        price: "900Rs",
        images: "https://makia.com/wp-content/uploads/2019/01/M60083_6431.png",
      ),
      Products(
        title: "Mixer",
        price: "4000Rs",
        images:
            "https://freepngimg.com/thumb/technology/51089-5-mixer-grinder-free-transparent-image-hq.png",
      ),
      Products(
        title: "Nike and Rtfkt",
        price: "25000Rs",
        images:
            "https://media.voguebusiness.com/photos/6263330f9da5e8fde2654e73/2:3/w_2560%2Cc_limit/ACS_1595.jpg",
      ),
      Products(
        title: "IPhone",
        price: "25000Rs",
        images: "https://pngimg.com/uploads/iphone_11/iphone_11_PNG21.png",
      ),
    ];
    return gridMap;
  }
}
