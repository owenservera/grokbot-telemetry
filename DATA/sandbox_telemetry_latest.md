# sandbox_telemetry_parse — 2026-11-20 18:57:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1845297 lines=4091
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4078 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4078} |
| `chromeGpuPssKb` | {'int': 4078} |
| `chromeOtherPssKb` | {'int': 4078} |
| `chromeProcesses` | {'int': 4078} |
| `chromeProfiles` | {'int': 4078} |
| `chromeRendererMaxPssKb` | {'int': 4078} |
| `chromeRendererPssKb` | {'int': 4078} |
| `chromeRenderers` | {'int': 4078} |
| `chromeTabs` | {'int': 4078} |
| `chromeTabsProbedProfiles` | {'int': 4078} |
| `chromeUtilityPssKb` | {'int': 4078} |
| `desktopPssKb` | {'int': 4078} |
| `hostPssKb` | {'int': 4078} |
| `kind` | {'str': 4078} |
| `memAvailableKb` | {'int': 4078} |
| `memTotalKb` | {'int': 4078} |
| `otherPssKb` | {'int': 4078} |
| `processes` | {'int': 4078} |
| `pssFallbackProcesses` | {'int': 4078} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
