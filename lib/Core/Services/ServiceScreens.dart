import 'package:flutter/material.dart';

import 'Model/Media.dart';

/// One abstract class per screen area. A [MediaService] optionally provides an
/// implementation; when it doesn't, the shell shows `NotImplemented`.
///
/// Implementations are usually thin — delegate to the shared widgets in
/// `Screen/` wired to the service's own `ServiceApi`.
abstract class HomeScreenView {
  Widget build(BuildContext context);
}

abstract class AnimeScreenView {
  Widget build(BuildContext context);
}

abstract class MangaScreenView {
  Widget build(BuildContext context);
}

abstract class LoginScreenView {
  Widget build(BuildContext context);
}

abstract class SettingsScreenView {
  Widget build(BuildContext context);
}

abstract class SearchScreenView {
  Widget build(BuildContext context, {required bool anime, String? query});
}

abstract class DetailScreenView {
  Widget build(BuildContext context, Media media);
}

abstract class NotificationScreenView {
  Widget build(BuildContext context);
}
