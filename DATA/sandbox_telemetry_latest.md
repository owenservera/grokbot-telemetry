# sandbox_telemetry_parse — 2026-11-16 17:21:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=57091 lines=132
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 125 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 125} |
| `chromeGpuPssKb` | {'int': 125} |
| `chromeOtherPssKb` | {'int': 125} |
| `chromeProcesses` | {'int': 125} |
| `chromeProfiles` | {'int': 125} |
| `chromeRendererMaxPssKb` | {'int': 125} |
| `chromeRendererPssKb` | {'int': 125} |
| `chromeRenderers` | {'int': 125} |
| `chromeTabs` | {'int': 125} |
| `chromeTabsProbedProfiles` | {'int': 125} |
| `chromeUtilityPssKb` | {'int': 125} |
| `desktopPssKb` | {'int': 125} |
| `hostPssKb` | {'int': 125} |
| `kind` | {'str': 125} |
| `memAvailableKb` | {'int': 125} |
| `memTotalKb` | {'int': 125} |
| `otherPssKb` | {'int': 125} |
| `processes` | {'int': 125} |
| `pssFallbackProcesses` | {'int': 125} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
