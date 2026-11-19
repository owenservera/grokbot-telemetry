# sandbox_telemetry_parse — 2026-11-19 16:14:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1347009 lines=2986
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2977 |
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
| `chromeBrowserPssKb` | {'int': 2977} |
| `chromeGpuPssKb` | {'int': 2977} |
| `chromeOtherPssKb` | {'int': 2977} |
| `chromeProcesses` | {'int': 2977} |
| `chromeProfiles` | {'int': 2977} |
| `chromeRendererMaxPssKb` | {'int': 2977} |
| `chromeRendererPssKb` | {'int': 2977} |
| `chromeRenderers` | {'int': 2977} |
| `chromeTabs` | {'int': 2977} |
| `chromeTabsProbedProfiles` | {'int': 2977} |
| `chromeUtilityPssKb` | {'int': 2977} |
| `desktopPssKb` | {'int': 2977} |
| `hostPssKb` | {'int': 2977} |
| `kind` | {'str': 2977} |
| `memAvailableKb` | {'int': 2977} |
| `memTotalKb` | {'int': 2977} |
| `otherPssKb` | {'int': 2977} |
| `processes` | {'int': 2977} |
| `pssFallbackProcesses` | {'int': 2977} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
