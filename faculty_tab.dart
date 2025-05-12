class FacultyTab extends StatelessWidget {
  const FacultyTab({super.key});

  final List<Map<String, String>> faculty = const [
    {'name': 'Prof. Dr. Dhananjay Kalbande', 'role': 'Head Of Department'},
    {'name': 'Prof. Dr. Pooja Raundale', 'role': 'Professor'},
    // Add all other faculty members
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
    itemCount: faculty.length,
    itemBuilder: (context, index) => ExpansionTile(
    title: Text(faculty[index]['name']!,
    children: [ListTile(title: Text(faculty[index]['role']!))],
    ),
    );
  }
}