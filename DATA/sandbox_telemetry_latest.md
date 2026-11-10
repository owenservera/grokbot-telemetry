# sandbox_telemetry_parse — 2026-11-10 13:49:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1165692 lines=2584
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2575 |
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
| `chromeBrowserPssKb` | {'int': 2575} |
| `chromeGpuPssKb` | {'int': 2575} |
| `chromeOtherPssKb` | {'int': 2575} |
| `chromeProcesses` | {'int': 2575} |
| `chromeProfiles` | {'int': 2575} |
| `chromeRendererMaxPssKb` | {'int': 2575} |
| `chromeRendererPssKb` | {'int': 2575} |
| `chromeRenderers` | {'int': 2575} |
| `chromeTabs` | {'int': 2575} |
| `chromeTabsProbedProfiles` | {'int': 2575} |
| `chromeUtilityPssKb` | {'int': 2575} |
| `desktopPssKb` | {'int': 2575} |
| `hostPssKb` | {'int': 2575} |
| `kind` | {'str': 2575} |
| `memAvailableKb` | {'int': 2575} |
| `memTotalKb` | {'int': 2575} |
| `otherPssKb` | {'int': 2575} |
| `processes` | {'int': 2575} |
| `pssFallbackProcesses` | {'int': 2575} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
