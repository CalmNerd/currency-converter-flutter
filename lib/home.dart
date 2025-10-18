import 'package:flutter/material.dart';

class StatefulHome extends StatefulWidget {
  const StatefulHome({super.key});
  @override
  State createState() => _StatefulHomeState();
}

class _StatefulHomeState extends State<StatefulHome> {
  double result = 0;
  final TextEditingController amountController = TextEditingController();

  // Add this reusable button style for dropdown items
  final dropdownItemStyle = ButtonStyle(
    foregroundColor: WidgetStateProperty.all(Colors.blue),
  );

  String? selectedCurrency;

  final focusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  final enabledBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: const Color.fromARGB(255, 155, 200, 236),
      style: BorderStyle.solid,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'Currency Converter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight:
                MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top,
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue[100]!),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue[100]!,
                  blurRadius: 10,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      'Enter the amount',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                    TextField(
                      controller: amountController,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.money),
                        prefixIconColor: Colors.blue,
                        prefixIconConstraints: BoxConstraints(minWidth: 40),
                        focusedBorder: focusedBorder,
                        enabledBorder: enabledBorder,
                        // errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        // focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        // disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        // errorText: 'Amount is required',
                        // errorStyle: TextStyle(color: Colors.red),
                        // errorMaxLines: 2,
                        labelText: 'Amount',
                        labelStyle: TextStyle(color: Colors.blue),
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      'Choose the currency',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                    DropdownMenu(
                      width: MediaQuery.of(context).size.width,
                      hintText: 'Select an option',
                      focusNode: FocusNode(),
                      requestFocusOnTap: true,
                      // helperText: 'Select an option',
                      initialSelection: selectedCurrency,
                      onSelected: (value) =>
                          setState(() => selectedCurrency = value),
                      dropdownMenuEntries: [
                        DropdownMenuEntry(
                          value: '0.01127',
                          label: 'USD',
                          style: ButtonStyle(
                            foregroundColor: WidgetStateProperty.all(
                              Colors.blue,
                            ),
                          ),
                        ),
                        DropdownMenuEntry(
                          value: '0.00975',
                          label: 'EUR',
                          style: dropdownItemStyle,
                        ),
                        DropdownMenuEntry(
                          value: '0.00846',
                          label: 'GBP',
                          style: dropdownItemStyle,
                        ),
                        DropdownMenuEntry(
                          value: '1.7111',
                          label: 'JPY',
                          style: dropdownItemStyle,
                        ),
                        DropdownMenuEntry(
                          value: '16.038',
                          label: 'KRW',
                          style: dropdownItemStyle,
                        ),
                        DropdownMenuEntry(
                          value: '0.2105',
                          label: 'MXN',
                          style: dropdownItemStyle,
                        ),
                        DropdownMenuEntry(
                          value: '0.0193',
                          label: 'NZD',
                          style: dropdownItemStyle,
                        ),
                        DropdownMenuEntry(
                          value: '0.9209',
                          label: 'RUB',
                          style: dropdownItemStyle,
                        ),
                        DropdownMenuEntry(
                          value: '0.0426',
                          label: 'SAR',
                          style: dropdownItemStyle,
                        ),
                        DropdownMenuEntry(
                          value: '0.1074',
                          label: 'SEK',
                          style: dropdownItemStyle,
                        ),
                        DropdownMenuEntry(
                          value: '0.0147',
                          label: 'SGD',
                          style: dropdownItemStyle,
                        ),
                      ],
                      textStyle: TextStyle(color: Colors.blue),
                      inputDecorationTheme: InputDecorationTheme(
                        hintStyle: TextStyle(color: Colors.blue),
                        enabledBorder: enabledBorder,
                        focusedBorder: focusedBorder,
                      ),
                      menuStyle: MenuStyle(
                        maximumSize: WidgetStateProperty.all(
                          Size(MediaQuery.of(context).size.width * 0.88, 200),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          Colors.blue[50],
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Result',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      result.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result =
                            double.parse(amountController.text) *
                            double.parse(selectedCurrency!);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Convert',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text(
                      'Note: Exchange rates for reference only',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// takeaway:
// 1. Container is used to wrap a widget and add a margin or padding or decoration or another widget.

// 2. Column is used to display a list of widgets in a column in its children property.

// 3. Row is used to display a list of widgets in a row in its children property.

// 4. "decoration" and "style" both relate to the visual appearance of widgets, but they address different aspects.
//     Key Differences Summarized:
//     -Scope: Decoration handles the outer visual container and background of a widget, while Style handles the inner content's appearance.
//     -Application: Decoration is typically used with widgets like Container or DecoratedBox, while Style is used with widgets like Text or various button widgets.
//     -Purpose: Decoration shapes and adorns the widget itself, while Style dictates how the widget's content (like text) looks.

// 5. Labels are used to display text in a TextField. there are different syntax for it:
//     - label: Text('Currency', style: TextStyle(color: Colors.blue)),  (as a widget)
//     or
//     - labelText: 'Currency',
//     - labelStyle: TextStyle(color: Colors.blue),

//     - hintText: 'Select an option',
//     - hintStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),

//      Hint text is as a placeholder for the input so if the user doesn't enter anything, the hint text will be displayed otherwise it will be replaced by the input text.
//      While label first displayed as placeholder but on clicking the input field it becomes the label text.

// 6. We can store a widget in a variable to initialize it once and reuse it wherever needed. example see abover border initialization.
// 7. in the build function try to keep only variables and widget tree and avoid to have any expensive calculations or operations.

        

