String timeAgo(int epochSeconds) {
  if (epochSeconds <= 0) return '';
  final date = DateTime.fromMillisecondsSinceEpoch(epochSeconds * 1000);
  if (date.year < 2001) return '';
  final diff = DateTime.now().difference(date);
  if (diff.inDays >= 7) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
  if (diff.inDays >= 2) return '${diff.inDays} days ago';
  if (diff.inDays == 1) return '1 day ago';
  if (diff.inHours >= 1) {
    return '${diff.inHours} hour${diff.inHours > 1 ? 's' : ''} ago';
  }
  if (diff.inMinutes >= 1) {
    return '${diff.inMinutes} minute${diff.inMinutes > 1 ? 's' : ''} ago';
  }
  return 'Just now';
}
