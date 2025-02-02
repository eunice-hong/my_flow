import 'package:eunice_entity/sequence.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailySequencePage extends StatelessWidget {
  DailySequencePage({super.key});

  Sequence sequence = const Sequence(
    title: '코어 강화',
    description: '코어를 강화하는 운동입니다.',
    movements: [
      Movement(
        name: '플랭크',
        target: ['복부', '전신'],
        level: '중급',
        count: 10,
        duration: 30,
        description: '자세에 집중하고 코어를 단단히 유지하세요.',
        apparatuses: [Apparatus.mat],
      ),
      Movement(
        name: '런지',
        target: ['하체', '허벅지'],
        level: '초급',
        count: 15,
        duration: 0,
        description: '무릎이 발끝을 넘지 않도록 주의하세요.',
        apparatuses: [Apparatus.none],
      ),
      Movement(
        name: '푸시업',
        target: ['상체', '가슴', '팔'],
        level: '고급',
        count: 12,
        duration: 0,
        description: '어깨가 올라가지 않도록 안정적으로 유지하세요.',
        apparatuses: [Apparatus.mat],
      ),
      Movement(
        name: '사이드 플랭크',
        target: ['복부', '측면 코어'],
        level: '중급',
        count: 10,
        duration: 30,
        description: '골반이 내려가지 않도록 유지하세요.',
        apparatuses: [Apparatus.mat],
      ),
      Movement(
        name: '레그 레이즈',
        target: ['복부', '하체'],
        level: '초급',
        count: 15,
        duration: 0,
        description: '허리가 뜨지 않도록 조절하며 진행하세요.',
        apparatuses: [Apparatus.mat],
      ),
      Movement(
        name: '백 익스텐션',
        target: ['허리', '척추'],
        level: '중급',
        count: 12,
        duration: 0,
        description: '목에 힘을 주지 말고 등을 부드럽게 펴세요.',
        apparatuses: [Apparatus.spineCorrector],
      ),
      Movement(
        name: '로우 로우',
        target: ['등', '어깨'],
        level: '고급',
        count: 15,
        duration: 0,
        description: '견갑골을 모아 등 근육을 활성화하세요.',
        apparatuses: [Apparatus.reformer],
      ),
    ],
    tags: ['코어', '운동', '피트니스'],
    createdAt: 1620000000000,
    updatedAt: 1620000000000,
  );

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sequence.title,
            style:
                textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            sequence.description,
            style: textTheme.bodyMedium?.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            children: sequence.tags
                .map(
                  (tag) => Chip(label: Text(tag, style: textTheme.bodyMedium)),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
          Text(
            '동작 목록',
            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sequence.movements.length,
              itemBuilder: (context, index) {
                final movement = sequence.movements[index];
                return ListTile(
                  title: Text(movement.name, style: textTheme.bodyLarge),
                  subtitle: Text(
                    '${movement.count}회, ${movement.duration}초',
                    style: textTheme.bodyMedium,
                  ),
                  trailing: Text(movement.level, style: textTheme.bodySmall),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '생성일: ${_formatDate(sequence.createdAt)}',
            style: textTheme.bodySmall?.copyWith(color: Colors.grey),
          ),
          Text(
            '수정일: ${_formatDate(sequence.updatedAt)}',
            style: textTheme.bodySmall?.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  String _formatDate(int timestamp) {
    return DateFormat('yyyy-MM-dd')
        .format(DateTime.fromMillisecondsSinceEpoch(timestamp));
  }
}
