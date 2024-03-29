# WTT: Weaknesses TesTing Framework
	A Framework to Detect Weaknesses in C Programs
[![MIT License](https://img.shields.io/github/license/xiaocong/uiautomator.svg)](http://opensource.org/licenses/MIT)

### This repository provides the framework WTT for testing weaknesses in C programs.

### Requirements

#### Tools
- Flawfinder version 1.31
- AFL version 2.52b
- CMocka version 1.1.5

Firstly, system core dumps must be disabled as with AFL.

```sh
$ echo core|sudo tee /proc/sys/kernel/core_pattern
$ echo performance|sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
```

### Clone the Repository

```sh
$ git clone https://github.com/WeaknessesTestingTool/source.git WTT
$ cd WTT
```
Instrument the main.sh file as the example presented in the File folder.

## Links

- **Website**: https://weaknessestesting.github.io/wtt-page/

- **GitHub**: https://github.com/WeaknessesTesting/wtt

## Author
 -

## License
	WTT is available under the MIT license. See the LICENSE file for more info.
