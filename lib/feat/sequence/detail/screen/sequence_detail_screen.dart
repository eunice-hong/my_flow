import 'package:eunice_entity/sequence.dart';
import 'package:flutter/material.dart';

class SequenceDetailScreen extends StatelessWidget {
  const SequenceDetailScreen({required this.sequence, super.key});

  final Sequence sequence;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(sequence.title, style: textTheme.titleLarge),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // TODO(eunice-hong): Navigate to edit screen
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // TODO(eunice-hong): Delete sequence logic
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('설명', style: textTheme.titleMedium),
            Text(sequence.description, style: textTheme.bodyMedium),
            const SizedBox(height: 16),
            Text('동작 목록', style: textTheme.titleMedium),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: sequence.movements.length,
                itemBuilder: (context, index) {
                  final movement = sequence.movements[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.fitness_center),
                      title: Text(movement.name, style: textTheme.bodyLarge),
                      subtitle: Text(
                        '${movement.count}회 / ${movement.duration}초',
                        style: textTheme.bodySmall,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Text('태그', style: textTheme.titleMedium),
            Wrap(
              spacing: 8,
              children:
                  sequence.tags.map((tag) => Chip(label: Text(tag))).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
