# sandbox_telemetry_parse — 2026-11-25 18:49:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2876811 lines=6373
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6358 |
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
| `chromeBrowserPssKb` | {'int': 6358} |
| `chromeGpuPssKb` | {'int': 6358} |
| `chromeOtherPssKb` | {'int': 6358} |
| `chromeProcesses` | {'int': 6358} |
| `chromeProfiles` | {'int': 6358} |
| `chromeRendererMaxPssKb` | {'int': 6358} |
| `chromeRendererPssKb` | {'int': 6358} |
| `chromeRenderers` | {'int': 6358} |
| `chromeTabs` | {'int': 6358} |
| `chromeTabsProbedProfiles` | {'int': 6358} |
| `chromeUtilityPssKb` | {'int': 6358} |
| `desktopPssKb` | {'int': 6358} |
| `hostPssKb` | {'int': 6358} |
| `kind` | {'str': 6358} |
| `memAvailableKb` | {'int': 6358} |
| `memTotalKb` | {'int': 6358} |
| `otherPssKb` | {'int': 6358} |
| `processes` | {'int': 6358} |
| `pssFallbackProcesses` | {'int': 6358} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
