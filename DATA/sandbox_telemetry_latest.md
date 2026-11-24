# sandbox_telemetry_parse — 2026-11-24 05:36:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2151312 lines=4769
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4754 |
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
| `chromeBrowserPssKb` | {'int': 4754} |
| `chromeGpuPssKb` | {'int': 4754} |
| `chromeOtherPssKb` | {'int': 4754} |
| `chromeProcesses` | {'int': 4754} |
| `chromeProfiles` | {'int': 4754} |
| `chromeRendererMaxPssKb` | {'int': 4754} |
| `chromeRendererPssKb` | {'int': 4754} |
| `chromeRenderers` | {'int': 4754} |
| `chromeTabs` | {'int': 4754} |
| `chromeTabsProbedProfiles` | {'int': 4754} |
| `chromeUtilityPssKb` | {'int': 4754} |
| `desktopPssKb` | {'int': 4754} |
| `hostPssKb` | {'int': 4754} |
| `kind` | {'str': 4754} |
| `memAvailableKb` | {'int': 4754} |
| `memTotalKb` | {'int': 4754} |
| `otherPssKb` | {'int': 4754} |
| `processes` | {'int': 4754} |
| `pssFallbackProcesses` | {'int': 4754} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
