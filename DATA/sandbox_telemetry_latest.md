# sandbox_telemetry_parse — 2026-11-18 20:10:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=961200 lines=2133
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2124 |
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
| `chromeBrowserPssKb` | {'int': 2124} |
| `chromeGpuPssKb` | {'int': 2124} |
| `chromeOtherPssKb` | {'int': 2124} |
| `chromeProcesses` | {'int': 2124} |
| `chromeProfiles` | {'int': 2124} |
| `chromeRendererMaxPssKb` | {'int': 2124} |
| `chromeRendererPssKb` | {'int': 2124} |
| `chromeRenderers` | {'int': 2124} |
| `chromeTabs` | {'int': 2124} |
| `chromeTabsProbedProfiles` | {'int': 2124} |
| `chromeUtilityPssKb` | {'int': 2124} |
| `desktopPssKb` | {'int': 2124} |
| `hostPssKb` | {'int': 2124} |
| `kind` | {'str': 2124} |
| `memAvailableKb` | {'int': 2124} |
| `memTotalKb` | {'int': 2124} |
| `otherPssKb` | {'int': 2124} |
| `processes` | {'int': 2124} |
| `pssFallbackProcesses` | {'int': 2124} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
