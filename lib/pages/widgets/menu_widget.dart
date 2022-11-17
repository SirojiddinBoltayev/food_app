import 'dart:async';
import 'dart:io';

import 'package:burger_app/pages/widgets/image_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:burger_app/pages/widgets/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:theme_manager/theme_manager.dart';

class menuWidget extends StatefulWidget {
  const menuWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<menuWidget> createState() => _menuWidgetState();
}

class _menuWidgetState extends State<menuWidget> {
  final ImagePicker _picker = ImagePicker();
  late final ImageErrorListener? onBackgroundImageError;
  List<XFile>? _imageFileList;

  void _setImageFileListFromFile(XFile? value) {
    _imageFileList = value == null ? null : <XFile>[value];
  }
late String path;
  dynamic _pickImageError;

  getGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  }
  Future<List<Directory>?>? _externalStorageDirectories;
  final TextEditingController maxWidthController = TextEditingController();
  final TextEditingController maxHeightController = TextEditingController();
  final TextEditingController qualityController = TextEditingController();

  Widget _buildDirectories(
      BuildContext context, AsyncSnapshot<List<Directory>?> snapshot) {
    Text text = const Text('');
    if (snapshot.connectionState == ConnectionState.done) {
      if (snapshot.hasError) {
        text = Text('Error: ${snapshot.error}');
      } else if (snapshot.hasData) {
        final String combined =
        snapshot.data!.map((Directory d) => d.path).join(', ');
        text = Text('paths: $combined');
      } else {
        text = const Text('path unavailable');
      }
    }
    return Padding(padding: const EdgeInsets.all(16.0), child: text);
  }

  void _requestExternalStorageDirectories(StorageDirectory type) {
    setState(() {
      _externalStorageDirectories = getExternalStorageDirectories(type: type);
    });
  }

  Future<void> _onImageButtonPressed(ImageSource source,
      {BuildContext? context, bool isMultiImage = false}) async {
    if (isMultiImage) {
      await _displayPickImageDialog(context!,
          (double? maxWidth, double? maxHeight, int? quality) async {
        try {
          final List<XFile> pickedFileList = await _picker.pickMultiImage(
            maxWidth: maxWidth,
            maxHeight: maxHeight,
            imageQuality: quality,
          );
          setState(() {
            _imageFileList = pickedFileList;
          });
        } catch (e) {
          setState(() {
            _pickImageError = e;
          });
        }
      });
    } else {
      await _displayPickImageDialog(context!,
          (double? maxWidth, double? maxHeight, int? quality) async {
        try {
          final XFile? pickedFile = await _picker.pickImage(
            source: source,
            maxWidth: maxWidth,
            maxHeight: maxHeight,
            imageQuality: quality,
          );
          setState(() {
            _setImageFileListFromFile(pickedFile);
          });
        } catch (e) {
          setState(() {
            _pickImageError = e;
          });
        }
      });
    }
  }

  String? _retrieveDataError;

  @override
  void dispose() {
    maxWidthController.dispose();
    maxHeightController.dispose();
    qualityController.dispose();
    super.dispose();
  }
