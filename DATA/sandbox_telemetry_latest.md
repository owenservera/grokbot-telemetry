# sandbox_telemetry_parse — 2026-11-28 13:47:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=913158 lines=2025
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2017 |
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
| `chromeBrowserPssKb` | {'int': 2017} |
| `chromeGpuPssKb` | {'int': 2017} |
| `chromeOtherPssKb` | {'int': 2017} |
| `chromeProcesses` | {'int': 2017} |
| `chromeProfiles` | {'int': 2017} |
| `chromeRendererMaxPssKb` | {'int': 2017} |
| `chromeRendererPssKb` | {'int': 2017} |
| `chromeRenderers` | {'int': 2017} |
| `chromeTabs` | {'int': 2017} |
| `chromeTabsProbedProfiles` | {'int': 2017} |
| `chromeUtilityPssKb` | {'int': 2017} |
| `desktopPssKb` | {'int': 2017} |
| `hostPssKb` | {'int': 2017} |
| `kind` | {'str': 2017} |
| `memAvailableKb` | {'int': 2017} |
| `memTotalKb` | {'int': 2017} |
| `otherPssKb` | {'int': 2017} |
| `processes` | {'int': 2017} |
| `pssFallbackProcesses` | {'int': 2017} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
