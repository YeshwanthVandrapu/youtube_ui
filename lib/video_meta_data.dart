import 'package:flutter/material.dart';

class VideoMetaData extends StatefulWidget {
  const VideoMetaData({super.key});

  @override
  State<VideoMetaData> createState() => _VideoMetaDataState();
}

class _VideoMetaDataState extends State<VideoMetaData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "Learn GO Fast: Full Tutorial",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ListTile(
            leading: Container(
              width: 120,
              height: 120,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                'https://picsum.photos/seed/picsum/200/300',
                fit: BoxFit.cover,
              ),
            ),
            title: const Text(
              'Alex Mux',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            subtitle: const Text(
              '12.4K Subcribes',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 51, 51, 51),
                backgroundColor:
                    const Color.fromARGB(255, 199, 199, 199), // foreground
              ),
              onPressed: () {},
              child: Text('Join'),
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: Placeholder(),
        ),
      ],
    );
  }
}
