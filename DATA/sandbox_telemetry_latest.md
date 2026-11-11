# sandbox_telemetry_parse — 2026-11-11 07:26:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1524964 lines=3378
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3369 |
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
| `chromeBrowserPssKb` | {'int': 3369} |
| `chromeGpuPssKb` | {'int': 3369} |
| `chromeOtherPssKb` | {'int': 3369} |
| `chromeProcesses` | {'int': 3369} |
| `chromeProfiles` | {'int': 3369} |
| `chromeRendererMaxPssKb` | {'int': 3369} |
| `chromeRendererPssKb` | {'int': 3369} |
| `chromeRenderers` | {'int': 3369} |
| `chromeTabs` | {'int': 3369} |
| `chromeTabsProbedProfiles` | {'int': 3369} |
| `chromeUtilityPssKb` | {'int': 3369} |
| `desktopPssKb` | {'int': 3369} |
| `hostPssKb` | {'int': 3369} |
| `kind` | {'str': 3369} |
| `memAvailableKb` | {'int': 3369} |
| `memTotalKb` | {'int': 3369} |
| `otherPssKb` | {'int': 3369} |
| `processes` | {'int': 3369} |
| `pssFallbackProcesses` | {'int': 3369} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
