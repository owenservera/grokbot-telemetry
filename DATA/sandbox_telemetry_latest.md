# sandbox_telemetry_parse — 2026-10-26 16:45:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=25296 lines=60
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 55 |
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
| `chromeBrowserPssKb` | {'int': 55} |
| `chromeGpuPssKb` | {'int': 55} |
| `chromeOtherPssKb` | {'int': 55} |
| `chromeProcesses` | {'int': 55} |
| `chromeProfiles` | {'int': 55} |
| `chromeRendererMaxPssKb` | {'int': 55} |
| `chromeRendererPssKb` | {'int': 55} |
| `chromeRenderers` | {'int': 55} |
| `chromeTabs` | {'int': 55} |
| `chromeTabsProbedProfiles` | {'int': 55} |
| `chromeUtilityPssKb` | {'int': 55} |
| `desktopPssKb` | {'int': 55} |
| `hostPssKb` | {'int': 55} |
| `kind` | {'str': 55} |
| `memAvailableKb` | {'int': 55} |
| `memTotalKb` | {'int': 55} |
| `otherPssKb` | {'int': 55} |
| `processes` | {'int': 55} |
| `pssFallbackProcesses` | {'int': 55} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
