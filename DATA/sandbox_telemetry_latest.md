# sandbox_telemetry_parse — 2026-11-24 10:46:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2252140 lines=4992
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4977 |
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
| `chromeBrowserPssKb` | {'int': 4977} |
| `chromeGpuPssKb` | {'int': 4977} |
| `chromeOtherPssKb` | {'int': 4977} |
| `chromeProcesses` | {'int': 4977} |
| `chromeProfiles` | {'int': 4977} |
| `chromeRendererMaxPssKb` | {'int': 4977} |
| `chromeRendererPssKb` | {'int': 4977} |
| `chromeRenderers` | {'int': 4977} |
| `chromeTabs` | {'int': 4977} |
| `chromeTabsProbedProfiles` | {'int': 4977} |
| `chromeUtilityPssKb` | {'int': 4977} |
| `desktopPssKb` | {'int': 4977} |
| `hostPssKb` | {'int': 4977} |
| `kind` | {'str': 4977} |
| `memAvailableKb` | {'int': 4977} |
| `memTotalKb` | {'int': 4977} |
| `otherPssKb` | {'int': 4977} |
| `processes` | {'int': 4977} |
| `pssFallbackProcesses` | {'int': 4977} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
