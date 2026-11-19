# sandbox_telemetry_parse — 2026-11-19 02:59:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1094160 lines=2427
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2418 |
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
| `chromeBrowserPssKb` | {'int': 2418} |
| `chromeGpuPssKb` | {'int': 2418} |
| `chromeOtherPssKb` | {'int': 2418} |
| `chromeProcesses` | {'int': 2418} |
| `chromeProfiles` | {'int': 2418} |
| `chromeRendererMaxPssKb` | {'int': 2418} |
| `chromeRendererPssKb` | {'int': 2418} |
| `chromeRenderers` | {'int': 2418} |
| `chromeTabs` | {'int': 2418} |
| `chromeTabsProbedProfiles` | {'int': 2418} |
| `chromeUtilityPssKb` | {'int': 2418} |
| `desktopPssKb` | {'int': 2418} |
| `hostPssKb` | {'int': 2418} |
| `kind` | {'str': 2418} |
| `memAvailableKb` | {'int': 2418} |
| `memTotalKb` | {'int': 2418} |
| `otherPssKb` | {'int': 2418} |
| `processes` | {'int': 2418} |
| `pssFallbackProcesses` | {'int': 2418} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
