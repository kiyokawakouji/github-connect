import 'package:flutter/material.dart';

class SearchResultView extends StatefulWidget {
  const SearchResultView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SearchResultView> createState() => _SearchResultViewState();
}

class _SearchResultViewState extends State<SearchResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: _SearchBarWidget(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: _SearchBarWidget(),
        ),
      ),
    );
  }

  Widget _SearchBarWidget() {
    return Container(
      margin: const EdgeInsets.all(16),
      child: const TextField(
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search for a project.',
        ),
        // onChanged: (inputString) {
        //   if (inputString.length >= 5) {
        //     _searchRepositories(inputString).then((repositories) {
        //       setState(() {
        //         _repositories = repositories;
        //       });
        //     });
        //   }
        // },
      ),
    );
  }
}
