# sandbox_telemetry_parse — 2026-11-25 06:06:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2622202 lines=5810
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5795 |
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
| `chromeBrowserPssKb` | {'int': 5795} |
| `chromeGpuPssKb` | {'int': 5795} |
| `chromeOtherPssKb` | {'int': 5795} |
| `chromeProcesses` | {'int': 5795} |
| `chromeProfiles` | {'int': 5795} |
| `chromeRendererMaxPssKb` | {'int': 5795} |
| `chromeRendererPssKb` | {'int': 5795} |
| `chromeRenderers` | {'int': 5795} |
| `chromeTabs` | {'int': 5795} |
| `chromeTabsProbedProfiles` | {'int': 5795} |
| `chromeUtilityPssKb` | {'int': 5795} |
| `desktopPssKb` | {'int': 5795} |
| `hostPssKb` | {'int': 5795} |
| `kind` | {'str': 5795} |
| `memAvailableKb` | {'int': 5795} |
| `memTotalKb` | {'int': 5795} |
| `otherPssKb` | {'int': 5795} |
| `processes` | {'int': 5795} |
| `pssFallbackProcesses` | {'int': 5795} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
