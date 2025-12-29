// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
    String? id;
    String? name;
    String? description;
    String? category;
    double? price;
    String? currency;
    bool? inStock;
    int? stockQuantity;
    List<String>? images;
    Attributes? attributes;
    final Icon? icon;

    ProductModel({
        this.id,
        this.name,
        this.description,
        this.category,
        this.price,
        this.currency,
        this.inStock,
        this.stockQuantity,
        this.images,
        this.attributes,
        this.icon,
    });

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        category: json["category"],
        price: json["price"]?.toDouble(),
        currency: json["currency"],
        inStock: json["in_stock"],
        stockQuantity: json["stock_quantity"],
        images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
        attributes: json["attributes"] == null ? null : Attributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "category": category,
        "price": price,
        "currency": currency,
        "in_stock": inStock,
        "stock_quantity": stockQuantity,
        "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "attributes": attributes?.toJson(),
    };
}

class Attributes {
    String? color;
    String? batteryLife;
    bool? wireless;

    Attributes({
        this.color,
        this.batteryLife,
        this.wireless,
    });

    factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        color: json["color"],
        batteryLife: json["battery_life"],
        wireless: json["wireless"],
    );

    Map<String, dynamic> toJson() => {
        "color": color,
        "battery_life": batteryLife,
        "wireless": wireless,
    };
}
