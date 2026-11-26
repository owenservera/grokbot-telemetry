# sandbox_telemetry_parse — 2026-11-26 14:05:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3282581 lines=7270
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7255 |
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
| `chromeBrowserPssKb` | {'int': 7255} |
| `chromeGpuPssKb` | {'int': 7255} |
| `chromeOtherPssKb` | {'int': 7255} |
| `chromeProcesses` | {'int': 7255} |
| `chromeProfiles` | {'int': 7255} |
| `chromeRendererMaxPssKb` | {'int': 7255} |
| `chromeRendererPssKb` | {'int': 7255} |
| `chromeRenderers` | {'int': 7255} |
| `chromeTabs` | {'int': 7255} |
| `chromeTabsProbedProfiles` | {'int': 7255} |
| `chromeUtilityPssKb` | {'int': 7255} |
| `desktopPssKb` | {'int': 7255} |
| `hostPssKb` | {'int': 7255} |
| `kind` | {'str': 7255} |
| `memAvailableKb` | {'int': 7255} |
| `memTotalKb` | {'int': 7255} |
| `otherPssKb` | {'int': 7255} |
| `processes` | {'int': 7255} |
| `pssFallbackProcesses` | {'int': 7255} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
