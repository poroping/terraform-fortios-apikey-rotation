# terraform-fortios-apikey-rotation

This module will rotate the API key of the defined user.  
You can change the current user key with this module, however any subsequent commands with fail as the key has changed.

## Requirements

| Name | Version |
|------|---------|
| fortios | >= 1.10.1 |

## Providers

| Name | Version |
|------|---------|
| fortios | >= 1.10.1 |
| random | n/a |
| time | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| api\_username | Username of API-User to renew key for. | `string` | n/a | yes |
| rotation\_days | Number of days between key rotations. | `number` | `30` | no |

## Outputs

| Name | Description |
|------|-------------|
| newkey | New API key. |

