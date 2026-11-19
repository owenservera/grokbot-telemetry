# sandbox_telemetry_parse — 2026-11-19 13:44:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1295832 lines=2873
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2864 |
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
| `chromeBrowserPssKb` | {'int': 2864} |
| `chromeGpuPssKb` | {'int': 2864} |
| `chromeOtherPssKb` | {'int': 2864} |
| `chromeProcesses` | {'int': 2864} |
| `chromeProfiles` | {'int': 2864} |
| `chromeRendererMaxPssKb` | {'int': 2864} |
| `chromeRendererPssKb` | {'int': 2864} |
| `chromeRenderers` | {'int': 2864} |
| `chromeTabs` | {'int': 2864} |
| `chromeTabsProbedProfiles` | {'int': 2864} |
| `chromeUtilityPssKb` | {'int': 2864} |
| `desktopPssKb` | {'int': 2864} |
| `hostPssKb` | {'int': 2864} |
| `kind` | {'str': 2864} |
| `memAvailableKb` | {'int': 2864} |
| `memTotalKb` | {'int': 2864} |
| `otherPssKb` | {'int': 2864} |
| `processes` | {'int': 2864} |
| `pssFallbackProcesses` | {'int': 2864} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
