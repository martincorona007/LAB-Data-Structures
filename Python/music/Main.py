try:
    from pytube import YouTube
    from pytube import Playlist
except Exception as e:
    print("Some Modules are missing {}".format(e))

url="https://www.youtube.com/watch?v=CJlmN4O5Wvo"
ytd= YouTube(url)
print(ytd)
"""
#formats
for x in ytd.streams.all():
    print(x)

"""
#video
#print(ytd.streams.filter(adaptive=True).all())
#audio
#print(ytd.streams.filter(adaptive='mp4').all())