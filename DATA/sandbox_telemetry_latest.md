# sandbox_telemetry_parse — 2026-11-12 22:23:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2350989 lines=5203
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5194 |
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
| `chromeBrowserPssKb` | {'int': 5194} |
| `chromeGpuPssKb` | {'int': 5194} |
| `chromeOtherPssKb` | {'int': 5194} |
| `chromeProcesses` | {'int': 5194} |
| `chromeProfiles` | {'int': 5194} |
| `chromeRendererMaxPssKb` | {'int': 5194} |
| `chromeRendererPssKb` | {'int': 5194} |
| `chromeRenderers` | {'int': 5194} |
| `chromeTabs` | {'int': 5194} |
| `chromeTabsProbedProfiles` | {'int': 5194} |
| `chromeUtilityPssKb` | {'int': 5194} |
| `desktopPssKb` | {'int': 5194} |
| `hostPssKb` | {'int': 5194} |
| `kind` | {'str': 5194} |
| `memAvailableKb` | {'int': 5194} |
| `memTotalKb` | {'int': 5194} |
| `otherPssKb` | {'int': 5194} |
| `processes` | {'int': 5194} |
| `pssFallbackProcesses` | {'int': 5194} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
