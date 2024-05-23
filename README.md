# exif-set-date
Set in batch the "Content Create Date" on relevant date tags for Immich compatibility.

### Requirements

Video container format must be `*.mp4`, `*.mov`, `*.avi` or `*.mkv`.

File must contain the `ContentCreateDate` exif tag. You can see it by dragging one of your file on `exiftool(-k).exe`

Example:
```python
ContentCreateDate : 2018:08:22 17:40:20-04:00
```

This script edit the required tags by Immich as per their official code [here](https://github.com/immich-app/immich/blob/e7aa50425c430eb0dd059410ca452f963c2c95d8/server/src/services/metadata.service.ts#L39-L49).

### Disclaimer

This script will delete your original file after it's done.

There's no guarantee this will work with your files so make sure to backup your files prior of using this script. It's probably best to try out first with fewer files.

Tested on video files from an `Apple iPhone 7 11.2.1`.

Can probably be modified to work with pictures as well. Try and edit the line #5.

### Usage

* Download [ExifTool](https://exiftool.org/) and extract it
* Make a copy of `exiftool(-k).exe` in the folder of your choice
* Rename `exiftool(-k).exe` to `exiftool.exe`
* Add `exiftool.exe` to [Windows PATH](https://learn.microsoft.com/en-us/previous-versions/office/developer/sharepoint-2010/ee537574(v=office.14)#to-add-a-path-to-the-path-environment-variable)
* Copy `exif-set-date.bat` to the directory containing your files you want to fix
* Run `exif-set-date.bat` and wait until completion

![image](https://github.com/gravelfreeman/exif-set-date/assets/44218371/f69c5e4d-830b-4ef0-a1e6-48d64ae07ed6)
