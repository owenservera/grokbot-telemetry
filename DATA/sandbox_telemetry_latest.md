# sandbox_telemetry_parse — 2026-11-25 03:27:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2572463 lines=5700
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5685 |
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
| `chromeBrowserPssKb` | {'int': 5685} |
| `chromeGpuPssKb` | {'int': 5685} |
| `chromeOtherPssKb` | {'int': 5685} |
| `chromeProcesses` | {'int': 5685} |
| `chromeProfiles` | {'int': 5685} |
| `chromeRendererMaxPssKb` | {'int': 5685} |
| `chromeRendererPssKb` | {'int': 5685} |
| `chromeRenderers` | {'int': 5685} |
| `chromeTabs` | {'int': 5685} |
| `chromeTabsProbedProfiles` | {'int': 5685} |
| `chromeUtilityPssKb` | {'int': 5685} |
| `desktopPssKb` | {'int': 5685} |
| `hostPssKb` | {'int': 5685} |
| `kind` | {'str': 5685} |
| `memAvailableKb` | {'int': 5685} |
| `memTotalKb` | {'int': 5685} |
| `otherPssKb` | {'int': 5685} |
| `processes` | {'int': 5685} |
| `pssFallbackProcesses` | {'int': 5685} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
