import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: Colors.white,
      ),
      child: Wrap(
        children: <Widget>[
          Center(
            child: Container(
              width: 30.0,
              height: 6,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Text(
              "Search",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.music_note),
            title: const Text('Music'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.movie),
            title: const Text('Film'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.sports_basketball),
            title: const Text('Sport'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.wine_bar),
            title: const Text('Bar'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.games_sharp),
            title: const Text('Game'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
