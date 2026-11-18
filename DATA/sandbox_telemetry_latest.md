# sandbox_telemetry_parse — 2026-11-18 18:39:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=929540 lines=2063
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2054 |
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
| `chromeBrowserPssKb` | {'int': 2054} |
| `chromeGpuPssKb` | {'int': 2054} |
| `chromeOtherPssKb` | {'int': 2054} |
| `chromeProcesses` | {'int': 2054} |
| `chromeProfiles` | {'int': 2054} |
| `chromeRendererMaxPssKb` | {'int': 2054} |
| `chromeRendererPssKb` | {'int': 2054} |
| `chromeRenderers` | {'int': 2054} |
| `chromeTabs` | {'int': 2054} |
| `chromeTabsProbedProfiles` | {'int': 2054} |
| `chromeUtilityPssKb` | {'int': 2054} |
| `desktopPssKb` | {'int': 2054} |
| `hostPssKb` | {'int': 2054} |
| `kind` | {'str': 2054} |
| `memAvailableKb` | {'int': 2054} |
| `memTotalKb` | {'int': 2054} |
| `otherPssKb` | {'int': 2054} |
| `processes` | {'int': 2054} |
| `pssFallbackProcesses` | {'int': 2054} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
