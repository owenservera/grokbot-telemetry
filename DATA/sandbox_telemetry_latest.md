# sandbox_telemetry_parse — 2026-11-10 23:57:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1387497 lines=3074
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3065 |
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
| `chromeBrowserPssKb` | {'int': 3065} |
| `chromeGpuPssKb` | {'int': 3065} |
| `chromeOtherPssKb` | {'int': 3065} |
| `chromeProcesses` | {'int': 3065} |
| `chromeProfiles` | {'int': 3065} |
| `chromeRendererMaxPssKb` | {'int': 3065} |
| `chromeRendererPssKb` | {'int': 3065} |
| `chromeRenderers` | {'int': 3065} |
| `chromeTabs` | {'int': 3065} |
| `chromeTabsProbedProfiles` | {'int': 3065} |
| `chromeUtilityPssKb` | {'int': 3065} |
| `desktopPssKb` | {'int': 3065} |
| `hostPssKb` | {'int': 3065} |
| `kind` | {'str': 3065} |
| `memAvailableKb` | {'int': 3065} |
| `memTotalKb` | {'int': 3065} |
| `otherPssKb` | {'int': 3065} |
| `processes` | {'int': 3065} |
| `pssFallbackProcesses` | {'int': 3065} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
