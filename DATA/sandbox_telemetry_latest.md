# sandbox_telemetry_parse — 2026-11-07 15:31:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=518149 lines=1153
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1144 |
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
| `chromeBrowserPssKb` | {'int': 1144} |
| `chromeGpuPssKb` | {'int': 1144} |
| `chromeOtherPssKb` | {'int': 1144} |
| `chromeProcesses` | {'int': 1144} |
| `chromeProfiles` | {'int': 1144} |
| `chromeRendererMaxPssKb` | {'int': 1144} |
| `chromeRendererPssKb` | {'int': 1144} |
| `chromeRenderers` | {'int': 1144} |
| `chromeTabs` | {'int': 1144} |
| `chromeTabsProbedProfiles` | {'int': 1144} |
| `chromeUtilityPssKb` | {'int': 1144} |
| `desktopPssKb` | {'int': 1144} |
| `hostPssKb` | {'int': 1144} |
| `kind` | {'str': 1144} |
| `memAvailableKb` | {'int': 1144} |
| `memTotalKb` | {'int': 1144} |
| `otherPssKb` | {'int': 1144} |
| `processes` | {'int': 1144} |
| `pssFallbackProcesses` | {'int': 1144} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