List<XFile> listItem = [];
List<XFile> itemList = [];
  @override
  Future<void> _displayPickImageDialog(
      BuildContext context, OnPickImageCallback onPick) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add optional parameters'),
            content: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: 'Enter quality if desired'),
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                  child: const Text('PICK'),
                  onPressed: () {
                    final double? width = maxWidthController.text.isNotEmpty
                        ? double.parse(maxWidthController.text)
                        : null;
                    final double? height = maxHeightController.text.isNotEmpty
                        ? double.parse(maxHeightController.text)
                        : null;
                    final int? quality = qualityController.text.isNotEmpty
                        ? int.parse(qualityController.text)
                        : null;
                    onPick(width, height, quality);
                    Navigator.of(context).pop();
                  }),
            ],
          );
        });
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        if (response.files == null) {
          _setImageFileListFromFile(response.file);
        } else {
          _imageFileList = response.files;
        }
      });
    }
  }

  Widget _previewImages() {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_imageFileList != null) {
      return Semantics(
        label: 'image_picker_example_picked_images',
        child: ListView.builder(
          key: UniqueKey(),
          itemBuilder: (BuildContext context, int index) {
            // Why network for web?
            // See https://pub.dev/packages/image_picker#getting-ready-for-the-web-platform
            return Semantics(
              label: 'image_picker_example_picked_image',
              child: kIsWeb
                  ? Image.network(_imageFileList![index].path)
                  : Image.file(
                      File(_imageFileList![index].path),
                      fit: BoxFit.cover,
                    ),
            );
          },
          itemCount: _imageFileList!.length,
        ),
      );
    } else if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return const Text(
        'You have not yet picked an image.',
        textAlign: TextAlign.center,
      );
    }
  }

  Widget _handlePreview() {
    return _previewImages();
  }

  bool isDark = false;

  final ScrollController scrollController = ScrollController();
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    List menu = [
      "Settings",
    ];
    List<Widget> listWidget = const [
      Icon(Icons.settings),
      Icon(Icons.info_outline),
    ];
    // List<Widget> listPage = [
    //   settings(),
    // ];

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
                            // decoration: BoxDecoration(
                            //   image: DecorationImage(
                            //     image: FileImage(File(_imageFileList!.first.path)),
                            //   )
                            // ),
                            child: CircleAvatar(
                              radius: 50,
                              child: !kIsWeb &&
                                      defaultTargetPlatform ==
                                          TargetPlatform.android
                                  ? FutureBuilder<void>(
                                      future: retrieveLostData(),
                                      builder: (BuildContext context,
                                          AsyncSnapshot<void> snapshot) {
                                        switch (snapshot.connectionState) {
                                          case ConnectionState.none:
                                          case ConnectionState.waiting:
                                            return const CircleAvatar();
                                          case ConnectionState.done:
                                            return _imageFileList != null
                                                ? CircleAvatar(
                                                    radius: 100,
                                              backgroundImage: FileImage(
                                                File(_imageFileList!
                                                    .first.path),
                                              ),

                                                    child: InkWell(
                                                      borderRadius: BorderRadius.circular(50),
                                                      onTap: () {
                                                        setState(() {
                                                          for(int i = 0; i < _imageFileList!.length!; i++){
                                                            listItem.add(_imageFileList![i]);
                                                            itemList = new List.from(listItem.reversed);
                                                          }
                                                        });

                                                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> pageView(itemList)));
                                                      },

                                                    ),
                                                  )
                                                : CircleAvatar(
                                                    child: _retrieveDataError ==
                                                            null
                                                        ? Icon(Icons
                                                            .add_a_photo_outlined)
                                                        : Container(),
                                                  );

                                          default:
                                            if (snapshot.hasError) {
                                              return Text(
                                                'Pick image/video error: ${snapshot.error}}',
                                                textAlign: TextAlign.center,
                                              );
                                            } else {
                                              return const Text(
                                                'You have not yet picked an image.',
                                                textAlign: TextAlign.center,
                                              );
                                            }
                                        }
                                      },
                                    )
                                  : _handlePreview(),
                            ),
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
                                Text("Mavzu"),
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
                                Text("Til"),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.language),
                                ),
                                SizedBox(
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
                (BuildContext context, int index) {
                  return Container(
                    child: ListTile(
                      onTap: () {
                        // if (listPage[index] == 0) {
                        _onImageButtonPressed(ImageSource.gallery,
                            context: context);
                        // } else {
                        //   Navigator.of(context).pushReplacement(
                        //       MaterialPageRoute(
                        //           builder: (BuildContext context) =>
                        //               listPage[index]));
                        // }
                      },
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

  Text? _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError!);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }
}

typedef OnPickImageCallback = void Function(
    double? maxWidth, double? maxHeight, int? quality);

class CustomScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
