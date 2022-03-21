import 'package:flutter/material.dart';
import 'package:phonebook/ui/wigets/label_form/text_form.dart';

class ListPercobaan extends StatefulWidget {
  const ListPercobaan({Key? key}) : super(key: key);

  @override
  State<ListPercobaan> createState() => _ListContactState();
}

class _ListContactState extends State<ListPercobaan> {
  final List<String> _searchable = [
    'CodeLikeIce',
    'FlutterZone',
    'asfasfasf',
  ];

  List<String> names = [];
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    names.addAll(_searchable);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(color: Colors.red))
              : Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: TextForm(
                          obscureText: false,
                          labelTextForm: 'Search contact',
                          prefixIcon: const Icon(Icons.search),
                          fillColor: const Color(0xffBEBEBE),
                          style: const TextStyle(color: Colors.black),
                          labelStyle: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          onChanged: (s) {
                            filterContact(s);
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView.builder(
                          itemCount: names.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 1.0,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                margin: const EdgeInsets.all(9.0),
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Image.asset(
                                        'assets/images/lg_user.png',
                                      ),
                                    ),
                                    // CircleAvatar(
                                    //   child: Text(names[index][0]),
                                    //   backgroundColor: Colors.blue,
                                    //   foregroundColor: Colors.amber,
                                    // ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                    ),
                                    Text(
                                      names[index],
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  void filterContact(String searchTerm) {
    if (searchTerm.isNotEmpty) {
      List<String> tmpList = <String>[];

      _searchable.forEach((element) {
        if (element.toLowerCase().contains(searchTerm)) {
          tmpList.add(element);
        }
      });

      setState(() {
        // isLoading = true;
        names.clear();
        names.addAll(tmpList);
      });
      return;
    } else {
      setState(() {
        // isLoading = false;
        names.clear();
        names.addAll(_searchable);
      });
    }
    // setState(() {
    //   isLoading = false;
    // });
  }
}
