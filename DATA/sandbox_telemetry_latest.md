# sandbox_telemetry_parse — 2026-11-12 15:42:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2202913 lines=4876
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4867 |
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
| `chromeBrowserPssKb` | {'int': 4867} |
| `chromeGpuPssKb` | {'int': 4867} |
| `chromeOtherPssKb` | {'int': 4867} |
| `chromeProcesses` | {'int': 4867} |
| `chromeProfiles` | {'int': 4867} |
| `chromeRendererMaxPssKb` | {'int': 4867} |
| `chromeRendererPssKb` | {'int': 4867} |
| `chromeRenderers` | {'int': 4867} |
| `chromeTabs` | {'int': 4867} |
| `chromeTabsProbedProfiles` | {'int': 4867} |
| `chromeUtilityPssKb` | {'int': 4867} |
| `desktopPssKb` | {'int': 4867} |
| `hostPssKb` | {'int': 4867} |
| `kind` | {'str': 4867} |
| `memAvailableKb` | {'int': 4867} |
| `memTotalKb` | {'int': 4867} |
| `otherPssKb` | {'int': 4867} |
| `processes` | {'int': 4867} |
| `pssFallbackProcesses` | {'int': 4867} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
