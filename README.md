## TWRP device tree for Samsung Galaxy Note 3 (International & Americas)
## hltexx, hltecan, hltekor, hltespr, hltetmo, hlteusc, hltevzw

Add to `.repo/local_manifests/hlte.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="TeamWin/android_device_qcom_common" path="device/qcom/common" remote="github" revision="android-7.1" />
  <project name="TeamWin/android_device_samsung_hlte" path="device/samsung/hlte" remote="github" revision="android-7.1" />
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
