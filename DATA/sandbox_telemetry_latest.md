# sandbox_telemetry_parse — 2026-11-20 17:47:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1822227 lines=4040
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4027 |
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
| `chromeBrowserPssKb` | {'int': 4027} |
| `chromeGpuPssKb` | {'int': 4027} |
| `chromeOtherPssKb` | {'int': 4027} |
| `chromeProcesses` | {'int': 4027} |
| `chromeProfiles` | {'int': 4027} |
| `chromeRendererMaxPssKb` | {'int': 4027} |
| `chromeRendererPssKb` | {'int': 4027} |
| `chromeRenderers` | {'int': 4027} |
| `chromeTabs` | {'int': 4027} |
| `chromeTabsProbedProfiles` | {'int': 4027} |
| `chromeUtilityPssKb` | {'int': 4027} |
| `desktopPssKb` | {'int': 4027} |
| `hostPssKb` | {'int': 4027} |
| `kind` | {'str': 4027} |
| `memAvailableKb` | {'int': 4027} |
| `memTotalKb` | {'int': 4027} |
| `otherPssKb` | {'int': 4027} |
| `processes` | {'int': 4027} |
| `pssFallbackProcesses` | {'int': 4027} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
