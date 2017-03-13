# Description

This cookbook will install Ruby for Windows using the [Ruby Installer](https://rubyinstaller.org/).
# Requirements

## Platform:

* windows (= 10)

## Cookbooks:

*No dependencies defined*

# Attributes

* `node["ruby-windows"]["source"]` -  Defaults to `https://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.1.6-x64.exe`.
* `node["ruby-windows"]["SHA256"]` -  Defaults to `F99EDEAA2F192403536EC13070D9BF5936A634F8396ED896757129260169C853`.
* `node["ruby-windows"]["installDir"]` -  Defaults to `C:\\Ruby`.

# Recipes

* ruby-windows::default

# License and Maintainer

Maintainer:: The Authors (<you@example.com>)
Source:: https://github.com/sep/ruby-windows
Issues:: https://github.com/sep/ruby-windows/issues

License:: all_rights
