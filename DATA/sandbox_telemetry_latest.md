# sandbox_telemetry_parse — 2026-11-07 15:47:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=523573 lines=1165
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1156 |
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
| `chromeBrowserPssKb` | {'int': 1156} |
| `chromeGpuPssKb` | {'int': 1156} |
| `chromeOtherPssKb` | {'int': 1156} |
| `chromeProcesses` | {'int': 1156} |
| `chromeProfiles` | {'int': 1156} |
| `chromeRendererMaxPssKb` | {'int': 1156} |
| `chromeRendererPssKb` | {'int': 1156} |
| `chromeRenderers` | {'int': 1156} |
| `chromeTabs` | {'int': 1156} |
| `chromeTabsProbedProfiles` | {'int': 1156} |
| `chromeUtilityPssKb` | {'int': 1156} |
| `desktopPssKb` | {'int': 1156} |
| `hostPssKb` | {'int': 1156} |
| `kind` | {'str': 1156} |
| `memAvailableKb` | {'int': 1156} |
| `memTotalKb` | {'int': 1156} |
| `otherPssKb` | {'int': 1156} |
| `processes` | {'int': 1156} |
| `pssFallbackProcesses` | {'int': 1156} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
