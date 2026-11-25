# sandbox_telemetry_parse — 2026-11-25 16:54:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2840188 lines=6292
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6277 |
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
| `chromeBrowserPssKb` | {'int': 6277} |
| `chromeGpuPssKb` | {'int': 6277} |
| `chromeOtherPssKb` | {'int': 6277} |
| `chromeProcesses` | {'int': 6277} |
| `chromeProfiles` | {'int': 6277} |
| `chromeRendererMaxPssKb` | {'int': 6277} |
| `chromeRendererPssKb` | {'int': 6277} |
| `chromeRenderers` | {'int': 6277} |
| `chromeTabs` | {'int': 6277} |
| `chromeTabsProbedProfiles` | {'int': 6277} |
| `chromeUtilityPssKb` | {'int': 6277} |
| `desktopPssKb` | {'int': 6277} |
| `hostPssKb` | {'int': 6277} |
| `kind` | {'str': 6277} |
| `memAvailableKb` | {'int': 6277} |
| `memTotalKb` | {'int': 6277} |
| `otherPssKb` | {'int': 6277} |
| `processes` | {'int': 6277} |
| `pssFallbackProcesses` | {'int': 6277} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
