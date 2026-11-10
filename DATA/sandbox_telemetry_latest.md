# sandbox_telemetry_parse — 2026-11-10 21:05:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1320971 lines=2927
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2918 |
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
| `chromeBrowserPssKb` | {'int': 2918} |
| `chromeGpuPssKb` | {'int': 2918} |
| `chromeOtherPssKb` | {'int': 2918} |
| `chromeProcesses` | {'int': 2918} |
| `chromeProfiles` | {'int': 2918} |
| `chromeRendererMaxPssKb` | {'int': 2918} |
| `chromeRendererPssKb` | {'int': 2918} |
| `chromeRenderers` | {'int': 2918} |
| `chromeTabs` | {'int': 2918} |
| `chromeTabsProbedProfiles` | {'int': 2918} |
| `chromeUtilityPssKb` | {'int': 2918} |
| `desktopPssKb` | {'int': 2918} |
| `hostPssKb` | {'int': 2918} |
| `kind` | {'str': 2918} |
| `memAvailableKb` | {'int': 2918} |
| `memTotalKb` | {'int': 2918} |
| `otherPssKb` | {'int': 2918} |
| `processes` | {'int': 2918} |
| `pssFallbackProcesses` | {'int': 2918} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
