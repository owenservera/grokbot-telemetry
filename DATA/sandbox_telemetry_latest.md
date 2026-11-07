# sandbox_telemetry_parse — 2026-11-07 11:05:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=430848 lines=960
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 951 |
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
| `chromeBrowserPssKb` | {'int': 951} |
| `chromeGpuPssKb` | {'int': 951} |
| `chromeOtherPssKb` | {'int': 951} |
| `chromeProcesses` | {'int': 951} |
| `chromeProfiles` | {'int': 951} |
| `chromeRendererMaxPssKb` | {'int': 951} |
| `chromeRendererPssKb` | {'int': 951} |
| `chromeRenderers` | {'int': 951} |
| `chromeTabs` | {'int': 951} |
| `chromeTabsProbedProfiles` | {'int': 951} |
| `chromeUtilityPssKb` | {'int': 951} |
| `desktopPssKb` | {'int': 951} |
| `hostPssKb` | {'int': 951} |
| `kind` | {'str': 951} |
| `memAvailableKb` | {'int': 951} |
| `memTotalKb` | {'int': 951} |
| `otherPssKb` | {'int': 951} |
| `processes` | {'int': 951} |
| `pssFallbackProcesses` | {'int': 951} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
