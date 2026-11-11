# sandbox_telemetry_parse — 2026-11-11 20:16:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1800101 lines=3986
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3977 |
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
| `chromeBrowserPssKb` | {'int': 3977} |
| `chromeGpuPssKb` | {'int': 3977} |
| `chromeOtherPssKb` | {'int': 3977} |
| `chromeProcesses` | {'int': 3977} |
| `chromeProfiles` | {'int': 3977} |
| `chromeRendererMaxPssKb` | {'int': 3977} |
| `chromeRendererPssKb` | {'int': 3977} |
| `chromeRenderers` | {'int': 3977} |
| `chromeTabs` | {'int': 3977} |
| `chromeTabsProbedProfiles` | {'int': 3977} |
| `chromeUtilityPssKb` | {'int': 3977} |
| `desktopPssKb` | {'int': 3977} |
| `hostPssKb` | {'int': 3977} |
| `kind` | {'str': 3977} |
| `memAvailableKb` | {'int': 3977} |
| `memTotalKb` | {'int': 3977} |
| `otherPssKb` | {'int': 3977} |
| `processes` | {'int': 3977} |
| `pssFallbackProcesses` | {'int': 3977} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
