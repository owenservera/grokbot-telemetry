# sandbox_telemetry_parse — 2026-11-26 10:14:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3205674 lines=7100
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7085 |
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
| `chromeBrowserPssKb` | {'int': 7085} |
| `chromeGpuPssKb` | {'int': 7085} |
| `chromeOtherPssKb` | {'int': 7085} |
| `chromeProcesses` | {'int': 7085} |
| `chromeProfiles` | {'int': 7085} |
| `chromeRendererMaxPssKb` | {'int': 7085} |
| `chromeRendererPssKb` | {'int': 7085} |
| `chromeRenderers` | {'int': 7085} |
| `chromeTabs` | {'int': 7085} |
| `chromeTabsProbedProfiles` | {'int': 7085} |
| `chromeUtilityPssKb` | {'int': 7085} |
| `desktopPssKb` | {'int': 7085} |
| `hostPssKb` | {'int': 7085} |
| `kind` | {'str': 7085} |
| `memAvailableKb` | {'int': 7085} |
| `memTotalKb` | {'int': 7085} |
| `otherPssKb` | {'int': 7085} |
| `processes` | {'int': 7085} |
| `pssFallbackProcesses` | {'int': 7085} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
