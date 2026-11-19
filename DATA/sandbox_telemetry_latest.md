# sandbox_telemetry_parse — 2026-11-19 19:58:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1420484 lines=3150
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3139 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3139} |
| `chromeGpuPssKb` | {'int': 3139} |
| `chromeOtherPssKb` | {'int': 3139} |
| `chromeProcesses` | {'int': 3139} |
| `chromeProfiles` | {'int': 3139} |
| `chromeRendererMaxPssKb` | {'int': 3139} |
| `chromeRendererPssKb` | {'int': 3139} |
| `chromeRenderers` | {'int': 3139} |
| `chromeTabs` | {'int': 3139} |
| `chromeTabsProbedProfiles` | {'int': 3139} |
| `chromeUtilityPssKb` | {'int': 3139} |
| `desktopPssKb` | {'int': 3139} |
| `hostPssKb` | {'int': 3139} |
| `kind` | {'str': 3139} |
| `memAvailableKb` | {'int': 3139} |
| `memTotalKb` | {'int': 3139} |
| `otherPssKb` | {'int': 3139} |
| `processes` | {'int': 3139} |
| `pssFallbackProcesses` | {'int': 3139} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
