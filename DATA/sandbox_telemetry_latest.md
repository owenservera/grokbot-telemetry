# sandbox_telemetry_parse — 2026-11-25 17:25:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2851496 lines=6317
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6302 |
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
| `chromeBrowserPssKb` | {'int': 6302} |
| `chromeGpuPssKb` | {'int': 6302} |
| `chromeOtherPssKb` | {'int': 6302} |
| `chromeProcesses` | {'int': 6302} |
| `chromeProfiles` | {'int': 6302} |
| `chromeRendererMaxPssKb` | {'int': 6302} |
| `chromeRendererPssKb` | {'int': 6302} |
| `chromeRenderers` | {'int': 6302} |
| `chromeTabs` | {'int': 6302} |
| `chromeTabsProbedProfiles` | {'int': 6302} |
| `chromeUtilityPssKb` | {'int': 6302} |
| `desktopPssKb` | {'int': 6302} |
| `hostPssKb` | {'int': 6302} |
| `kind` | {'str': 6302} |
| `memAvailableKb` | {'int': 6302} |
| `memTotalKb` | {'int': 6302} |
| `otherPssKb` | {'int': 6302} |
| `processes` | {'int': 6302} |
| `pssFallbackProcesses` | {'int': 6302} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
