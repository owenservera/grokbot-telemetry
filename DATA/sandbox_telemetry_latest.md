# sandbox_telemetry_parse — 2026-11-09 11:18:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=629887 lines=1400
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1391 |
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
| `chromeBrowserPssKb` | {'int': 1391} |
| `chromeGpuPssKb` | {'int': 1391} |
| `chromeOtherPssKb` | {'int': 1391} |
| `chromeProcesses` | {'int': 1391} |
| `chromeProfiles` | {'int': 1391} |
| `chromeRendererMaxPssKb` | {'int': 1391} |
| `chromeRendererPssKb` | {'int': 1391} |
| `chromeRenderers` | {'int': 1391} |
| `chromeTabs` | {'int': 1391} |
| `chromeTabsProbedProfiles` | {'int': 1391} |
| `chromeUtilityPssKb` | {'int': 1391} |
| `desktopPssKb` | {'int': 1391} |
| `hostPssKb` | {'int': 1391} |
| `kind` | {'str': 1391} |
| `memAvailableKb` | {'int': 1391} |
| `memTotalKb` | {'int': 1391} |
| `otherPssKb` | {'int': 1391} |
| `processes` | {'int': 1391} |
| `pssFallbackProcesses` | {'int': 1391} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
