# sandbox_telemetry_parse — 2026-11-27 21:02:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=589684 lines=1310
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1302 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1302} |
| `chromeGpuPssKb` | {'int': 1302} |
| `chromeOtherPssKb` | {'int': 1302} |
| `chromeProcesses` | {'int': 1302} |
| `chromeProfiles` | {'int': 1302} |
| `chromeRendererMaxPssKb` | {'int': 1302} |
| `chromeRendererPssKb` | {'int': 1302} |
| `chromeRenderers` | {'int': 1302} |
| `chromeTabs` | {'int': 1302} |
| `chromeTabsProbedProfiles` | {'int': 1302} |
| `chromeUtilityPssKb` | {'int': 1302} |
| `desktopPssKb` | {'int': 1302} |
| `hostPssKb` | {'int': 1302} |
| `kind` | {'str': 1302} |
| `memAvailableKb` | {'int': 1302} |
| `memTotalKb` | {'int': 1302} |
| `otherPssKb` | {'int': 1302} |
| `processes` | {'int': 1302} |
| `pssFallbackProcesses` | {'int': 1302} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
