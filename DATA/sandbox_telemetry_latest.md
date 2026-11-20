# sandbox_telemetry_parse — 2026-11-20 18:01:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1826753 lines=4050
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4037 |
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
| `chromeBrowserPssKb` | {'int': 4037} |
| `chromeGpuPssKb` | {'int': 4037} |
| `chromeOtherPssKb` | {'int': 4037} |
| `chromeProcesses` | {'int': 4037} |
| `chromeProfiles` | {'int': 4037} |
| `chromeRendererMaxPssKb` | {'int': 4037} |
| `chromeRendererPssKb` | {'int': 4037} |
| `chromeRenderers` | {'int': 4037} |
| `chromeTabs` | {'int': 4037} |
| `chromeTabsProbedProfiles` | {'int': 4037} |
| `chromeUtilityPssKb` | {'int': 4037} |
| `desktopPssKb` | {'int': 4037} |
| `hostPssKb` | {'int': 4037} |
| `kind` | {'str': 4037} |
| `memAvailableKb` | {'int': 4037} |
| `memTotalKb` | {'int': 4037} |
| `otherPssKb` | {'int': 4037} |
| `processes` | {'int': 4037} |
| `pssFallbackProcesses` | {'int': 4037} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
