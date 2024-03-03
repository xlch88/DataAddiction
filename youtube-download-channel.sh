. common.sh

function downloadChannel(){
	channel=$(formatChannelID $1)
	
	mkdir -p $DATADIR/run/data/$1
	
	$YT_DLP \
	--ignore-errors \
	--ffmpeg-location $FFMPEG \
	--proxy "http://127.0.0.1:18888/" \
	--no-post-overwrites \
	--geo-bypass \
	--socket-timeout 5 \
	--write-info-json \
	--write-thumbnail \
	--all-subs \
	--embed-sub \
	-f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" \
	--download-archive $DATADIR/run/data/$1/downloaded.txt \
	--cookies $DATADIR/run/data/$1/cookie.txt \
	-o "$DATADIR/Youtube/%(channel)s - %(channel_id)s/%(title)s - %(id)s/%(title)s - %(id)s.%(ext)s" \
	https://www.youtube.com/$channel
}

downloadChannel $1