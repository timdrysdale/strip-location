# strip-location
scripts to strip location from jpg and mp4

Exiftool command preserves orientation

## Prerequisites
```
sudo apt-get install ffmpeg #mp4
sudo apt-get install libimage-exiftool-perl #jpg
```

## Usage

### JPG

jpeg stripping is done in place, i.e. destructively.

- drop your pictures into `./jpg` 
- run `./check-location.sh` script. You'll see outuput like this
```
GPS Img Direction Ref           : Magnetic North
GPS Img Direction               : 218
GPS Date Stamp                  : 20xx:xx:xx
GPS Altitude                    : xxx.x m Above Sea Level
GPS Date/Time                   : 20xx:xx:xx xx:xx:xxZ
GPS Latitude                    : xx deg xx' xx.xx" N
GPS Longitude                   : x deg xx' xx.xx3" W
GPS Position                    : xx deg xx' xx.xx" N, x deg xx' xx.xx" W
```

- strip location with `./strip-location.sh`
- then check the location is no longer showing with `./check-location.sh`

You'll not see any output, if the script has worked

### MP4

Almost the same process for mp4, except copies are produced in `./mp4/output`

- drop videos in `./mp4`
- check the location with `./check-location-original.sh`. You'll see output like this:

```
    location        : +xx.xxxx-x.xxxx/
    location-eng    : +xx.xxxx-x.xxxx/
```

- strip location with `./strip-location.sh`
- check the output files no longer show location by running `./check-location-output.sh`

You'll not see any output, if the script has worked


## Sources

[ffmpeg command](https://unix.stackexchange.com/questions/339119/how-to-strip-gps-location-data-from-an-mp4-video-file)
[exiftool command](https://stackoverflow.com/questions/37432580/how-to-remove-exif-data-from-image-but-keep-the-orientation)
