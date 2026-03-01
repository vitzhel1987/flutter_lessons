part of '../todo_list_page.dart';

class _TodoListEmptyWidget extends StatelessWidget {
  const _TodoListEmptyWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.playlist_add_check_rounded,
            size: 80,
            color: Colors.grey.shade400,
          ),
          const SizedBox(height: 16),
          Text(
            S.of(context).not_todos_yet,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).add_your_first_todo,
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}