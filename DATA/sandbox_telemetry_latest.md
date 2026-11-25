# sandbox_telemetry_parse — 2026-11-25 21:27:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2930630 lines=6492
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6477 |
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
| `chromeBrowserPssKb` | {'int': 6477} |
| `chromeGpuPssKb` | {'int': 6477} |
| `chromeOtherPssKb` | {'int': 6477} |
| `chromeProcesses` | {'int': 6477} |
| `chromeProfiles` | {'int': 6477} |
| `chromeRendererMaxPssKb` | {'int': 6477} |
| `chromeRendererPssKb` | {'int': 6477} |
| `chromeRenderers` | {'int': 6477} |
| `chromeTabs` | {'int': 6477} |
| `chromeTabsProbedProfiles` | {'int': 6477} |
| `chromeUtilityPssKb` | {'int': 6477} |
| `desktopPssKb` | {'int': 6477} |
| `hostPssKb` | {'int': 6477} |
| `kind` | {'str': 6477} |
| `memAvailableKb` | {'int': 6477} |
| `memTotalKb` | {'int': 6477} |
| `otherPssKb` | {'int': 6477} |
| `processes` | {'int': 6477} |
| `pssFallbackProcesses` | {'int': 6477} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
