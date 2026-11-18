# sandbox_telemetry_parse — 2026-11-18 12:28:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=816260 lines=1811
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1804 |
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
| `chromeBrowserPssKb` | {'int': 1804} |
| `chromeGpuPssKb` | {'int': 1804} |
| `chromeOtherPssKb` | {'int': 1804} |
| `chromeProcesses` | {'int': 1804} |
| `chromeProfiles` | {'int': 1804} |
| `chromeRendererMaxPssKb` | {'int': 1804} |
| `chromeRendererPssKb` | {'int': 1804} |
| `chromeRenderers` | {'int': 1804} |
| `chromeTabs` | {'int': 1804} |
| `chromeTabsProbedProfiles` | {'int': 1804} |
| `chromeUtilityPssKb` | {'int': 1804} |
| `desktopPssKb` | {'int': 1804} |
| `hostPssKb` | {'int': 1804} |
| `kind` | {'str': 1804} |
| `memAvailableKb` | {'int': 1804} |
| `memTotalKb` | {'int': 1804} |
| `otherPssKb` | {'int': 1804} |
| `processes` | {'int': 1804} |
| `pssFallbackProcesses` | {'int': 1804} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
