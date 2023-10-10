import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../injection.dart';
import '../../presentation.dart';

class VerseItem extends StatefulWidget {
  const VerseItem({
    super.key,
    this.verseNumber,
    this.verseArabic,
    this.verseTransliteration,
    this.verseTranslation,
    this.audio,
    this.tafsir,
    this.isEnglish = true,
  });

  final String? verseNumber;
  final String? verseArabic;
  final String? verseTransliteration;
  final String? verseTranslation;
  final String? audio;
  final String? tafsir;
  final bool? isEnglish;

  @override
  State<VerseItem> createState() => _VerseItemState();
}

class _VerseItemState extends State<VerseItem> {
  bool isEnglish = true;
  bool isLoading = false;
  final CustomFunctions func = di<CustomFunctions>();
  late AudioPlayer? player;
  PlayerState playerState = PlayerState.stopped;

  void _getTranslation() {
    isEnglish = widget.isEnglish ?? true;
    setState(() {});
  }

  void _handleAudio() async {
    DefaultAudioPlayerManager.instance.stopAllPlayersExcept(widget.verseNumber);

    setState(() => isLoading = true);
    if (playerState == PlayerState.playing) {
      await player?.stop();
    } else {
      await player?.play(
        UrlSource(widget.audio ?? ''),
      );
    }
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    _getTranslation();
    String arabicNumber = func.arabicNumberConverter(widget.verseNumber ?? '0');
    String play = isEnglish ? 'Play' : 'Putar';
    String stop = isEnglish ? 'Stop' : 'Berhenti';
    String downloading = isEnglish ? 'Downloading' : 'Mengunduh';
    String audioTooltip = playerState == PlayerState.playing
        ? stop
        : (isLoading ? downloading : play);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: DefaultStyle.defaultMargin / 2),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                _handleAudio();
              },
              icon: isLoading ? _loadingIndicator() : _audioIcon(),
              tooltip: audioTooltip,
            ),
            Expanded(
              child: SelectableText(
                '${widget.verseArabic ?? ''} ﴿$arabicNumber﴾',
                style: GoogleFonts.scheherazadeNew(
                  fontSize: DefaultStyle.title2FS,
                  height: 2.0,
                ),
                textDirection: TextDirection.rtl,
                textScaleFactor: 1.0,
              ),
            ),
          ],
        ),
        SizedBox(height: DefaultStyle.defaultMargin / 2),
        SelectableText(
          '${widget.verseNumber ?? ''}. ${widget.verseTransliteration ?? ''}',
          style: Theme.of(context).textTheme.labelLarge,
          textScaleFactor: 1.0,
        ),
        SizedBox(height: DefaultStyle.defaultMargin / 2),
        SelectableText(
          '${widget.verseNumber ?? ''}. ${widget.verseTranslation ?? ''}',
          style: Theme.of(context).textTheme.labelMedium,
          textScaleFactor: 1.0,
        ),
        widget.tafsir != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: DefaultStyle.defaultMargin),
                  Text(
                    'Tafsir',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: DefaultStyle.bold,
                        ),
                    textScaleFactor: 1.0,
                  ),
                  SelectableText(
                    widget.tafsir ?? '',
                    style: Theme.of(context).textTheme.labelMedium,
                    textScaleFactor: 1.0,
                  ),
                ],
              )
            : Container(),
      ],
    );
  }

  Widget _audioIcon() {
    return Icon(
      playerState == PlayerState.playing
          ? Icons.stop_rounded
          : (isLoading ? Icons.download_rounded : Icons.play_arrow_rounded),
      color: DefaultStyle.primaryColor,
    );
  }

  Widget _loadingIndicator() {
    return SizedBox(
      width: 16,
      height: 16,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(DefaultStyle.primaryColor),
        strokeWidth: 2.5,
      ),
    );
  }
}
