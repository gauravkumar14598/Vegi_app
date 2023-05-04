import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  late ProductModel productModel;

  productModels(QueryDocumentSnapshot element) {
    productModel = ProductModel(
        productImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice"));
  }

  // To get All Herbs Product
  List<ProductModel> herbsProductList = [];

  fetchHerbsProductData() async {
    List<ProductModel> newList1 = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();
    for (var element in value.docs) {
      productModels(element);
      newList1.add(productModel);
    }
    herbsProductList = newList1;
    notifyListeners();
  }

  List<ProductModel> get getHerbsProductDataList {
    return herbsProductList;
  }

  // To get All Fresh Fruits
  List<ProductModel> freshFruitsList = [];

  fetchFreshFruitsData() async {
    List<ProductModel> newList2 = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("FreshFruits").get();
    for (var element in value.docs) {
      productModels(element);
      newList2.add(productModel);
    }
    freshFruitsList = newList2;
    notifyListeners();
  }

  List<ProductModel> get getFreshFruitsDataList {
    return freshFruitsList;
  }

  // To get All Dry Fruits
  List<ProductModel> dryFruitsList = [];
  fetchDryFruitsData() async {
    List<ProductModel> newList3 = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("DryFruits").get();
    for (var element in value.docs) {
      productModels(element);
      newList3.add(productModel);
    }
    dryFruitsList = newList3;
    notifyListeners();
  }

  List<ProductModel> get getDryFruitsDataList {
    return dryFruitsList;
  }
}
