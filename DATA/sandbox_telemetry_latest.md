# sandbox_telemetry_parse — 2026-11-07 11:08:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=432204 lines=963
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 954 |
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
| `chromeBrowserPssKb` | {'int': 954} |
| `chromeGpuPssKb` | {'int': 954} |
| `chromeOtherPssKb` | {'int': 954} |
| `chromeProcesses` | {'int': 954} |
| `chromeProfiles` | {'int': 954} |
| `chromeRendererMaxPssKb` | {'int': 954} |
| `chromeRendererPssKb` | {'int': 954} |
| `chromeRenderers` | {'int': 954} |
| `chromeTabs` | {'int': 954} |
| `chromeTabsProbedProfiles` | {'int': 954} |
| `chromeUtilityPssKb` | {'int': 954} |
| `desktopPssKb` | {'int': 954} |
| `hostPssKb` | {'int': 954} |
| `kind` | {'str': 954} |
| `memAvailableKb` | {'int': 954} |
| `memTotalKb` | {'int': 954} |
| `otherPssKb` | {'int': 954} |
| `processes` | {'int': 954} |
| `pssFallbackProcesses` | {'int': 954} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
