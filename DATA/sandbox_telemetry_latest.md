# sandbox_telemetry_parse — 2026-11-26 08:10:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3157244 lines=6993
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6978 |
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
| `chromeBrowserPssKb` | {'int': 6978} |
| `chromeGpuPssKb` | {'int': 6978} |
| `chromeOtherPssKb` | {'int': 6978} |
| `chromeProcesses` | {'int': 6978} |
| `chromeProfiles` | {'int': 6978} |
| `chromeRendererMaxPssKb` | {'int': 6978} |
| `chromeRendererPssKb` | {'int': 6978} |
| `chromeRenderers` | {'int': 6978} |
| `chromeTabs` | {'int': 6978} |
| `chromeTabsProbedProfiles` | {'int': 6978} |
| `chromeUtilityPssKb` | {'int': 6978} |
| `desktopPssKb` | {'int': 6978} |
| `hostPssKb` | {'int': 6978} |
| `kind` | {'str': 6978} |
| `memAvailableKb` | {'int': 6978} |
| `memTotalKb` | {'int': 6978} |
| `otherPssKb` | {'int': 6978} |
| `processes` | {'int': 6978} |
| `pssFallbackProcesses` | {'int': 6978} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
