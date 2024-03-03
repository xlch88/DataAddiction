export DATADIR="/disk/DataAddiction";
export YT_DLP="./yt-dlp";
export FFMPEG="/bin/ffmpeg"

function formatChannelID(){
	id=$1
	
	if [[ ${id:0:1} == "@" ]]; then
		echo $id;
	else
		echo "channel/$id";
	fi
}