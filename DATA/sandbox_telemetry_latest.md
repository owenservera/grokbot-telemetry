# sandbox_telemetry_parse — 2026-11-24 04:03:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2121909 lines=4704
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4689 |
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
| `chromeBrowserPssKb` | {'int': 4689} |
| `chromeGpuPssKb` | {'int': 4689} |
| `chromeOtherPssKb` | {'int': 4689} |
| `chromeProcesses` | {'int': 4689} |
| `chromeProfiles` | {'int': 4689} |
| `chromeRendererMaxPssKb` | {'int': 4689} |
| `chromeRendererPssKb` | {'int': 4689} |
| `chromeRenderers` | {'int': 4689} |
| `chromeTabs` | {'int': 4689} |
| `chromeTabsProbedProfiles` | {'int': 4689} |
| `chromeUtilityPssKb` | {'int': 4689} |
| `desktopPssKb` | {'int': 4689} |
| `hostPssKb` | {'int': 4689} |
| `kind` | {'str': 4689} |
| `memAvailableKb` | {'int': 4689} |
| `memTotalKb` | {'int': 4689} |
| `otherPssKb` | {'int': 4689} |
| `processes` | {'int': 4689} |
| `pssFallbackProcesses` | {'int': 4689} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
