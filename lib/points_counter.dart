import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_state.dart';

class PointsCounter extends StatelessWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        CustomButton(
                          onPressed: () => BlocProvider.of<CounterCubit>(context).teamIncreamnt(team: 'A', pointsNumber: 1),
                          pointNumber: 1,
                        ),
                        CustomButton(
                          onPressed: () => BlocProvider.of<CounterCubit>(context).teamIncreamnt(team: 'A', pointsNumber: 2),
                          pointNumber: 2,
                        ),
                        CustomButton(
                          onPressed: () => BlocProvider.of<CounterCubit>(context).teamIncreamnt(team: 'A', pointsNumber: 3),
                          pointNumber: 3,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        CustomButton(
                          onPressed: () => BlocProvider.of<CounterCubit>(context).teamIncreamnt(team: 'B', pointsNumber: 1),
                          pointNumber: 1,
                        ),
                        CustomButton(
                          onPressed: () => BlocProvider.of<CounterCubit>(context).teamIncreamnt(team: 'B', pointsNumber: 2),
                          pointNumber: 2,
                        ),
                        CustomButton(
                          onPressed: () => BlocProvider.of<CounterCubit>(context).teamIncreamnt(team: 'B', pointsNumber: 3),
                          pointNumber: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetPoints();
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
