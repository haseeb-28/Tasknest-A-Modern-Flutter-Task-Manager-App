import '../main.dart';
import '../models/task_model.dart';

class TaskService {
  String get _userId => supabase.auth.currentUser!.id;

  Stream<List<TaskModel>> getTasksStream() {
    return supabase
        .from('tasks')
        .stream(primaryKey: ['id'])
        .eq('user_id', _userId)
        .order('created_at', ascending: false)
        .map((data) =>
            data.map((row) => TaskModel.fromMap(row)).toList());
  }

  Future<void> addTask(TaskModel task) async {
    try {
      await supabase.from('tasks').insert(task.toMap());
    } catch (e) {
      throw 'Failed to add task. Please try again.';
    }
  }

  Future<void> updateTask(TaskModel task) async {
    try {
      await supabase
          .from('tasks')
          .update(task.toMap())
          .eq('id', task.id);
    } catch (e) {
      throw 'Failed to update task. Please try again.';
    }
  }

  Future<void> deleteTask(String taskId) async {
    try {
      await supabase.from('tasks').delete().eq('id', taskId);
    } catch (e) {
      throw 'Failed to delete task. Please try again.';
    }
  }

  Future<void> toggleTaskStatus(TaskModel task) async {
    final newStatus = task.status == TaskStatus.completed
        ? TaskStatus.pending
        : TaskStatus.completed;
    await updateTask(task.copyWith(status: newStatus));
  }
}