# sandbox_telemetry_parse — 2026-11-21 00:35:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1870167 lines=4146
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4133 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4133} |
| `chromeGpuPssKb` | {'int': 4133} |
| `chromeOtherPssKb` | {'int': 4133} |
| `chromeProcesses` | {'int': 4133} |
| `chromeProfiles` | {'int': 4133} |
| `chromeRendererMaxPssKb` | {'int': 4133} |
| `chromeRendererPssKb` | {'int': 4133} |
| `chromeRenderers` | {'int': 4133} |
| `chromeTabs` | {'int': 4133} |
| `chromeTabsProbedProfiles` | {'int': 4133} |
| `chromeUtilityPssKb` | {'int': 4133} |
| `desktopPssKb` | {'int': 4133} |
| `hostPssKb` | {'int': 4133} |
| `kind` | {'str': 4133} |
| `memAvailableKb` | {'int': 4133} |
| `memTotalKb` | {'int': 4133} |
| `otherPssKb` | {'int': 4133} |
| `processes` | {'int': 4133} |
| `pssFallbackProcesses` | {'int': 4133} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
