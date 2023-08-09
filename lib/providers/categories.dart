import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class Categories with ChangeNotifier {
  List<Category> shopCat = [
    Category(
      catId: 'c1',
      catImage:
          'https://img.freepik.com/free-photo/shop-clothing-clothes-shop-hanger-modern-shop-boutique_1150-8886.jpg?w=2000',
      catName: 'Cloths',
      subCategory: [
        Category(
            catId: 's1',
            catImage:
                'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-i789glal2n02f0qvbta97n8101-20220313213723.Medi.jpeg',
            catName: 'Menswear'),
        Category(
            catId: 's2',
            catImage:
                'https://mir-s3-cdn-cf.behance.net/projects/404/fd317c171932209.Y3JvcCwxMzY2LDEwNjksMCw2MTI.jpg',
            catName: 'Ladies wear'),
        Category(
            catId: 's3',
            catImage:
                'https://journal.aashniandco.com/wp-content/uploads/2022/07/thumbnail-1-1024x941.jpg',
            catName: 'Kids-wear'),
        Category(
            catId: 's4',
            catImage:
                'https://bornbabies.com/public/main_category/Boy%20Clothes.webp',
            catName: 'Just born babies'),
        Category(
            catId: 's5',
            catImage:
                'https://static.vecteezy.com/system/resources/previews/007/944/437/original/boutique-logo-design-template-free-vector.jpg',
            catName: 'Boutique'),
        Category(
            catId: 's6',
            catImage:
                'https://cdn4.vectorstock.com/i/1000x1000/40/18/indian-tailor-vector-33964018.jpg',
            catName: 'Tailors'),
      ],
    ),
    Category(
      catId: 'c2',
      catImage:
          'https://www.pngitem.com/pimgs/m/140-1403296_clip-art-consumer-for-free-consumer-electronics-electronics.png',
      catName: 'Electronics',
      subCategory: [
        Category(
            catId: 's7',
            catImage:
                'https://media.istockphoto.com/id/871717484/vector/mobile-phone-circle-icon-with-long-shadow-flat-design-style.jpg?s=612x612&w=0&k=20&c=a2uvaSdzOnLX__MYNgtBPQWWcIcTO1Ej6GtJOoAB-JE=',
            catName: 'Mobiles'),
        Category(
            catId: 's8',
            catImage:
                'https://img.freepik.com/premium-vector/smart-tv-icon_738121-768.jpg?w=2000',
            catName: "TV's"),
        Category(
            catId: 's9',
            catImage: 'https://m.media-amazon.com/images/I/71f3mSwyQ7L.jpg',
            catName: 'Refrigerator'),
        Category(
            catId: 's10',
            catImage:
                'https://www.conserve-energy-future.com/wp-content/uploads/2022/10/cloths-inside-washing-machine.jpg',
            catName: 'Washing Machine'),
        Category(
            catId: 's11',
            catImage:
                'https://paytmblogcdn.paytm.com/wp-content/uploads/2021/11/13_electricity_A-complete-guide-to-the-difference-between-air-coolers-vs-air-conditioners-800x500.jpg',
            catName: 'AC & Cooler'),
        Category(
            catId: 's12',
            catImage:
                'https://freepngimg.com/save/52249-mixer-grinder-photos-free-download-image/1500x1000',
            catName: 'Grinder & Mixer'),
        Category(
            catId: 's13',
            catImage:
                'https://static.vecteezy.com/system/resources/previews/011/064/871/original/rice-cooker-clipart-illustration-simple-red-electric-cooker-flat-design-modern-rice-electric-cooker-sign-icon-rice-cooker-cartoon-clipart-kitchen-appliances-cooking-concept-symbol-vector.jpg',
            catName: 'Rice Cooker'),
        Category(
            catId: 's14',
            catImage:
                'https://icons.iconarchive.com/icons/flat-icons.com/flat/512/Clock-icon.png',
            catName: 'Watches'),
        Category(
            catId: 's15',
            catImage:
                'https://clipart-library.com/img/1691224.png',
            catName: 'Laptops & Computers'),
      ],
    ),
    Category(
      catId: 'c3',
      catImage:
          'https://www.portlogy.com/wp-content/uploads/sites/6/2016/06/Indian-Groceries-supplier.png',
      catName: 'Groceries',
      subCategory: [
        Category(
            catId: 's16',
            catImage:
                'https://khatabook-assets.s3.amazonaws.com/media/post/5gB_sMvwavcDxq60EL-LIobryUCqgtFEe9mvlZPPEFti7Iwv2Gp8GwzjjvkZHb4EpTqmVEcpfZ7oBJO8NWorrpuL3Pkt1U8BxTln7RddVkwheSJpbU1KRGXcvJHLS155FmIcbnYNeUE5uqW_XW9T6Sw.webp',
            catName: 'Kirana stores'),
        Category(
            catId: 's17',
            catImage:
                'https://media.istockphoto.com/id/672450320/photo/shopping-carts-in-the-supermarket.jpg?s=612x612&w=0&k=20&c=-qr17x7SN2qbwPsWGnA0rH7nzt_scm4oyonr-50dNtE=',
            catName: 'Super Market'),
        Category(
            catId: 's18',
            catImage:
                'https://www.postoast.com/wp-content/uploads/2018/02/Khari-Baoli-Wholesale-Spice-market-in-Delhi.jpg',
            catName: 'Wholesale shops'),
      ],
    ),

    // Adding of another category is required i.e Veg and Non-Veg
    Category(
      catId: 'c4',
      catImage:
          'https://cdn4.vectorstock.com/i/1000x1000/36/18/hotel-service-restaurant-icon-design-graphic-vector-11403618.jpg',
      catName: 'Hotels & Restaurants',
      subCategory: [
        Category(
            catId: 's19',
            catImage:
                'https://previews.123rf.com/images/bootique/bootique1701/bootique170100009/69255323-vector-flat-icon-style-illustration-logo-for-organic-green-tea-shop-for-healthy-lifestyle-cup-of.jpg',
            catName: 'Tea stall'),
        Category(
            catId: 's20',
            catImage:
                'https://www.a2arestaurant.com/wp-content/uploads/2020/11/Mini-Tiffin.jpg',
            catName: 'Tiffins'),
        Category(
            catId: 's21',
            catImage:
                'https://static.vecteezy.com/system/resources/previews/001/920/548/original/delicious-burger-with-drink-fast-food-icon-free-vector.jpg',
            catName: 'Chinese & Fast food'),
        Category(
            catId: 's22',
            catImage:
                'https://icon-library.com/images/indian-food-icon/indian-food-icon-24.jpg',
            catName: 'Biryani & Meals'),
      ],
    ),
    Category(
      catId: 'c5',
      catImage: 'https://www.sammic.com/uploads/2021/Panaderia.jpg',
      catName: 'Bakeries',
      subCategory: [],
    ),
    Category(
      catId: 'c6',
      catImage:
          'https://img.freepik.com/free-vector/photocopy-concept-illustration_114360-7369.jpg?w=2000',
      catName: 'Internet & Xerox',
      subCategory: [],
    ),
    Category(
      catId: 'c7',
      catImage:
          'https://www.healthkart.com/connect/wp-content/uploads/2015/07/banner-2021-04-09T155419.271.jpg',
      catName: 'Fruits',
      subCategory: [],
    ),
    Category(
      catId: 'c8',
      catImage:
          'https://images.projectsgeek.com/2016/01/Online-Vehicle-Showroom.jpg',
      catName: 'Vehicle showrooms',
      subCategory: [
        Category(
            catId: 's23',
            catImage:
                'https://www.pngkit.com/png/detail/257-2571314_cycling-cyclist-png-mountain-bike-icon-png.png',
            catName: 'Bicycle'),
        Category(
            catId: 's24',
            catImage:
                'https://i.pinimg.com/originals/1d/a2/1d/1da21df8f5b210a1ee3d46aed5c0c0a6.jpg',
            catName: 'Two wheeler'),
        Category(
            catId: 's25',
            catImage:
                'https://www.shareicon.net/data/512x512/2017/01/24/875011_tourism_512x512.png',
            catName: 'Three wheeler'),
        Category(
            catId: 's26',
            catImage:
                'https://hellaeconnect.com/new_web/uploads/sub_business_segment/4W.jpg',
            catName: 'Four wheeler'),
        Category(
            catId: 's27',
            catImage:
                'https://icons.iconarchive.com/icons/icons-land/transport/256/Truck-icon.png',
            catName: 'Heavy vehicles'),
      ],
    ),
    Category(
      catId: 'c9',
      catImage: 'https://cdn-icons-png.flaticon.com/512/8635/8635996.png',
      catName: 'Photo & Videography',
      subCategory: [],
    ),
    Category(
      catId: 'c10',
      catImage:
          'https://img.freepik.com/premium-vector/ice-cream-logo-design-illustration_9845-323.jpg?w=2000',
      catName: 'Ice-Cream',
      subCategory: [],
    ),
    Category(
      catId: 'c11',
      catImage:
          'https://t3.ftcdn.net/jpg/03/11/51/98/360_F_311519859_9NV3oLpYoVMRP8uJV3tqstr2ej9TZS6Y.jpg',
      catName: 'Beauty Salon',
      subCategory: [
        Category(
            catId: 's28',
            catImage:
                'https://media.istockphoto.com/id/1202387135/vector/scissors-and-comb-icon-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=-x5Y2GLNKdrDdnqG6pMsF1uAIDtedM3qwlMqgN8ZBJk=',
            catName: 'Barber'),
        Category(
            catId: 's29',
            catImage:
                'https://www.pngitem.com/pimgs/m/64-648907_beauty-parlour-euclidean-vector-hairdresser-hairstyle-men-beauty.png',
            catName: 'Male'),
        Category(
            catId: 's30',
            catImage:
                'https://unblast.com/wp-content/uploads/2020/10/Hair-Salon-Vector-Illustration-1.jpg',
            catName: 'Female'),
        Category(
            catId: 's31',
            catImage:
                'https://icon-library.com/images/salon-icon-png/salon-icon-png-1.jpg',
            catName: 'Unisex'),
      ],
    ),
    Category(
      catId: 'c13',
      catImage:
          'https://st2.depositphotos.com/2131499/7528/v/950/depositphotos_75283433-stock-illustration-running-shoes-icon.jpg',
      catName: 'Footwear',
      subCategory: [],
    ),
    Category(
      catId: 'c14',
      catImage:
          'https://media.istockphoto.com/id/1293206204/vector/female-maid-help-man-to-put-clothes-into-washing-machine.jpg?s=612x612&w=0&k=20&c=EunQvE_F0sUQCwOl2-_AgPTVTpR0ox7jpvzfx3QTFKQ=',
      catName: 'Laundry & Dry cleaners',
      subCategory: [],
    ),
    Category(
      catId: 'c15',
      catImage:
          'https://images.yourstory.com/cs/21/98e25df018b511e988ceff9061f4e5e7/Imagef02c-1611320326878.jpg?w=1152&fm=auto&ar=2:1&mode=crop&crop=faces',
      catName: 'Sweets',
      subCategory: [],
    ),
    Category(
      catId: 'c16',
      catImage:
          'https://img.freepik.com/premium-vector/jewelry-vector-jewellery-gold-bracelet-necklace-earrings-silver-rings-with-diamonds-jewel-accessories_121223-1218.jpg?w=2000',
      catName: 'Bangles & Jewellery',
      subCategory: [],
    ),
    Category(
      catId: 'c17',
      catImage:
          'https://st3.depositphotos.com/1432405/32306/v/450/depositphotos_323067744-stock-illustration-stationery-icon-isometric-style.jpg',
      catName: 'Books & Stationary',
      subCategory: [],
    ),
    Category(
      catId: 'c51',
      catImage:
      'https://mehtahospital.com/wp-content/uploads/2016/01/Pharmacy.jpg',
      catName: 'Pharmacy',
      subCategory: [],
    ),
    Category(
      catId: 'c18',
      catImage:
          'https://www.homemaids.ae/blog/wp-content/uploads/2016/03/cleaning-services-1.png',
      catName: 'Home needs',
      subCategory: [],
    ),
    Category(
      catId: 'c19',
      catImage:
          'https://fyf.tac-cdn.net/images/products/small/BF389-11K.jpg?auto=webp&quality=60&width=650',
      catName: 'Flowers',
      subCategory: [],
    ),
    Category(
      catId: 'c20',
      catImage:
          'https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg',
      catName: 'Vegetables',
      subCategory: [],
    ),
    Category(
      catId: 'c21',
      catImage:
          'https://s3.toolsvilla.com/products/Commercial%2020%22%20Horizontal%20Bolt%20Type%20Flour%20Mill%2090kg/hr%20without%20motor/16369733960201.jpg',
      catName: 'Flour mills',
      subCategory: [],
    ),
    Category(
      catId: 'c22',
      catImage:
          'https://st4.depositphotos.com/11321632/19713/v/450/depositphotos_197131122-stock-illustration-seeds-pack-vector-illustration.jpg',
      catName: 'Seeds & Fertilizers',
      subCategory: [],
    ),
    Category(
      catId: 'c23',
      catImage:
          'https://images.squarespace-cdn.com/content/v1/59f0e6beace8641044d76e9c/1669587646206-6Z76MY4X3GBFKIUQZJ4R/Social+Meat.jpeg',
      catName: 'Meat',
      subCategory: [
        Category(catId: '32', catImage: 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/727bda84826873.5d6906eb29c0a.jpg', catName: 'Fish'),
        Category(catId: '50', catImage: 'https://upload.wikimedia.org/wikipedia/commons/a/ae/Plateau_van_zeevruchten.jpg', catName: 'Sea food'),
        Category(catId: 's33', catImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD5nt4-fuqqwuxT8HmIYJ46edVoil0vM2gRA&usqp=CAU', catName: 'Mutton'),
        Category(catId: 's34', catImage: 'https://carinanorthqualitymeats.com.au/wp-content/uploads/2022/06/7087bc37-2cf6-4be7-bba4-ee727650f9fa-min-scaled-1-scaled.jpeg', catName: 'Chicken'),
      ],
    ),
    Category(
      catId: 'c24',
      catImage:
          'https://www.indiantradebird.com/itb-admin/members/1653/images/0_0b7d40e3.jpg',
      catName: 'Sanitary',
      subCategory: [],
    ),
    Category(
      catId: 'c25',
      catImage: 'https://i.ytimg.com/vi/W8S5GSSucp8/maxresdefault.jpg',
      catName: 'Wood works',
      subCategory: [],
    ),
    Category(
      catId: 'c26',
      catImage:
          'https://2.imimg.com/data2/ND/NP/MY-2461214/pkutxt351domesticproducts-500x500.jpg',
      catName: 'Electrical',
      subCategory: [],
    ),
    Category(
      catId: 'c27',
      catImage:
          'https://5.imimg.com/data5/SELLER/Default/2021/3/RO/NM/DJ/11350374/industrial-paints-500x500.jpg',
      catName: 'Paints',
      subCategory: [],
    ),
    Category(
      catId: 'c28',
      catImage:
          'https://media.istockphoto.com/id/503047952/photo/natural-stone-tiles-marble-granite-samples-palette-stack.jpg?s=612x612&w=0&k=20&c=u4n8G_xouo13QE8OGooVbg1qhmayhLylaaf1enFDZKw=',
      catName: 'Granites & Marbles',
      subCategory: [],
    ),
    Category(
      catId: 'c29',
      catImage:
          'https://nairametrics.com/wp-content/uploads/2015/10/Steel-Industry-Electric-Motors-Industrial-Fan-Blowers-Stiavelli-FTA-3.jpg',
      catName: 'Hardware and Cement',
      subCategory: [],
    ),
    Category(
      catId: 'c50',
      catImage:
          'https://static.vecteezy.com/system/resources/previews/013/223/358/original/wine-logo-template-design-with-wine-glasses-and-bottles-logo-for-nightclub-bar-and-wine-shop-free-vector.jpg',
      catName: 'Wines',
      subCategory: [],
    ),
  ];

  List<Category> serviceCat = [
    Category(
      catId: 'c30',
      catImage:
          'https://media-cdn.tripadvisor.com/media/photo-m/1280/28/5c/c4/4f/the-icon-resort-hotel.jpg',
      catName: 'Lodge & Resorts',
      subCategory: [],
    ),
    Category(
      catId: 'c31',
      catImage:
          'https://img.freepik.com/premium-vector/electronic-service-repair-icon-vector-illustration-design_598213-8646.jpg?w=2000',
      catName: 'Electronics',
      subCategory: [
        Category(
            catId: 's35',
            catImage:
                'https://media.istockphoto.com/id/871717484/vector/mobile-phone-circle-icon-with-long-shadow-flat-design-style.jpg?s=612x612&w=0&k=20&c=a2uvaSdzOnLX__MYNgtBPQWWcIcTO1Ej6GtJOoAB-JE=',
            catName: 'Mobiles Services'),
        Category(
            catId: 's36',
            catImage:
                'https://img.freepik.com/premium-vector/smart-tv-icon_738121-768.jpg?w=2000',
            catName: "TV Services "),
        Category(
            catId: 's37',
            catImage: 'https://m.media-amazon.com/images/I/71f3mSwyQ7L.jpg',
            catName: 'Refrigerator Services'),
        Category(
            catId: 's38',
            catImage:
                'https://www.conserve-energy-future.com/wp-content/uploads/2022/10/cloths-inside-washing-machine.jpg',
            catName: 'Washing Machine Services'),
        Category(
            catId: 's39',
            catImage:
                'https://paytmblogcdn.paytm.com/wp-content/uploads/2021/11/13_electricity_A-complete-guide-to-the-difference-between-air-coolers-vs-air-conditioners-800x500.jpg',
            catName: 'AC & Cooler Services'),
        Category(
            catId: 's40',
            catImage:
                'https://freepngimg.com/save/52249-mixer-grinder-photos-free-download-image/1500x1000',
            catName: 'Grinder & Mixer Services'),
        Category(
            catId: 's41',
            catImage:
                'https://static.vecteezy.com/system/resources/previews/011/064/871/original/rice-cooker-clipart-illustration-simple-red-electric-cooker-flat-design-modern-rice-electric-cooker-sign-icon-rice-cooker-cartoon-clipart-kitchen-appliances-cooking-concept-symbol-vector.jpg',
            catName: 'Rice Cooker Services'),
        Category(
            catId: 's42',
            catImage:
                'https://icons.iconarchive.com/icons/flat-icons.com/flat/512/Clock-icon.png',
            catName: 'Watches Services'),
        Category(
            catId: 's43',
            catImage:
                'https://clipart-library.com/img/1691224.png',
            catName: 'Laptops & Computers Services'),
      ],
    ),
    Category(
      catId: 'c32',
      catImage:
          'https://jamarpower.com/wp-content/uploads/2019/02/San-Diego-Electrical-Services-by-Jamar-Power-Systems-geo.jpg',
      catName: 'Electrical',
      subCategory: [],
    ),
    Category(
      catId: 'c33',
      catImage:
          'https://img.freepik.com/free-photo/muscular-car-service-worker-repairing-vehicle_146671-19605.jpg?w=2000',
      catName: 'Vehicle',
      subCategory: [
        Category(
            catId: 's44',
            catImage:
                'https://www.pngkit.com/png/detail/257-2571314_cycling-cyclist-png-mountain-bike-icon-png.png',
            catName: 'Bicycle Services'),
        Category(
            catId: 's45',
            catImage:
                'https://i.pinimg.com/originals/1d/a2/1d/1da21df8f5b210a1ee3d46aed5c0c0a6.jpg',
            catName: 'Two wheeler Services'),
        Category(
            catId: 's46',
            catImage:
                'https://www.shareicon.net/data/512x512/2017/01/24/875011_tourism_512x512.png',
            catName: 'Three wheeler Services'),
        Category(
            catId: 's47',
            catImage:
                'https://hellaeconnect.com/new_web/uploads/sub_business_segment/4W.jpg',
            catName: 'Four wheeler Services'),
        Category(
            catId: 's48',
            catImage:
                'https://icons.iconarchive.com/icons/icons-land/transport/256/Truck-icon.png',
            catName: 'Heavy vehicles Services'),
      ],
    ),
    Category(
      catId: 'c34',
      catImage:
          'https://static.vecteezy.com/system/resources/previews/003/196/102/original/plumbing-services-symbol-vector.jpg',
      catName: 'Plumbing',
      subCategory: [],
    ),
    Category(
      catId: 'c35',
      catImage:
          'https://img.freepik.com/premium-vector/service-time-vector-logo-design-gear-analog-clock-icon-vector-design_617472-568.jpg?w=2000',
      catName: 'Watches',
      subCategory: [],
    ),
    Category(
      catId: 'c36',
      catImage:
          'https://cdn3.iconfinder.com/data/icons/crafting-occupation-flat/54/Untitled-4-15-512.png',
      catName: 'Gold & Silver smith',
      subCategory: [],
    ),
    Category(
      catId: 'c37',
      catImage:
          'https://cdni.iconscout.com/illustration/premium/thumb/male-cobbler-polishing-shoe-3026732-2527166.png',
      catName: 'Cobbler',
      subCategory: [],
    ),
    Category(
      catId: 'c38',
      catImage:
          'https://buysellgraphic.com/images/graphic_preview/large/carpentry_work_icons_male_worker_various_gestures_isolation_31458.jpg',
      catName: 'Carpentry Works',
      subCategory: [],
    ),
    Category(
      catId: 'c39',
      catImage:
          'https://static.vecteezy.com/system/resources/previews/006/766/774/original/gas-station-in-cartoon-style-free-vector.jpg',
      catName: 'Petrol bunks',
      subCategory: [],
    ),
    Category(
      catId: 'c40',
      catImage:
          'https://img.lovepik.com/free-png/20211211/lovepik-builder-icon-free-vector-illustration-material-png-image_401493322_wh1200.png',
      catName: 'Builders',
      subCategory: [],
    ),
    Category(
      catId: 'c41',
      catImage:
          'https://t4.ftcdn.net/jpg/02/68/07/65/360_F_268076575_pLOQu9E46miEasLS0jWKXsFLNZIk7XSm.jpg',
      catName: 'Welding works',
      subCategory: [],
    ),
    Category(
      catId: 'c42',
      catImage:
          'https://img.freepik.com/premium-vector/glass-works-icon-window-production-technology_8071-35066.jpg?w=2000',
      catName: 'Glass works',
      subCategory: [],
    ),
    Category(
      catId: 'c43',
      catImage:
          'https://cdn5.vectorstock.com/i/1000x1000/27/89/tour-and-travel-logo-icon-vector-26382789.jpg',
      catName: 'Tours & Travel',
      subCategory: [],
    ),
    Category(
      catId: 'c44',
      catImage: 'https://img.freepik.com/free-icon/key_318-203641.jpg?w=2000',
      catName: 'Key maker',
      subCategory: [],
    ),
  ];

  List<Category> get items {
    return [...shopCat];
  }

  List<Category> get catItems {
    return [...serviceCat];
  }

  Category? findById(String id) {
    for (var category in shopCat) {
      if (category.catId == id) {
        return category;
      }
      if (category.subCategory != null) {
        for(var subCategory in category.subCategory!){
          if (subCategory.catId == id) {
            return subCategory;
          }
        }
      }
    }
    return null;
  }

  Category? findBysId(String id) {
    for (var category in serviceCat) {
      if (category.catId == id) {
        return category;
      }
      if (category.subCategory != null) {
        for(var subCategory in category.subCategory!){
          if (subCategory.catId == id) {
            return subCategory;
          }
        }
      }
    }
    return null;
  }
}
