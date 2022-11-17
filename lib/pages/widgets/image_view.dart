import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Widget pageView(List<XFile>? _imageFileList) {

  return PageView.builder(
    itemBuilder: (context,  index) {
      return _imageFileList != null ?  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:FileImage(File(_imageFileList![index].path),
            ),
          )
        ),
         ) :Container();
    },
    itemCount: _imageFileList?.length, // Can be null
  );
}