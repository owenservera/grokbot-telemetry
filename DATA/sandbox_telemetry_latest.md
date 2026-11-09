# sandbox_telemetry_parse — 2026-11-09 22:37:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=868875 lines=1928
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1919 |
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
| `chromeBrowserPssKb` | {'int': 1919} |
| `chromeGpuPssKb` | {'int': 1919} |
| `chromeOtherPssKb` | {'int': 1919} |
| `chromeProcesses` | {'int': 1919} |
| `chromeProfiles` | {'int': 1919} |
| `chromeRendererMaxPssKb` | {'int': 1919} |
| `chromeRendererPssKb` | {'int': 1919} |
| `chromeRenderers` | {'int': 1919} |
| `chromeTabs` | {'int': 1919} |
| `chromeTabsProbedProfiles` | {'int': 1919} |
| `chromeUtilityPssKb` | {'int': 1919} |
| `desktopPssKb` | {'int': 1919} |
| `hostPssKb` | {'int': 1919} |
| `kind` | {'str': 1919} |
| `memAvailableKb` | {'int': 1919} |
| `memTotalKb` | {'int': 1919} |
| `otherPssKb` | {'int': 1919} |
| `processes` | {'int': 1919} |
| `pssFallbackProcesses` | {'int': 1919} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
