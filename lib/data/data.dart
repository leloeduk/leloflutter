import 'package:leloflutter/models/user.dart';

class Data {
  final List<User> users = [
    User(
      name: 'Alice Martin',
      email: 'alice@email.com',
      image:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100&q=80',
      isOnline: false,
    ),
    User(
      name: 'Bob Wilson',
      email: 'bob@email.com',
      image:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=100&q=80',
      isOnline: false,
    ),
    User(
      name: 'Carol Davis',
      email: 'carol@email.com',
      image:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=100&q=80',
      isOnline: true,
    ),
    User(
      name: 'David Brown',
      email: 'david@email.com',
      image:
          'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100&q=80',
      isOnline: true,
    ),
    User(
      name: 'Emma Johnson',
      email: 'emma@email.com',
      image:
          'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?w=100&q=80',
      isOnline: false,
    ),
    User(
      name: 'Frank Miller',
      email: 'frank@email.com',
      image:
          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=100&q=80',
      isOnline: false,
    ),
  ];
}
