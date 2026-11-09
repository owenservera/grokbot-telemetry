# sandbox_telemetry_parse — 2026-11-10 00:49:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=911836 lines=2023
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2014 |
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
| `chromeBrowserPssKb` | {'int': 2014} |
| `chromeGpuPssKb` | {'int': 2014} |
| `chromeOtherPssKb` | {'int': 2014} |
| `chromeProcesses` | {'int': 2014} |
| `chromeProfiles` | {'int': 2014} |
| `chromeRendererMaxPssKb` | {'int': 2014} |
| `chromeRendererPssKb` | {'int': 2014} |
| `chromeRenderers` | {'int': 2014} |
| `chromeTabs` | {'int': 2014} |
| `chromeTabsProbedProfiles` | {'int': 2014} |
| `chromeUtilityPssKb` | {'int': 2014} |
| `desktopPssKb` | {'int': 2014} |
| `hostPssKb` | {'int': 2014} |
| `kind` | {'str': 2014} |
| `memAvailableKb` | {'int': 2014} |
| `memTotalKb` | {'int': 2014} |
| `otherPssKb` | {'int': 2014} |
| `processes` | {'int': 2014} |
| `pssFallbackProcesses` | {'int': 2014} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
