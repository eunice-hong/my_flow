import 'package:eunice_entity/sequence.dart';
import 'package:flutter/material.dart';
import 'package:my_flow/feat/sequence/detail/screen/sequence_detail_screen.dart';

class ExploreSequencePage extends StatefulWidget {
  const ExploreSequencePage({
    super.key,
  });

  @override
  State<ExploreSequencePage> createState() => _ExploreSequencePageState();
}

class _ExploreSequencePageState extends State<ExploreSequencePage> {
  final TextEditingController _searchController = TextEditingController();
  List<Sequence> filteredSequences = [];

  final List<Sequence> sequences = [
    Sequence(
      title: 'Morning Stretch',
      description: 'Start your day with a light stretching routine.',
      movements: [
        const Movement(
          name: 'Neck Stretch',
          target: ['Neck'],
          level: 'Beginner',
          count: 1,
          duration: 30,
          description: 'Gently stretch your neck from side to side.',
          apparatuses: [Apparatus.none],
        ),
        const Movement(
          name: 'Shoulder Rolls',
          target: ['Shoulders'],
          level: 'Beginner',
          count: 10,
          duration: 0,
          description: 'Roll your shoulders forward and backward.',
          apparatuses: [Apparatus.none],
        ),
      ],
      tags: ['Stretching', 'Morning', 'Beginner'],
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    ),

    Sequence(
      title: 'Core Strength',
      description: 'A simple workout to strengthen your core.',
      movements: [
        const Movement(
          name: 'Plank',
          target: ['Core'],
          level: 'Intermediate',
          count: 1,
          duration: 60,
          description: 'Hold a plank position for 60 seconds.',
          apparatuses: [Apparatus.mat],
        ),
        const Movement(
          name: 'Bicycle Crunches',
          target: ['Abs'],
          level: 'Intermediate',
          count: 15,
          duration: 0,
          description: 'Alternate knee-to-elbow crunches.',
          apparatuses: [Apparatus.mat],
        ),
      ],
      tags: ['Core', 'Strength', 'Abs'],
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    ),

    Sequence(
      title: 'Full Body Flow',
      description: 'Engage your whole body with this sequence.',
      movements: [
        const Movement(
          name: 'Jump Squats',
          target: ['Legs', 'Glutes'],
          level: 'Advanced',
          count: 20,
          duration: 0,
          description: 'Explosive squat jumps to engage legs and glutes.',
          apparatuses: [Apparatus.none],
        ),
        const Movement(
          name: 'Push-ups',
          target: ['Chest', 'Arms'],
          level: 'Intermediate',
          count: 15,
          duration: 0,
          description: 'Classic push-ups for upper body strength.',
          apparatuses: [Apparatus.none],
        ),
      ],
      tags: ['Full Body', 'Strength', 'Advanced'],
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    ),

    Sequence(
      title: 'Evening Relaxation',
      description: 'Unwind and relax before bed.',
      movements: [
        const Movement(
          name: 'Deep Breathing',
          target: ['Mind'],
          level: 'Beginner',
          count: 1,
          duration: 60,
          description: 'Practice deep belly breathing.',
          apparatuses: [Apparatus.none],
        ),
        const Movement(
          name: 'Seated Forward Bend',
          target: ['Hamstrings'],
          level: 'Beginner',
          count: 1,
          duration: 30,
          description: 'Stretch your hamstrings while sitting.',
          apparatuses: [Apparatus.mat],
        ),
      ],
      tags: ['Relaxation', 'Stretching', 'Mindfulness'],
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    ),

    Sequence(
      title: 'Leg Day',
      description: 'Build lower body strength with these movements.',
      movements: [
        const Movement(
          name: 'Lunges',
          target: ['Legs'],
          level: 'Intermediate',
          count: 12,
          duration: 0,
          description: 'Alternate lunges for both legs.',
          apparatuses: [Apparatus.none],
        ),
        const Movement(
          name: 'Calf Raises',
          target: ['Calves'],
          level: 'Beginner',
          count: 20,
          duration: 0,
          description: 'Raise your heels to strengthen calves.',
          apparatuses: [Apparatus.none],
        ),
      ],
      tags: ['Legs', 'Strength', 'Calves'],
      createdAt: DateTime.now().millisecondsSinceEpoch,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    ),

    // 추가적인 더미 데이터 5개 생성
    for (int i = 6; i <= 10; i++)
      Sequence(
        title: 'Custom Workout $i',
        description: 'Personalized sequence for various fitness levels.',
        movements: [
          Movement(
            name: 'Dynamic Movement $i-1',
            target: ['Full Body'],
            level: 'Intermediate',
            count: 10 + i,
            duration: 30 + (i * 5),
            description:
                'Movement $i-1 for improving flexibility and strength.',
            apparatuses: [Apparatus.none],
          ),
          Movement(
            name: 'Strength Hold $i-2',
            target: ['Core'],
            level: 'Advanced',
            count: 1,
            duration: 60 + (i * 10),
            description: 'Hold position for increased endurance.',
            apparatuses: [Apparatus.mat],
          ),
        ],
        tags: ['Fitness', 'Custom', 'Intermediate'],
        createdAt: DateTime.now().millisecondsSinceEpoch,
        updatedAt: DateTime.now().millisecondsSinceEpoch,
      ),
  ];

  @override
  void initState() {
    super.initState();
    filteredSequences = List.from(sequences);
  }

  void _filterSequences(String query) {
    setState(() {
      filteredSequences = sequences
          .where(
            (sequence) =>
                sequence.title.toLowerCase().contains(query.toLowerCase()) ||
                sequence.tags.any(
                  (tag) => tag.toLowerCase().contains(query.toLowerCase()),
                ),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: TextField(
            controller: _searchController,
            style: textTheme.bodyLarge,
            decoration: InputDecoration(
              hintText: "시퀀스 검색...",
              hintStyle: textTheme.bodyLarge,
              prefixIcon: const Icon(Icons.search),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: _filterSequences,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredSequences.length,
            itemBuilder: (context, index) {
              final sequence = filteredSequences[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => SequenceDetailScreen(
                        sequence: sequence,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(width: 1.5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sequence.title,
                        style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        sequence.description,
                        style: textTheme.bodyMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 6,
                        children: sequence.tags
                            .map(
                              (tag) => Chip(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 12,
                                ),
                                label: Text(
                                  tag,
                                  style: textTheme.bodySmall,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
