rm -rf images/* &&
./tools/draw_plots_downloads.py &&
cd images &&
ffmpeg -f image2 -pattern_type glob -framerate 12 -i '*.png' -s 400x400 foo.mp4 &&
ffmpeg -i foo.mp4 -pix_fmt rgb24 -s qcif -loop 0 -s 400x400 output.gif