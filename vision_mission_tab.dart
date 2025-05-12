class VisionMissionTab extends StatelessWidget {
  const VisionMissionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ExpansionTile(
          title: Text('Vision'),
          children: [Padding(
            padding: EdgeInsets.all(16),
            child: Text('Your vision statement here...'),
          )],
        ),
        ExpansionTile(
          title: Text('Mission'),
          children: [Padding(
            padding: EdgeInsets.all(16),
            child: Text('Your mission statement here...'),
          )],
        ),
      ],
    );
  }
}