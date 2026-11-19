# sandbox_telemetry_parse — 2026-11-19 11:43:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1256495 lines=2786
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2777 |
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
| `chromeBrowserPssKb` | {'int': 2777} |
| `chromeGpuPssKb` | {'int': 2777} |
| `chromeOtherPssKb` | {'int': 2777} |
| `chromeProcesses` | {'int': 2777} |
| `chromeProfiles` | {'int': 2777} |
| `chromeRendererMaxPssKb` | {'int': 2777} |
| `chromeRendererPssKb` | {'int': 2777} |
| `chromeRenderers` | {'int': 2777} |
| `chromeTabs` | {'int': 2777} |
| `chromeTabsProbedProfiles` | {'int': 2777} |
| `chromeUtilityPssKb` | {'int': 2777} |
| `desktopPssKb` | {'int': 2777} |
| `hostPssKb` | {'int': 2777} |
| `kind` | {'str': 2777} |
| `memAvailableKb` | {'int': 2777} |
| `memTotalKb` | {'int': 2777} |
| `otherPssKb` | {'int': 2777} |
| `processes` | {'int': 2777} |
| `pssFallbackProcesses` | {'int': 2777} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
