from pytube import Playlist, YouTube
import os

dl_place: str = "You\path\here"

os.chdir(dl_place)

url_list = []
print("put playlist url here or type 'ok' to exit")
add = '1'
while add != 'ok':
     add = input('Type in url or ok : ')
     if add != 'ok':
          print(f'You put in : {Playlist(add).title}')
          url_list.append(add)
print(url_list)


for i in range(len(url_list)):
     p = Playlist(url_list[i])
     foldername = p.title.translate ({ord(c): "" for c in "!@#$%^&*()[]{};:,./<>?\|`~-=_+"})
     print(f"Playlist Name : {foldername}" )
     for url in p.video_urls:
          try:
               yt = YouTube(url)
          except VideoUnavailable:
               print(f'Video {url} is unavaialable, skipping.')
          else:
               songname = yt.title.replace("/","")
               print(f'Downloading video: {yt.title} {url}')
               stream = yt.streams.get_by_itag(251)
               out_file = stream.download(output_path="./"+foldername)
               base, ext = os.path.splitext(out_file)
               new_file = base + '.mp3'
               os.rename(out_file, new_file)
print("Finish!!!")
