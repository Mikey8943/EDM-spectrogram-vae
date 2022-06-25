# EDM-spectrogram-vae
Ah..just follow this


# Datasets
As we have to use spectrograms for this project I have dicided to scape music from the internet.
There are some online music platform that I picked for scaping.
| Site         | Scape Tool  | Data   | Quality    | Difficulty to Scrape |
|:------------:|:-----------:|:------:|:----------:|:--------------------:|
| Youtube      | available(**pytube**/youtube-dl)   | large  | Very good  | Very Easy            |
| Spotify      | none        | large  | Best       | No                   |
| Soundcloud   | available(youtube-dl)   | medium | Flactuate  | Quite Hard           |
| Bandcamp     | available(youtube-dl)   | large  | Best       | Quite Hard           |
From you can see above, Youtube is the easiest of all to scrape thanks to [Pytube](https://github.com/pytube/pytube) library

## data process
1.load your song files
2.open notebook in data preprocessing
3.run preprocessor_AIB_audio.ipynb
4.run AIB_spectrogram_preprocessing(npy).ipynb
