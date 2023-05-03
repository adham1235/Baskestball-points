import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piontscounter/cubit/cubit.dart';
import 'package:piontscounter/cubit/state.dart';

class PointsCounter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Counter',
            ),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('Team A',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('${CounterCubit.get(context).teamApoints}',
                          style: TextStyle(
                            fontSize: 90.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: ()
                          {
                            CounterCubit.get(context).Add1Point();
                          },
                          child: Text('Add 1 point',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: ()
                          {
                            CounterCubit.get(context).Add2Point();
                          },
                          child: Text('Add 2 point',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: ()
                          {
                            CounterCubit.get(context).Add3Point();
                          },
                          child: Text('Add 3 point',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1.0,
                      indent: 50.0,
                      endIndent: 40.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('Team B',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('${CounterCubit.get(context).teamBpoints}',
                          style: TextStyle(
                            fontSize: 90.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: ()
                          {
                            CounterCubit.get(context).Add1bPoint();
                          },
                          child: Text('Add 1 point',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: ()
                          {
                            CounterCubit.get(context).Add2bPoint();
                          },
                          child: Text('Add 2 point',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: ()
                          {
                            CounterCubit.get(context).Add3bPoint();
                          },
                          child: Text('Add 3 point',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: ()
                {
                  CounterCubit.get(context).Reset();
                },
                child: Text('Reset',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),),
              ),
            ],
          ),
        );
      },
    );
  }
}
