## TWRP device tree for Samsung Galaxy Note 3 (Europe & Americas)
## hlte, hltespr, hltexx

Add to `.repo/local_manifests/hlte.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="ripee/twrp_android_device_samsung_hlte" path="device/samsung/hlte" remote="github" revision="android-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_hlte-eng
mka recoveryimage
```

Kernel source: https://github.com/LineageOS/android_kernel_samsung_msm8974/tree/cm-14.1
