# sandbox_telemetry_parse — 2026-11-09 23:34:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=886971 lines=1968
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1959 |
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
| `chromeBrowserPssKb` | {'int': 1959} |
| `chromeGpuPssKb` | {'int': 1959} |
| `chromeOtherPssKb` | {'int': 1959} |
| `chromeProcesses` | {'int': 1959} |
| `chromeProfiles` | {'int': 1959} |
| `chromeRendererMaxPssKb` | {'int': 1959} |
| `chromeRendererPssKb` | {'int': 1959} |
| `chromeRenderers` | {'int': 1959} |
| `chromeTabs` | {'int': 1959} |
| `chromeTabsProbedProfiles` | {'int': 1959} |
| `chromeUtilityPssKb` | {'int': 1959} |
| `desktopPssKb` | {'int': 1959} |
| `hostPssKb` | {'int': 1959} |
| `kind` | {'str': 1959} |
| `memAvailableKb` | {'int': 1959} |
| `memTotalKb` | {'int': 1959} |
| `otherPssKb` | {'int': 1959} |
| `processes` | {'int': 1959} |
| `pssFallbackProcesses` | {'int': 1959} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
