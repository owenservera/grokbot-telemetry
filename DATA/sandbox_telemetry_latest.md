# sandbox_telemetry_parse — 2026-11-23 14:58:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1882091 lines=4174
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4159 |
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
| `chromeBrowserPssKb` | {'int': 4159} |
| `chromeGpuPssKb` | {'int': 4159} |
| `chromeOtherPssKb` | {'int': 4159} |
| `chromeProcesses` | {'int': 4159} |
| `chromeProfiles` | {'int': 4159} |
| `chromeRendererMaxPssKb` | {'int': 4159} |
| `chromeRendererPssKb` | {'int': 4159} |
| `chromeRenderers` | {'int': 4159} |
| `chromeTabs` | {'int': 4159} |
| `chromeTabsProbedProfiles` | {'int': 4159} |
| `chromeUtilityPssKb` | {'int': 4159} |
| `desktopPssKb` | {'int': 4159} |
| `hostPssKb` | {'int': 4159} |
| `kind` | {'str': 4159} |
| `memAvailableKb` | {'int': 4159} |
| `memTotalKb` | {'int': 4159} |
| `otherPssKb` | {'int': 4159} |
| `processes` | {'int': 4159} |
| `pssFallbackProcesses` | {'int': 4159} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
