import 'dart:io';

import 'package:burger_app/pages/widgets/settings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_manager/theme_manager.dart';

class menuWidget extends StatefulWidget {
  const menuWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<menuWidget> createState() => _menuWidgetState();
}

class _menuWidgetState extends State<menuWidget> {
  File? _image;
  String? imagepath;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadImage();
  }

  bool isDark = false;

  final ScrollController scrollController = ScrollController();
  bool isError = false;
  String? langpath;
  String dropdownmenu = "EN";

  var items = [
    "UZ",
    "EN",
  ];

  @override
  Widget build(BuildContext context) {
    List menu = ["Settings", "About"];
    List<Widget> listWidget = const [
      Icon(Icons.settings),
      Icon(Icons.info_outline),
    ];
    List<Widget> listPage = [
      settings(),
      about(),
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Scaffold(
        body: CustomScrollView(
          scrollBehavior: CustomScroll(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: imagepath != null || _image != null
                                ? CircleAvatar(
                                    radius: 40,
                                    backgroundImage: _image != null
                                        ? FileImage(_image!)
                                        : FileImage(File(imagepath!)),
                                    child: InkWell(
                                      onTap: () {
                                        // Future.delayed(Duration(seconds: 2)).then((value) => SaveImage(_image!.path));
                                        PickImage().whenComplete(() =>
                                            Future.delayed(
                                                    Duration(milliseconds: 20))
                                                .then((value) =>
                                                    SaveImage(_image!.path)));
                                      },
                                    ))
                                : CircleAvatar(
                                    radius: 40,
                                    child: IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        // Future.delayed(Duration(seconds: 2)).then((value) => SaveImage(_image!.path));
                                        PickImage().whenComplete(() =>
                                            Future.delayed(
                                                    Duration(milliseconds: 20))
                                                .then((value) =>
                                                    SaveImage(_image!.path)));
                                      },
                                    ),
                                  ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Siroj Boltayev",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "+998999560948",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Spacer(),
                                Text("theme".tr()),
                                IconButton(
                                  onPressed: () {
                                    ThemeManager.of(context)
                                        .setBrightnessPreference(
                                            BrightnessPreference.dark);
                                    if (isDark == false) {
                                      setState(() {
                                        isDark = true;
                                      });
                                    } else {
                                      ThemeManager.of(context)
                                          .setBrightnessPreference(
                                              BrightnessPreference.light);
                                      setState(() {
                                        isDark = false;
                                      });
                                    }
                                  },
                                  icon: Icon(Icons.dark_mode),
                                ),
                                SizedBox(
                                  width: 12,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Spacer(),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, right: 10),
                                  child: DropdownButton(
                                    alignment: AlignmentDirectional.topCenter,
                                    isDense: true,
                                    value: langpath ?? dropdownmenu,
                                    icon: const Icon(
                                      Icons.language,
                                    ),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text("$items "),
                                      );
                                    }).toList(),
                                    onTap: () {
                                    },
                                    onChanged: (newValue) {
                                      setState(() async {
                                        if (newValue == "UZ") {
                                            await context.setLocale(Locale('UZ')) .then((value) async { await context .setLocale( const Locale( "uz")); }) ;
                                        }
                                         else if (newValue == "EN") {
                                          await context.setLocale(Locale('US')) .then((value) async { await context .setLocale( const Locale( "en")); }) ;

                                        }
                                        print(newValue);
                                        dropdownmenu = newValue.toString();
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 2,
                  color: Colors.black12,
                ),
              ]),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: menu.length,
                (
                  BuildContext context,
                  int index,
                ) {
                  return Container(
                    child: ListTile(
                      onTap: () {},
                      leading: listWidget[index],
                      title: Text("${menu[index]}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> PickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final imageTemp = File(image.path);

    setState(() {
      this._image = imageTemp;
    });
  }

  void SaveImage(path) async {
    SharedPreferences saveImage = await SharedPreferences.getInstance();
    saveImage.setString("imagepath", path);
  }

  void LoadImage() async {
    SharedPreferences saveImage = await SharedPreferences.getInstance();
    setState(() {
      this.imagepath = saveImage.getString("imagepath");
    });
  }

  void SaveLang(lang) async {
    SharedPreferences saveLang = await SharedPreferences.getInstance();
    saveLang.setString("langpath", lang);
  }

  void LoadLang() async {
    SharedPreferences saveLang = await SharedPreferences.getInstance();
    setState(() {
      this.langpath = saveLang.getString("langpath")!;
    });
  }
}

class CustomScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

Widget about() {
  return Scaffold();
}

class L10n {
  static final all = [
    const Locale('uz', 'UZ'),
    const Locale('en', 'US'),
  ];
}
