# flutterriverpod_example
This repo is about working with restful services, using flutter riverpod. Useful approaches that would make your application scale better.

#What to Know

In this project we made use of series of chained method, provided by the riverpod library,One being:
#The AutDispose:
 This is use to dispose the provider automatically when there is no data to listen to anymore.
#The Family:This is a generic method, that accepts two generic parameter,the first being the return type,while the second is the model/passed to be passed to the provider.
The model to be passed to the provider, is passed at the point, where the provider is called inside our app.

#Consumer:
This is a widget builder, created by the riverpod team, to make room for developers whom are not using hooks within their project, to be able to call riverpod providers in that project.
It gives us couple of method, like the:
#Watch: This method allow us to efficiently call our riverpod provider within our Consumer.