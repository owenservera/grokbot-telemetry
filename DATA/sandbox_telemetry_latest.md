# sandbox_telemetry_parse — 2026-11-07 12:42:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=465231 lines=1036
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1027 |
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
| `chromeBrowserPssKb` | {'int': 1027} |
| `chromeGpuPssKb` | {'int': 1027} |
| `chromeOtherPssKb` | {'int': 1027} |
| `chromeProcesses` | {'int': 1027} |
| `chromeProfiles` | {'int': 1027} |
| `chromeRendererMaxPssKb` | {'int': 1027} |
| `chromeRendererPssKb` | {'int': 1027} |
| `chromeRenderers` | {'int': 1027} |
| `chromeTabs` | {'int': 1027} |
| `chromeTabsProbedProfiles` | {'int': 1027} |
| `chromeUtilityPssKb` | {'int': 1027} |
| `desktopPssKb` | {'int': 1027} |
| `hostPssKb` | {'int': 1027} |
| `kind` | {'str': 1027} |
| `memAvailableKb` | {'int': 1027} |
| `memTotalKb` | {'int': 1027} |
| `otherPssKb` | {'int': 1027} |
| `processes` | {'int': 1027} |
| `pssFallbackProcesses` | {'int': 1027} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
