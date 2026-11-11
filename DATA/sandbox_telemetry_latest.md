# sandbox_telemetry_parse — 2026-11-11 07:46:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1530390 lines=3390
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3381 |
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
| `chromeBrowserPssKb` | {'int': 3381} |
| `chromeGpuPssKb` | {'int': 3381} |
| `chromeOtherPssKb` | {'int': 3381} |
| `chromeProcesses` | {'int': 3381} |
| `chromeProfiles` | {'int': 3381} |
| `chromeRendererMaxPssKb` | {'int': 3381} |
| `chromeRendererPssKb` | {'int': 3381} |
| `chromeRenderers` | {'int': 3381} |
| `chromeTabs` | {'int': 3381} |
| `chromeTabsProbedProfiles` | {'int': 3381} |
| `chromeUtilityPssKb` | {'int': 3381} |
| `desktopPssKb` | {'int': 3381} |
| `hostPssKb` | {'int': 3381} |
| `kind` | {'str': 3381} |
| `memAvailableKb` | {'int': 3381} |
| `memTotalKb` | {'int': 3381} |
| `otherPssKb` | {'int': 3381} |
| `processes` | {'int': 3381} |
| `pssFallbackProcesses` | {'int': 3381} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
