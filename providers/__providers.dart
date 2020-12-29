
//Dispose of the provider,when there is no data to listen to anymore.
//The chained generic method called family,accepts two parameter,the first being the return type,while the second is the model/passed to be passed to the provider.
final addPriceFutureProvider = FutureProvider.autoDispose.family<bool,AddExpenseModel>((ref,addPriceModel) async{
  String accessToken=ref.watch(getAccessTokenFromSharedPref).data.value;
  bool result = await PriceApi().addPrice(accessToken, addPriceModel);
  return result;
});

