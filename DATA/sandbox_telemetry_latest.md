# sandbox_telemetry_parse — 2026-11-19 13:30:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1292216 lines=2865
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2856 |
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
| `chromeBrowserPssKb` | {'int': 2856} |
| `chromeGpuPssKb` | {'int': 2856} |
| `chromeOtherPssKb` | {'int': 2856} |
| `chromeProcesses` | {'int': 2856} |
| `chromeProfiles` | {'int': 2856} |
| `chromeRendererMaxPssKb` | {'int': 2856} |
| `chromeRendererPssKb` | {'int': 2856} |
| `chromeRenderers` | {'int': 2856} |
| `chromeTabs` | {'int': 2856} |
| `chromeTabsProbedProfiles` | {'int': 2856} |
| `chromeUtilityPssKb` | {'int': 2856} |
| `desktopPssKb` | {'int': 2856} |
| `hostPssKb` | {'int': 2856} |
| `kind` | {'str': 2856} |
| `memAvailableKb` | {'int': 2856} |
| `memTotalKb` | {'int': 2856} |
| `otherPssKb` | {'int': 2856} |
| `processes` | {'int': 2856} |
| `pssFallbackProcesses` | {'int': 2856} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
