import '../database.dart';

class TaskTable extends SupabaseTable<TaskRow> {
  @override
  String get tableName => 'task';

  @override
  TaskRow createRow(Map<String, dynamic> data) => TaskRow(data);
}

class TaskRow extends SupabaseDataRow {
  TaskRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get goalId => getField<int>('goal_id');
  set goalId(int? value) => setField<int>('goal_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get descrpion => getField<String>('descrpion');
  set descrpion(String? value) => setField<String>('descrpion', value);

  bool get complete => getField<bool>('complete')!;
  set complete(bool value) => setField<bool>('complete', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
