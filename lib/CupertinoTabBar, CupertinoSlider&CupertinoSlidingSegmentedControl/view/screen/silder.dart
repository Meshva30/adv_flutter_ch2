import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/slider.dart';

SliderProvider? SliderProviderTrue;
SliderProvider? SliderProviderFalse;

class CupertinoSliderScreen extends StatelessWidget {
  const CupertinoSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SliderProviderFalse = Provider.of<SliderProvider>(context, listen: false);
    SliderProviderTrue = Provider.of<SliderProvider>(context, listen: true);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text('Display & Brightess',style: TextStyle(fontSize: 18)),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.chevron_left),
          onPressed: () {},
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoListSection(
                header: Text('APPEARANCE',style: TextStyle(fontSize: 18)),
                children: [
                  CupertinoListTile(
                    title: thememode(),
                  ),
                  CupertinoListTile(
                    title: Text('Automatic',style: TextStyle(fontSize: 18),),
                    trailing: CupertinoSwitch(
                      value: SliderProviderTrue!.isAuto,
                      onChanged: (value) {
                        SliderProviderFalse!.automatic(value);
                      },
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                header: Text('BRIGHTNESS',style: TextStyle(fontSize: 18)),
                footer: Text(
                  'Automatically adapt iPhone display based on ambient lighting conditions to make colors appear consistent in different environments.',
                  style: TextStyle(fontSize: 16),
                ),
                children: [
                  CupertinoListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(CupertinoIcons.sun_min),
                        CupertinoSlider(
                          value: SliderProviderTrue!.rangeslindervalue,
                          onChanged: (value) {
                            SliderProviderFalse!.rangeSliderChangeValue(value);
                          },
                        ),
                        Icon(CupertinoIcons.sun_max_fill)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Text('True Tone',style: TextStyle(fontSize: 18)),
                    trailing: CupertinoSwitch(
                      value: SliderProviderTrue!.istone,
                      onChanged: (value) {
                        SliderProviderFalse!.truetone(value);
                      },
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile(
                    title: Text('Night Shift',style: TextStyle(fontSize: 18)),
                    additionalInfo: Row(
                      children: [
                        Text('Sunset to Sunrise'),
                        Icon(CupertinoIcons.chevron_right)
                      ],
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                children: [
                  CupertinoListTile(
                    title: Text('Auto-Lock',style: TextStyle(fontSize: 18)),
                    additionalInfo: Row(
                      children: [
                        Text('3 Minutes',style: TextStyle(fontSize: 18)),
                        Icon(CupertinoIcons.chevron_right)
                      ],
                    ),
                  ),
                  CupertinoListTile(
                    title: Text('Raise to Wake',style: TextStyle(fontSize: 18)),
                    trailing: CupertinoSwitch(
                      value: SliderProviderTrue!.isWake,
                      onChanged: (value) {
                        SliderProviderFalse!.raisetowake(value);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Padding thememode() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(
              height: 90,
              child: Image.asset('assets/img/bg1.jpg'),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Light'),
            SizedBox(
              height: 5,
            ),
            CupertinoRadio(
              value: Brightness.light,
              groupValue: SliderProviderTrue!.brightness,
              onChanged: (value) {
                SliderProviderFalse!.changeTheme(value ?? Brightness.light);
              },
            )
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 90,
              child: Image.asset('assets/img/bg1.jpg'),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Dark'),
            SizedBox(
              height: 5,
            ),
            CupertinoRadio(
              value: Brightness.dark,
              groupValue: SliderProviderTrue!.brightness,
              onChanged: (value) {
                SliderProviderFalse!.changeTheme(value ?? Brightness.dark);
              },
            )
          ],
        ),
      ],
    ),
  );
}
