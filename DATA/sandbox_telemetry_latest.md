# sandbox_telemetry_parse — 2026-11-26 11:57:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3237802 lines=7171
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7156 |
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
| `chromeBrowserPssKb` | {'int': 7156} |
| `chromeGpuPssKb` | {'int': 7156} |
| `chromeOtherPssKb` | {'int': 7156} |
| `chromeProcesses` | {'int': 7156} |
| `chromeProfiles` | {'int': 7156} |
| `chromeRendererMaxPssKb` | {'int': 7156} |
| `chromeRendererPssKb` | {'int': 7156} |
| `chromeRenderers` | {'int': 7156} |
| `chromeTabs` | {'int': 7156} |
| `chromeTabsProbedProfiles` | {'int': 7156} |
| `chromeUtilityPssKb` | {'int': 7156} |
| `desktopPssKb` | {'int': 7156} |
| `hostPssKb` | {'int': 7156} |
| `kind` | {'str': 7156} |
| `memAvailableKb` | {'int': 7156} |
| `memTotalKb` | {'int': 7156} |
| `otherPssKb` | {'int': 7156} |
| `processes` | {'int': 7156} |
| `pssFallbackProcesses` | {'int': 7156} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
