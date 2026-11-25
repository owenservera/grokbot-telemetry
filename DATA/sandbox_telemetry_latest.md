# sandbox_telemetry_parse — 2026-11-25 23:23:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2970412 lines=6580
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6565 |
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
| `chromeBrowserPssKb` | {'int': 6565} |
| `chromeGpuPssKb` | {'int': 6565} |
| `chromeOtherPssKb` | {'int': 6565} |
| `chromeProcesses` | {'int': 6565} |
| `chromeProfiles` | {'int': 6565} |
| `chromeRendererMaxPssKb` | {'int': 6565} |
| `chromeRendererPssKb` | {'int': 6565} |
| `chromeRenderers` | {'int': 6565} |
| `chromeTabs` | {'int': 6565} |
| `chromeTabsProbedProfiles` | {'int': 6565} |
| `chromeUtilityPssKb` | {'int': 6565} |
| `desktopPssKb` | {'int': 6565} |
| `hostPssKb` | {'int': 6565} |
| `kind` | {'str': 6565} |
| `memAvailableKb` | {'int': 6565} |
| `memTotalKb` | {'int': 6565} |
| `otherPssKb` | {'int': 6565} |
| `processes` | {'int': 6565} |
| `pssFallbackProcesses` | {'int': 6565} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
