# sandbox_telemetry_parse — 2026-10-27 04:36:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=323232 lines=718
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 713 |
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
| `chromeBrowserPssKb` | {'int': 713} |
| `chromeGpuPssKb` | {'int': 713} |
| `chromeOtherPssKb` | {'int': 713} |
| `chromeProcesses` | {'int': 713} |
| `chromeProfiles` | {'int': 713} |
| `chromeRendererMaxPssKb` | {'int': 713} |
| `chromeRendererPssKb` | {'int': 713} |
| `chromeRenderers` | {'int': 713} |
| `chromeTabs` | {'int': 713} |
| `chromeTabsProbedProfiles` | {'int': 713} |
| `chromeUtilityPssKb` | {'int': 713} |
| `desktopPssKb` | {'int': 713} |
| `hostPssKb` | {'int': 713} |
| `kind` | {'str': 713} |
| `memAvailableKb` | {'int': 713} |
| `memTotalKb` | {'int': 713} |
| `otherPssKb` | {'int': 713} |
| `processes` | {'int': 713} |
| `pssFallbackProcesses` | {'int': 713} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
