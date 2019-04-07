# Wireless Access Point Scanner - Gem

WAPS uses iwlist to scan for wireless access points and convert the output into ruby hash format. Following is the usage of the gem.

## Installation

```
gem install wasp
```
Require

```
require 'wasp'
```

## Usage

* First Require the gem: ``` require 'wasp'
* Creating new instance require interface name. Leave it empty if not sure. ``` new_scan = Wasp.new('Interface_name')```
* Start Scan. ```results = new_scan.scan``` 
* Get specific field. ``` mac_address = new_scan.get('address') ```

## Response Field

* Address
* SSID
* Signal Level
* Encryption
* Channel
* Frequency
* Quality

## Authors

* **Gurjant Singh** - *Initial work* - [gurjant31](https://github.com/gurjant31)

See also the list of [contributors](https://github.com/gurjant31/waps/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
