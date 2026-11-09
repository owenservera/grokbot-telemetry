# sandbox_telemetry_parse — 2026-11-09 18:41:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=794238 lines=1763
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1754 |
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
| `chromeBrowserPssKb` | {'int': 1754} |
| `chromeGpuPssKb` | {'int': 1754} |
| `chromeOtherPssKb` | {'int': 1754} |
| `chromeProcesses` | {'int': 1754} |
| `chromeProfiles` | {'int': 1754} |
| `chromeRendererMaxPssKb` | {'int': 1754} |
| `chromeRendererPssKb` | {'int': 1754} |
| `chromeRenderers` | {'int': 1754} |
| `chromeTabs` | {'int': 1754} |
| `chromeTabsProbedProfiles` | {'int': 1754} |
| `chromeUtilityPssKb` | {'int': 1754} |
| `desktopPssKb` | {'int': 1754} |
| `hostPssKb` | {'int': 1754} |
| `kind` | {'str': 1754} |
| `memAvailableKb` | {'int': 1754} |
| `memTotalKb` | {'int': 1754} |
| `otherPssKb` | {'int': 1754} |
| `processes` | {'int': 1754} |
| `pssFallbackProcesses` | {'int': 1754} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
