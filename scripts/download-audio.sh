#! /usr/bin/env bash

while getopts "u:s:" FLAG
do
    case "${FLAG}" in
        u) # Resource URL option
            RSC_URL="$OPTARG"
            ;;
        s) # Playlist start index
            PLAYLIST_START=${OPTARG:-1}
            PLAYLIST_FLAG="true"
            ;;
    esac
done

cd audio

if [ "$PLAYLIST_FLAG" == "true" ];
then
    youtube-dl -x --audio-format mp3 --audio-quality 4 --playlist-start $PLAYLIST_START --rm-cache-dir $RSC_URL
else
    youtube-dl -x --audio-format mp3 --audio-quality 4 --rm-cache-dir $RSC_URL
fi

lastZipFile="$(ls | grep .*\\.zip | sort -V | tail -1)"
audioPart="audio"
extensionPart=".zip"
audioLength=${#audioPart}
extensionLength=${#extensionPart}

if [ -z "$lastZipFile" ];
then
    counter=0
else
    lastZipFileLength=${#lastZipFile}
    counter=${lastZipFile:$audioLength:$(($lastZipFileLength-$audioLength-$extensionLength))}
    counter=$(($counter+1))
fi

zip -r $audioPart$counter$extensionPart *.mp3

rm -f *.mp3

