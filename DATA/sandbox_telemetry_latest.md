# sandbox_telemetry_parse — 2026-11-26 15:54:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3318771 lines=7350
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7335 |
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
| `chromeBrowserPssKb` | {'int': 7335} |
| `chromeGpuPssKb` | {'int': 7335} |
| `chromeOtherPssKb` | {'int': 7335} |
| `chromeProcesses` | {'int': 7335} |
| `chromeProfiles` | {'int': 7335} |
| `chromeRendererMaxPssKb` | {'int': 7335} |
| `chromeRendererPssKb` | {'int': 7335} |
| `chromeRenderers` | {'int': 7335} |
| `chromeTabs` | {'int': 7335} |
| `chromeTabsProbedProfiles` | {'int': 7335} |
| `chromeUtilityPssKb` | {'int': 7335} |
| `desktopPssKb` | {'int': 7335} |
| `hostPssKb` | {'int': 7335} |
| `kind` | {'str': 7335} |
| `memAvailableKb` | {'int': 7335} |
| `memTotalKb` | {'int': 7335} |
| `otherPssKb` | {'int': 7335} |
| `processes` | {'int': 7335} |
| `pssFallbackProcesses` | {'int': 7335} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
