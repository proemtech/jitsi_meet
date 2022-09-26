/// Class holding the callback functions for conference events
class JitsiMeetListener {
  final Function({Map<dynamic, dynamic>? message})? onConferenceWillJoin;
  final Function({Map<dynamic, dynamic>? message})? onConferenceJoined;
  final Function({Map<dynamic, dynamic>? message})? onConferenceTerminated;
  final Function({Map<dynamic, dynamic>? message})? onPictureInPictureWillEnter;
  final Function({Map<dynamic, dynamic>? message})?
      onPictureInPictureTerminated;
  final Function({Map<dynamic, dynamic>? message})? onWhiteboardClicked;

  final Function(dynamic error)? onError;

  final List<JitsiGenericListener>? genericListeners;

  JitsiMeetListener(
      {this.onConferenceWillJoin,
      this.onConferenceJoined,
      this.onConferenceTerminated,
      this.onPictureInPictureWillEnter,
      this.onPictureInPictureTerminated,
      this.onWhiteboardClicked,
      this.onError,
      this.genericListeners});
}

/// Generic listener
class JitsiGenericListener {
  final String eventName;
  final Function(dynamic message) callback;

  JitsiGenericListener({required this.eventName, required this.callback});
}
