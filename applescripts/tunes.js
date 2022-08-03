let output = "";
if (Application("Music").running()) {
    const track = Application("Music").currentTrack;
    const artist = track.artist();
    const title = track.name();
    output = `${title} - ${artist}`.substr(0, 50);
}
output;
