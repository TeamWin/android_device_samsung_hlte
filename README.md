## TWRP device tree for Galaxy Note 3 (Europe & Americas)

Add to `.repo/local_manifests/hlte.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/samsung/hlte" name="android_device_samsung_hlte" remote="TeamWin" revision="android-6.0" />
</manifest>
```

Then run `repo sync` to check it out.

Kernel sources are available at: https://github.com/jcadduono/twrp_kernel_samsung_hlte/tree/twrp-5.0

