# sandbox_telemetry_parse — 2026-11-19 08:50:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1194076 lines=2648
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2639 |
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
| `chromeBrowserPssKb` | {'int': 2639} |
| `chromeGpuPssKb` | {'int': 2639} |
| `chromeOtherPssKb` | {'int': 2639} |
| `chromeProcesses` | {'int': 2639} |
| `chromeProfiles` | {'int': 2639} |
| `chromeRendererMaxPssKb` | {'int': 2639} |
| `chromeRendererPssKb` | {'int': 2639} |
| `chromeRenderers` | {'int': 2639} |
| `chromeTabs` | {'int': 2639} |
| `chromeTabsProbedProfiles` | {'int': 2639} |
| `chromeUtilityPssKb` | {'int': 2639} |
| `desktopPssKb` | {'int': 2639} |
| `hostPssKb` | {'int': 2639} |
| `kind` | {'str': 2639} |
| `memAvailableKb` | {'int': 2639} |
| `memTotalKb` | {'int': 2639} |
| `otherPssKb` | {'int': 2639} |
| `processes` | {'int': 2639} |
| `pssFallbackProcesses` | {'int': 2639} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
