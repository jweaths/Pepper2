read -sp "order number:" order

if [ $order -eq 0 ];
then
    python3 TextToSpeech.py 0 tcps://10.0.0.17:9503 &
    python3 moodCapture.py tcps://10.0.0.17:9503 &
    python3 video.py tcps://10.0.0.17:9503

    read -sp "Please change CSV and AVI file names and then press Enter to continue:" continue

    python3 AnimatedSpeech.py 0 tcps://10.0.0.04:9503 &
    python3 moodCapture.py tcps://10.0.0.04:9503 &
    python3 video.py tcps://10.0.0.04:9503
    fi

if [ $order -eq 1 ]
then
    python3 TextToSpeech.py 1 tcps://10.0.0.17:9503 &
    python3 moodCapture.py tcps://10.0.0.17:9503 &
    python3 video.py tcps://10.0.0.17:9503

    read -sp "Please change CSV and AVI file names and then press Enter to continue:" continue

    python3 AnimatedSpeech.py 1 tcps://10.0.0.04:9503 &
    python3 moodCapture.py tcps://10.0.0.04:9503 &
    python3 video.py tcps://10.0.0.04:9503
    fi

if [ $order -eq 2 ];
then
    python3 AnimatedSpeech.py 0 &
    python3 moodCapture.py &
    python3 video.py

    read -sp "Please change CSV and AVI file names and then press Enter to continue:" continue

    python3 TextToSpeech.py 0 &
    python3 moodCapture.py &
    python3 video.py
    fi

if [ $order -eq 3 ];
then
    python3 AnimatedSpeech.py 0 &
    python3 moodCapture.py &
    python3 video.py

    read -sp "Please change CSV and AVI file names and then press Enter to continue:" continue

    python3 TextToSpeech.py 0 &
    python3 moodCapture.py &
    python3 video.py
    fi
