import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/layout/news_app/cubit/cubit.dart';
import 'package:todo_app/layout/news_app/cubit/states.dart';
import 'package:todo_app/shared/component/components.dart';

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      builder: (context, state){
        var list = NewsCubit.get(context).business;
        return articleBuilder(list);
      },
      listener: (context, state){}
    );
  }
}
