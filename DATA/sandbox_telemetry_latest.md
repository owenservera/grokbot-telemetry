# sandbox_telemetry_parse — 2026-11-19 12:30:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1274582 lines=2826
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2817 |
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
| `chromeBrowserPssKb` | {'int': 2817} |
| `chromeGpuPssKb` | {'int': 2817} |
| `chromeOtherPssKb` | {'int': 2817} |
| `chromeProcesses` | {'int': 2817} |
| `chromeProfiles` | {'int': 2817} |
| `chromeRendererMaxPssKb` | {'int': 2817} |
| `chromeRendererPssKb` | {'int': 2817} |
| `chromeRenderers` | {'int': 2817} |
| `chromeTabs` | {'int': 2817} |
| `chromeTabsProbedProfiles` | {'int': 2817} |
| `chromeUtilityPssKb` | {'int': 2817} |
| `desktopPssKb` | {'int': 2817} |
| `hostPssKb` | {'int': 2817} |
| `kind` | {'str': 2817} |
| `memAvailableKb` | {'int': 2817} |
| `memTotalKb` | {'int': 2817} |
| `otherPssKb` | {'int': 2817} |
| `processes` | {'int': 2817} |
| `pssFallbackProcesses` | {'int': 2817} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
