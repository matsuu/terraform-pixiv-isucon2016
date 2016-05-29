# terraform-pixiv-isucon2016

## Overview

Pixivさんの[社内ISUCON2016](https://github.com/catatsuy/private-isu)をスポットインスタンスで構築するためのTerraform configuration files

## Usage

- IAMでPowerUsersを作成する
- variables.tfを適宜修正する

```
terraform plan
terraform apply
```

## License

MPL-2.0

## References

- [ISUCON6出題チームが社内ISUCONを開催！AMIも公開！！ - pixiv inside](http://inside.pixiv.net/entry/2016/05/18/115206)
- [catatsuy/private-isu](https://github.com/catatsuy/private-isu)
- [社内ISUCON 当日マニュアル](https://github.com/catatsuy/private-isu/blob/master/manual.md)

## TODO

- AvailabilityZoneを決められるようにする
  - スポットインスタンスの価格がAZによって異なるため
