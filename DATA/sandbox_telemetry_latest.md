# sandbox_telemetry_parse — 2026-10-26 23:17:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=195171 lines=435
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 430 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 430} |
| `chromeGpuPssKb` | {'int': 430} |
| `chromeOtherPssKb` | {'int': 430} |
| `chromeProcesses` | {'int': 430} |
| `chromeProfiles` | {'int': 430} |
| `chromeRendererMaxPssKb` | {'int': 430} |
| `chromeRendererPssKb` | {'int': 430} |
| `chromeRenderers` | {'int': 430} |
| `chromeTabs` | {'int': 430} |
| `chromeTabsProbedProfiles` | {'int': 430} |
| `chromeUtilityPssKb` | {'int': 430} |
| `desktopPssKb` | {'int': 430} |
| `hostPssKb` | {'int': 430} |
| `kind` | {'str': 430} |
| `memAvailableKb` | {'int': 430} |
| `memTotalKb` | {'int': 430} |
| `otherPssKb` | {'int': 430} |
| `processes` | {'int': 430} |
| `pssFallbackProcesses` | {'int': 430} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
