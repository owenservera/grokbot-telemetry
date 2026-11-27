# sandbox_telemetry_parse — 2026-11-27 20:49:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=586066 lines=1302
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1294 |
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
| `chromeBrowserPssKb` | {'int': 1294} |
| `chromeGpuPssKb` | {'int': 1294} |
| `chromeOtherPssKb` | {'int': 1294} |
| `chromeProcesses` | {'int': 1294} |
| `chromeProfiles` | {'int': 1294} |
| `chromeRendererMaxPssKb` | {'int': 1294} |
| `chromeRendererPssKb` | {'int': 1294} |
| `chromeRenderers` | {'int': 1294} |
| `chromeTabs` | {'int': 1294} |
| `chromeTabsProbedProfiles` | {'int': 1294} |
| `chromeUtilityPssKb` | {'int': 1294} |
| `desktopPssKb` | {'int': 1294} |
| `hostPssKb` | {'int': 1294} |
| `kind` | {'str': 1294} |
| `memAvailableKb` | {'int': 1294} |
| `memTotalKb` | {'int': 1294} |
| `otherPssKb` | {'int': 1294} |
| `processes` | {'int': 1294} |
| `pssFallbackProcesses` | {'int': 1294} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
