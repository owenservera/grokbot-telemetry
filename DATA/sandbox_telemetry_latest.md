# sandbox_telemetry_parse — 2026-11-25 09:37:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2697292 lines=5976
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5961 |
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
| `chromeBrowserPssKb` | {'int': 5961} |
| `chromeGpuPssKb` | {'int': 5961} |
| `chromeOtherPssKb` | {'int': 5961} |
| `chromeProcesses` | {'int': 5961} |
| `chromeProfiles` | {'int': 5961} |
| `chromeRendererMaxPssKb` | {'int': 5961} |
| `chromeRendererPssKb` | {'int': 5961} |
| `chromeRenderers` | {'int': 5961} |
| `chromeTabs` | {'int': 5961} |
| `chromeTabsProbedProfiles` | {'int': 5961} |
| `chromeUtilityPssKb` | {'int': 5961} |
| `desktopPssKb` | {'int': 5961} |
| `hostPssKb` | {'int': 5961} |
| `kind` | {'str': 5961} |
| `memAvailableKb` | {'int': 5961} |
| `memTotalKb` | {'int': 5961} |
| `otherPssKb` | {'int': 5961} |
| `processes` | {'int': 5961} |
| `pssFallbackProcesses` | {'int': 5961} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
