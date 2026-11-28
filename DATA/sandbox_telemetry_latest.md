# sandbox_telemetry_parse — 2026-11-28 13:41:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=909992 lines=2018
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2010 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2010} |
| `chromeGpuPssKb` | {'int': 2010} |
| `chromeOtherPssKb` | {'int': 2010} |
| `chromeProcesses` | {'int': 2010} |
| `chromeProfiles` | {'int': 2010} |
| `chromeRendererMaxPssKb` | {'int': 2010} |
| `chromeRendererPssKb` | {'int': 2010} |
| `chromeRenderers` | {'int': 2010} |
| `chromeTabs` | {'int': 2010} |
| `chromeTabsProbedProfiles` | {'int': 2010} |
| `chromeUtilityPssKb` | {'int': 2010} |
| `desktopPssKb` | {'int': 2010} |
| `hostPssKb` | {'int': 2010} |
| `kind` | {'str': 2010} |
| `memAvailableKb` | {'int': 2010} |
| `memTotalKb` | {'int': 2010} |
| `otherPssKb` | {'int': 2010} |
| `processes` | {'int': 2010} |
| `pssFallbackProcesses` | {'int': 2010} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
