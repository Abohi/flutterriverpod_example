import 'package:flutter/material.dart';

@immutable
class AddPriceModel{
  String expense,date,category,sub_category;
  AddPriceModel({this.expense,this.date,this.category,this.sub_category});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is AddPriceModel && o.expense == expense && o.date == date && o.category==category && o.sub_category==sub_category;
  }

  @override
  int get hashCode => expense.hashCode ^ date.hashCode ^ category.hashCode ^ sub_category.hashCode;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['expense'] = this.expense;
    data['date'] = this.date;
    data['category'] = this.category;
    data['sub_category'] = this.sub_category;
    return data;
  }
}