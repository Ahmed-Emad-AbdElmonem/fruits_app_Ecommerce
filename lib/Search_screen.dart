import 'package:ecommerce_fruits_app/Auth/Cubit/search_cubit.dart';
import 'package:ecommerce_fruits_app/Auth/Cubit/search_states.dart';

import 'package:ecommerce_fruits_app/widgets/build_search_product.dart';
import 'package:ecommerce_fruits_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();

    var searchController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => SearchCubit(),
      child: BlocConsumer<SearchCubit, SearchStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor:Colors.white ,
              title: Text('Search',style:TextStyle(color: Colors.black) ,),
            ),
            
            body: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                CustomFormTextField(
                      textInputAction: TextInputAction.search,
                     onSubmitted : (String text) {
                      print('eeeeeeeeeeeeeee');
                        SearchCubit.get(context).search(text);
                      },
                
                      /* onChanged:(String text){
                    SearchCubit.get(context).search(text);
                     }, */
                      controller: searchController,
                      inputType: TextInputType.text,
                      label: 'Search', 
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    if (state is SearchLoadingState)
                     LinearProgressIndicator(),
                    SizedBox(
                      height: 15,
                    ),
                    if (state is SearchSuccessState)
                      Expanded(
                        child: SingleChildScrollView(
                          
                          child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) {
                              return Divider(
                                color: Colors.blueGrey,
                              );
                            },
                            itemCount:
                             SearchCubit.get(context).model!.data!.data.length,
                               // SearchCubit.get(context).model!.data!.data[index],
                            itemBuilder: (BuildContext context, int index) {
                              return 
                              SearchListProduct(
                                
                             SearchCubit.get(context).model!.data!.data[index],
                                 
                                  context);
                              
                             /* SearchListProduct(
                                SearchCubit
                               
                       //   SearchCubit.get(context).model?.data?.data,context);*/
                          },
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
