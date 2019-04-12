# Wireless Access Point Scanner <a href="https://badge.fury.io/rb/waps"><img src="https://badge.fury.io/rb/waps.svg" alt="Gem Version" height="18"></a>

WAPS uses iwlist to scan for wireless access points and convert the output into ruby hash format. Following is the usage of the gem.

## Installation

```
gem install waps
```
Require

```
require 'waps'
```

## Usage

* First Require the gem: ``` require 'waps' ```
* Creating new instance require interface name. Leave it empty if not sure. ``` new_scan = Waps.new('Interface_name')```
* Start Scan. ```results = new_scan.scan``` 
* Get specific field. ``` mac_address = new_scan.get('address') ```

```
require 'waps'

new_scan = Waps.new('')
new_scan.scan
new_scan.output
mac_addresses = new_scan.get('address')
```

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

This project is licensed under the MIT License - see the LICENSE.md file for details
