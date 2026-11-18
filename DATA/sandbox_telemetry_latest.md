# sandbox_telemetry_parse — 2026-11-18 17:41:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=914145 lines=2029
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2020 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2020} |
| `chromeGpuPssKb` | {'int': 2020} |
| `chromeOtherPssKb` | {'int': 2020} |
| `chromeProcesses` | {'int': 2020} |
| `chromeProfiles` | {'int': 2020} |
| `chromeRendererMaxPssKb` | {'int': 2020} |
| `chromeRendererPssKb` | {'int': 2020} |
| `chromeRenderers` | {'int': 2020} |
| `chromeTabs` | {'int': 2020} |
| `chromeTabsProbedProfiles` | {'int': 2020} |
| `chromeUtilityPssKb` | {'int': 2020} |
| `desktopPssKb` | {'int': 2020} |
| `hostPssKb` | {'int': 2020} |
| `kind` | {'str': 2020} |
| `memAvailableKb` | {'int': 2020} |
| `memTotalKb` | {'int': 2020} |
| `otherPssKb` | {'int': 2020} |
| `processes` | {'int': 2020} |
| `pssFallbackProcesses` | {'int': 2020} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
