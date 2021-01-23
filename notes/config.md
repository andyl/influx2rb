# Config Design

## Notes

- config at `~/.influxdbv2/configs`
- in TOML format

payload: url, token, org, active

use the HIRB gem to output a table

## CLI

| edit      | invokes $EDITOR            |
| list      | dumps table of all configs |

## Object

public
- file_path
- keys
- payload(key)

private
- read
- init
