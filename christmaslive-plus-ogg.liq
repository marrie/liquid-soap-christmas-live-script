# Serveur settings
set("harbor.bind_addr","0.0.0.0")

# A playlist

playlist = mksafe(playlist("/home/marrie125/pls/", mode="random"))

# A live source
live = input.harbor("live",port=8000,password="hackme")

# fallback
radio = fallback(track_sensitive=false,
                 [live,playlist])


# output it
output.icecast(%mp3(bitrate=320), radio,mount="/stream",host="ke7zum.tffppodcast.com",port=80,password="hackme",description="whatever happens happens, weather it's a walk through, a music show, or an interview, it's here.",url="http://tffppodcast.com/listen")
output.icecast(%mp3(bitrate=128), radio,mount="/mp3-128",host="ke7zum.tffppodcast.com",port=80,password="hackme",description="whatever happens happens, weather it's a walk through, a music show, or an interview, it's here.",url="http://tffppodcast.com/listen")
output.icecast(%mp3(bitrate=96), radio,mount="/mp3-96",host="ke7zum.tffppodcast.com",port=80,password="hackme",description="whatever happens happens, weather it's a walk through, a music show, or an interview, it's here.",url="http://tffppodcast.com/listen")
output.icecast(%vorbis(quality=1), radio,mount="hq1",host="ke7zum.tffppodcast.com"),port=80,password="hackme",description="whatever happens happens, weather it's a walk through, a music show, or an interview, it's here.",url="http://tffppodcast.com/listen")
