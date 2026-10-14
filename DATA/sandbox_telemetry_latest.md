# sandbox_telemetry_parse — 2026-10-14 21:25:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=496214 lines=1102
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1097 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1097} |
| `chromeGpuPssKb` | {'int': 1097} |
| `chromeOtherPssKb` | {'int': 1097} |
| `chromeProcesses` | {'int': 1097} |
| `chromeProfiles` | {'int': 1097} |
| `chromeRendererMaxPssKb` | {'int': 1097} |
| `chromeRendererPssKb` | {'int': 1097} |
| `chromeRenderers` | {'int': 1097} |
| `chromeTabs` | {'int': 1097} |
| `chromeTabsProbedProfiles` | {'int': 1097} |
| `chromeUtilityPssKb` | {'int': 1097} |
| `desktopPssKb` | {'int': 1097} |
| `hostPssKb` | {'int': 1097} |
| `kind` | {'str': 1097} |
| `memAvailableKb` | {'int': 1097} |
| `memTotalKb` | {'int': 1097} |
| `otherPssKb` | {'int': 1097} |
| `processes` | {'int': 1097} |
| `pssFallbackProcesses` | {'int': 1097} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
