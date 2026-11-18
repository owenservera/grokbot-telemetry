# sandbox_telemetry_parse — 2026-11-18 16:18:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=887271 lines=1968
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1961 |
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
| `chromeBrowserPssKb` | {'int': 1961} |
| `chromeGpuPssKb` | {'int': 1961} |
| `chromeOtherPssKb` | {'int': 1961} |
| `chromeProcesses` | {'int': 1961} |
| `chromeProfiles` | {'int': 1961} |
| `chromeRendererMaxPssKb` | {'int': 1961} |
| `chromeRendererPssKb` | {'int': 1961} |
| `chromeRenderers` | {'int': 1961} |
| `chromeTabs` | {'int': 1961} |
| `chromeTabsProbedProfiles` | {'int': 1961} |
| `chromeUtilityPssKb` | {'int': 1961} |
| `desktopPssKb` | {'int': 1961} |
| `hostPssKb` | {'int': 1961} |
| `kind` | {'str': 1961} |
| `memAvailableKb` | {'int': 1961} |
| `memTotalKb` | {'int': 1961} |
| `otherPssKb` | {'int': 1961} |
| `processes` | {'int': 1961} |
| `pssFallbackProcesses` | {'int': 1961} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
