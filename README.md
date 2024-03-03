# DataAddiction 『数据成瘾』
这是一个自动化数据采集工具，它将会使用多种语言进行编写。目前架构还比较乱，功能也未完善，请期待后续更新。

~~希望你也有一台和我一样的NAS然后买足梯子流量然后开始你的表演吧。~~

本项目默认您已经学会使用了nodejs的npm包并学会了安装pm2.

## Youtube
使用 yt-dlp + ffmpeg(合并视频和音频和字幕) + pm2(进程托管)，脚本功能说明：
```shell
./youtube-download-channel.sh <频道ID> #下载频道上传的视频
./youtube-download-playlist.sh <频道ID> #下载改频道下所有公开播放列表的视频(如果你在/run/data/<channel>/cookies.txt填写了你的饼干，则可以下载自己的私有列表)
./youtube-download.sh <频道ID> #同时下载上面两个

# pm2进程托管：
vi ecosystem.config.js #编辑你要的频道
pm2 start ecosystem.config.js
# 将会在后台进行下载，使用pm2 ps查看状态，若出现严重错误或已经下载完毕则会出现stopped。
# 使用pm2 logs --raw y2b-xxx查看日志
```
出bug了的解决方案
```shell
rm -rf run/data/*
rm -rf Youtube
```
# Todo List
- YouTube short
- youtube member(会员视频)下载,这个好像有点棘手
- telegram聊天记录
- 推文备份
- QQ消息备份
- 微信消息备份
- pixiv收藏备份
- pixiv收藏画师备份
- fanbox备份
- Chrome历史记录备份
- Termius数据备份
- 数据库功能
- 简易web管理节目
