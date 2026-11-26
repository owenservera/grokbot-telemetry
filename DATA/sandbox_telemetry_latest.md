# sandbox_telemetry_parse — 2026-11-26 11:01:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3223330 lines=7139
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7124 |
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
| `chromeBrowserPssKb` | {'int': 7124} |
| `chromeGpuPssKb` | {'int': 7124} |
| `chromeOtherPssKb` | {'int': 7124} |
| `chromeProcesses` | {'int': 7124} |
| `chromeProfiles` | {'int': 7124} |
| `chromeRendererMaxPssKb` | {'int': 7124} |
| `chromeRendererPssKb` | {'int': 7124} |
| `chromeRenderers` | {'int': 7124} |
| `chromeTabs` | {'int': 7124} |
| `chromeTabsProbedProfiles` | {'int': 7124} |
| `chromeUtilityPssKb` | {'int': 7124} |
| `desktopPssKb` | {'int': 7124} |
| `hostPssKb` | {'int': 7124} |
| `kind` | {'str': 7124} |
| `memAvailableKb` | {'int': 7124} |
| `memTotalKb` | {'int': 7124} |
| `otherPssKb` | {'int': 7124} |
| `processes` | {'int': 7124} |
| `pssFallbackProcesses` | {'int': 7124} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
