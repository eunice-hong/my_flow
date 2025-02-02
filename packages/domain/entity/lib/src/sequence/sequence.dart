import 'package:eunice_entity/sequence.dart';

/// 시퀀스 정보입니다.
class Sequence {
  /// 시퀀스 정보를 생성합니다.
  const Sequence({
    required this.title,
    required this.description,
    required this.movements,
    required this.tags,
    required this.createdAt,
    required this.updatedAt,
  });

  /// 시퀀스 제목	시퀀스의 이름.	“아침 스트레칭”, “코어 운동”
  final String title;

  /// 시퀀스 설명	시퀀스에 대한 추가 설명 또는 참고 사항.	“아침에 몸을 꼼꼼히 풀어보세요.”
  final String description;

  /// 동작 목록	시퀀스에 포함된 동작 목록.
  final List<Movement> movements;

  /// 태그	시퀀스를 검색하거나 분류할 수 있도록 하는 키워드.	“아침 운동”, “스트레칭”, “코어”
  final List<String> tags;

  /// 생성일	시퀀스가 생성된 날짜.
  final int createdAt;

  /// 수정일	시퀀스가 마지막으로 수정된 날짜.
  final int updatedAt;
}
