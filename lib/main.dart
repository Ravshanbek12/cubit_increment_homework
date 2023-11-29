import 'package:cubit_increment_homework/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Builder(builder: (BuildContext context) {
        return  Scaffold(
          body: Column(
            children: [
              const SizedBox(height: 150,),
              Center(
                child: Text('${context.read<CounterCubit>().state}'),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              context.read<CounterCubit>().increment();
            },
            child:const Icon(Icons.add),
          ),
        );
      },),
    );
  }
}
