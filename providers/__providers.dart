

final addPriceFutureProvider = FutureProvider.autoDispose.family<bool,AddExpenseModel>((ref,addPriceModel) async{
  String accessToken=ref.watch(getAccessTokenFromSharedPref).data.value;
  bool result = await PriceApi().addPrice(accessToken, addPriceModel);
  return result;
});

