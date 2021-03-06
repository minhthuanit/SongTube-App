// Flutter
import 'package:flutter/material.dart';

// Internal
import 'package:songtube/internal/screenStateStream.dart';
import 'package:songtube/internal/services/playerService.dart';

// Packages
import 'package:audio_service/audio_service.dart';

class MusicPlayerPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ScreenState>(
      stream: screenStateStream,
      builder: (context, snapshot) {
        final screenState = snapshot.data;
        final state = screenState?.playbackState;
        final processingState =
          state?.processingState ?? AudioProcessingState.none;
        return Container(
          height: processingState != AudioProcessingState.none
            ? kToolbarHeight * 1.15
            : 0
        );
      }
    );
  }
}