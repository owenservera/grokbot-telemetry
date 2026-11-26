# sandbox_telemetry_parse — 2026-11-26 22:21:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=110520 lines=251
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 243 |
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
| `chromeBrowserPssKb` | {'int': 243} |
| `chromeGpuPssKb` | {'int': 243} |
| `chromeOtherPssKb` | {'int': 243} |
| `chromeProcesses` | {'int': 243} |
| `chromeProfiles` | {'int': 243} |
| `chromeRendererMaxPssKb` | {'int': 243} |
| `chromeRendererPssKb` | {'int': 243} |
| `chromeRenderers` | {'int': 243} |
| `chromeTabs` | {'int': 243} |
| `chromeTabsProbedProfiles` | {'int': 243} |
| `chromeUtilityPssKb` | {'int': 243} |
| `desktopPssKb` | {'int': 243} |
| `hostPssKb` | {'int': 243} |
| `kind` | {'str': 243} |
| `memAvailableKb` | {'int': 243} |
| `memTotalKb` | {'int': 243} |
| `otherPssKb` | {'int': 243} |
| `processes` | {'int': 243} |
| `pssFallbackProcesses` | {'int': 243} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
