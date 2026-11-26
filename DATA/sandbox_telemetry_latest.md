# sandbox_telemetry_parse — 2026-11-26 15:11:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3304740 lines=7319
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7304 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 7304} |
| `chromeGpuPssKb` | {'int': 7304} |
| `chromeOtherPssKb` | {'int': 7304} |
| `chromeProcesses` | {'int': 7304} |
| `chromeProfiles` | {'int': 7304} |
| `chromeRendererMaxPssKb` | {'int': 7304} |
| `chromeRendererPssKb` | {'int': 7304} |
| `chromeRenderers` | {'int': 7304} |
| `chromeTabs` | {'int': 7304} |
| `chromeTabsProbedProfiles` | {'int': 7304} |
| `chromeUtilityPssKb` | {'int': 7304} |
| `desktopPssKb` | {'int': 7304} |
| `hostPssKb` | {'int': 7304} |
| `kind` | {'str': 7304} |
| `memAvailableKb` | {'int': 7304} |
| `memTotalKb` | {'int': 7304} |
| `otherPssKb` | {'int': 7304} |
| `processes` | {'int': 7304} |
| `pssFallbackProcesses` | {'int': 7304} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
