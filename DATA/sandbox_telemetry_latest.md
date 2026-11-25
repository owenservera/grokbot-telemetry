# sandbox_telemetry_parse — 2026-11-25 20:31:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2912077 lines=6451
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6436 |
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
| `chromeBrowserPssKb` | {'int': 6436} |
| `chromeGpuPssKb` | {'int': 6436} |
| `chromeOtherPssKb` | {'int': 6436} |
| `chromeProcesses` | {'int': 6436} |
| `chromeProfiles` | {'int': 6436} |
| `chromeRendererMaxPssKb` | {'int': 6436} |
| `chromeRendererPssKb` | {'int': 6436} |
| `chromeRenderers` | {'int': 6436} |
| `chromeTabs` | {'int': 6436} |
| `chromeTabsProbedProfiles` | {'int': 6436} |
| `chromeUtilityPssKb` | {'int': 6436} |
| `desktopPssKb` | {'int': 6436} |
| `hostPssKb` | {'int': 6436} |
| `kind` | {'str': 6436} |
| `memAvailableKb` | {'int': 6436} |
| `memTotalKb` | {'int': 6436} |
| `otherPssKb` | {'int': 6436} |
| `processes` | {'int': 6436} |
| `pssFallbackProcesses` | {'int': 6436} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
