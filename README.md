# perl_timestamp_convert

This is a UTC timestamp conversion tool. I made it because I routinely have to convert UTC to specific timezones and I got tired of either A) typing `date` commands or B) going to free websites to do these standard conversions. This script handles those specific conversions for me.

Any timezone can be easily added to the `@TIMEZONES` array. These timezones are currently being converted

- America/Los_Angeles
- Asia/Taipei
- Asia/Hong_Kong
- Australia/Sydney

## Installation

Select the latest release `tar.gz` file by clicking the latest project release. Copy the URL for the `.tar.gz` file and paste it into a `cpanm` command.

**NOTE:** Though it's "bad practice", I haven't pushed any of this to CPAN. I have no plans to push this out to CPAN at this point as it's such a specific use case. Feel free to use/modify/ignore as you see fit.

**Example:**

```sh
cpanm https://github.com/hashref/perl_timestamp_convert/archive/refs/tags/v0.0.1.tar.gz
```

## Usage

Calling with no parameters do the conversion for the current time:

```sh
$ convertUTC
2022-08-14T22:55:09 UTC  | UTC
2022-08-14T15:55:09 PDT  | America/Los_Angeles
2022-08-15T06:55:09 CST  | Asia/Taipei
2022-08-15T06:55:09 HKT  | Asia/Hong_Kong
2022-08-15T08:55:09 AEST | Australia/Sydney
```

Passing in the UTC timestamp to be converted:

```sh
$ convertUTC --timezone 2022-01-01T00:00:00
2022-01-01T00:00:00 UTC  | UTC
2021-12-31T16:00:00 PST  | America/Los_Angeles
2022-01-01T08:00:00 CST  | Asia/Taipei
2022-01-01T08:00:00 HKT  | Asia/Hong_Kong
2022-01-01T11:00:00 AEDT | Australia/Sydney
```

## Ports

I have other versions of this script in other coding languages. This project is one that I use to cut my teeth on when I'm learning another programming language.

- [BASH](https://github.com/hashref/bash_timestamp_convert)
