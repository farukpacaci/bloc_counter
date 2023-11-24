import "package:flutter/material.dart";
import "package:bloc_counter/core/cubits/counter_cubit.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Cubit"),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    text: count.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                    children: const [
                      TextSpan(
                        text: " times.",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => context.read<CounterCubit>().increment(),
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => context.read<CounterCubit>().decrement(),
                      child: const Icon(Icons.remove),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
