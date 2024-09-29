import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/ui/home_screen/home_cubit.dart';

import '../../misc/loading_overlay.dart';
import '../../misc/util.dart';
import '../../model/weather.dart';
import '../app_screen/app_body_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LoadingOverlay loadingOverlay = LoadingOverlay();

  @override
  void initState() {
    super.initState();
    context.read<AppBodyCubit>().updateBackgroundColor(DateTime.now().hour);
  }

  @override
  void deactivate() {
    loadingOverlay.hide();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocListener<HomeCubit, HomeState>(listener: (context, state) {
          if (state.result == Result.loading) {
            loadingOverlay.show(context);
          } else {
            loadingOverlay.hide();
          }
          if (state.result == Result.error) {
            final msg = state.errorMessage;
            if (msg != null) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  behavior: SnackBarBehavior.floating,
                  duration: const Duration(seconds: 2),
                  content: Text(msg),
                  margin:
                      const EdgeInsets.only(bottom: 70, left: 25, right: 25)));
            }
          }
        }, child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          return RefreshIndicator(
              onRefresh: () async {
                await context.read<HomeCubit>().checkLocationPermission();
              },
              child: ListView(
                children: [WeatherItem(weather: state.weather)],
              ));
          // return Center(child: Text(state.weather == null ? "null" : "not"));
        })));
  }
}

class WeatherItem extends StatelessWidget {
  final Weather? weather;

  const WeatherItem({super.key, this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PlaceInfo(weather: weather),
        TempInfo(weather: weather),
        HourlyStats(weather: weather)
      ],
    );
  }
}

class PlaceInfo extends StatelessWidget {
  final Weather? weather;

  const PlaceInfo({super.key, this.weather});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(text: "${weather?.city ?? ""}\n"),
          TextSpan(text: "${weather?.country ?? ""}\n")
        ]));
  }
}

class TempInfo extends StatelessWidget {
  final Weather? weather;

  const TempInfo({super.key, this.weather});

  @override
  Widget build(BuildContext context) {
    final icon = weather?.currentConditions?.icon;
    final temp = weather?.currentConditions?.temp;
    final feelsLike = weather?.currentConditions?.feelslike;

    return Column(children: [
      if (icon == null)
        const SizedBox(
            width: 20,
            height: 20,
            child:
                Center(child: CircularProgressIndicator(color: Colors.white)))
      else
        Image.asset(
          "assets/weather_icons/${weather?.currentConditions?.icon ?? ""}.png",
          isAntiAlias: true,
        ),
      Text(weather?.currentConditions?.description ?? ""),
      IntrinsicWidth(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(5)),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        const TextSpan(text: "Temperature\n"),
                        if (temp == null)
                          const TextSpan(text: "")
                        else
                          TextSpan(text: "${temp.toString()}°C")
                      ])))),
          Expanded(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(5)),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        const TextSpan(text: "Feels like\n"),
                        if (feelsLike == null)
                          const TextSpan(text: "")
                        else
                          TextSpan(text: "${feelsLike.toString()}°C")
                      ])))),
        ],
      ))
    ]);
  }
}

class HourlyStats extends StatelessWidget {
  final Weather? weather;

  const HourlyStats({super.key, this.weather});

  @override
  Widget build(BuildContext context) {
    final data = weather?.days?.firstOrNull?.hours ?? List.empty();
    return Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints(maxHeight: 100),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.amberAccent, borderRadius: BorderRadius.circular(5)),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: data.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = data[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(Util.formatTime(item.datetime)),
                if (item.icon == null)
                  const SizedBox(
                      width: 20,
                      height: 20,
                      child: Center(
                          child:
                              CircularProgressIndicator(color: Colors.white)))
                else
                  SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset(
                        "assets/weather_icons/${item.icon ?? ""}.png",
                        isAntiAlias: true,
                      )),
                Text("${item.temp}")
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 10,
            );
          },
        ));
  }
}
