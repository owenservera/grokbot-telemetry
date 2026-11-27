# sandbox_telemetry_parse — 2026-11-27 13:50:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=443893 lines=988
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 980 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 980} |
| `chromeGpuPssKb` | {'int': 980} |
| `chromeOtherPssKb` | {'int': 980} |
| `chromeProcesses` | {'int': 980} |
| `chromeProfiles` | {'int': 980} |
| `chromeRendererMaxPssKb` | {'int': 980} |
| `chromeRendererPssKb` | {'int': 980} |
| `chromeRenderers` | {'int': 980} |
| `chromeTabs` | {'int': 980} |
| `chromeTabsProbedProfiles` | {'int': 980} |
| `chromeUtilityPssKb` | {'int': 980} |
| `desktopPssKb` | {'int': 980} |
| `hostPssKb` | {'int': 980} |
| `kind` | {'str': 980} |
| `memAvailableKb` | {'int': 980} |
| `memTotalKb` | {'int': 980} |
| `otherPssKb` | {'int': 980} |
| `processes` | {'int': 980} |
| `pssFallbackProcesses` | {'int': 980} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
