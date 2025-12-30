sudo apt update
sudo apt install python3-venv

cd ~
python3 -m venv env
source env/bin/activate



pip install --upgrade pip
pip install spotdl



spotdl --version

#link da playlist
spotdl https://open.spotify.com/playlist/6cJ6GeOphJBRG5sg0KmufU

Pasta onde esta as musicas:
spotify_downloads/


🔧 Se aparecer erro com ffmpe

sudo apt install ffmpeg
ffmpeg -version
