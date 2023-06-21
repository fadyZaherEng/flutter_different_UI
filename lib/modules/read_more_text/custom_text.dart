import 'package:flutter/material.dart';
import 'package:read_more_text/read_more_text.dart';

class ReadMoreCustomText extends StatelessWidget {
  const ReadMoreCustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read more text demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReadMoreText(
              'This is a very long text to demo the usages of this package\n'
                  'This is a very long text to demo the usages of this package\n'
                  'This is a very long text to demo the usages of this package\n'
                  'This is a very long text to demo the usages of this package',
              numLines: 2,
              readLessText: 'Read less',
              readMoreText: 'Read more',
              readMoreIcon: const SizedBox.shrink(),
              readLessIcon: const Icon(
                Icons.arrow_upward,
                color: Colors.blue,
              ),
              readMoreAlign: AlignmentDirectional.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              onReadMoreClicked: _onReadMoreClicked,
              readMoreTextStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
              readMoreIconColor: Colors.black,
              // the main text takes in the screen.
              locale: const Locale('en'),
            ),
            const SizedBox(height: 16),
            // you can use also ReadMoreText.selectable to use SelectableText
            // instead of Text widget.
            // you will need to wrap the widget with a `TextSelectionTheme` if
            // you want to customize the color of the selection area.
            TextSelectionTheme(
              data: const TextSelectionThemeData(
                selectionColor: Colors.amber,
              ),
              child: ReadMoreText.selectable(
                // This is the main or contents text you needs to specify.
                'This is a very long text to demo the usages of this package\n'
                    'This is a very long text to demo the usages of this package\n'
                    'This is a very long text to demo the usages of this package\n'
                    'This is a very long text to demo the usages of this package',
                numLines: 2,
                readLessText: 'Read less',
                readMoreText: 'Read more',
                readMoreIcon: const SizedBox.shrink(),
                readLessIcon: const Icon(
                  Icons.arrow_upward,
                  color: Colors.blue,
                ),
                readMoreAlign: AlignmentDirectional.center,
                // The main or content text style.
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                // Handler to when the user clicks on read more/less.
                onReadMoreClicked: _onReadMoreClicked,
                // Specify the read more/less text style.
                readMoreTextStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
                readMoreIconColor: Colors.black,
                // The locale of the main content text.
                locale: const Locale('en'),
                // you can specify custom toolbar options to the selectable text
                // widget.
                toolbarOptions: const ToolbarOptions(
                  copy: true,
                  selectAll: true,
                ),
                // specify whether to show the cursor even when you don't select
                // any text.
                showCursor: true,
                // you can also set the cursor width and height in here
                // those will take effect only when showCursor is true
                cursorHeight: 12,
                cursorWidth: 12,
                // specify the cursor color, it will take effect only when
                // showCursor is true.
                cursorColor: Colors.amber,
                // specify the cursor radius, it will take effect only when
                // showCursor is true.
                cursorRadius: const Radius.circular(12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onReadMoreClicked() {
  }
}
