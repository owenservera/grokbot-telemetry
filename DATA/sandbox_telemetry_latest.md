# sandbox_telemetry_parse — 2026-11-12 22:47:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2359138 lines=5221
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5212 |
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
| `chromeBrowserPssKb` | {'int': 5212} |
| `chromeGpuPssKb` | {'int': 5212} |
| `chromeOtherPssKb` | {'int': 5212} |
| `chromeProcesses` | {'int': 5212} |
| `chromeProfiles` | {'int': 5212} |
| `chromeRendererMaxPssKb` | {'int': 5212} |
| `chromeRendererPssKb` | {'int': 5212} |
| `chromeRenderers` | {'int': 5212} |
| `chromeTabs` | {'int': 5212} |
| `chromeTabsProbedProfiles` | {'int': 5212} |
| `chromeUtilityPssKb` | {'int': 5212} |
| `desktopPssKb` | {'int': 5212} |
| `hostPssKb` | {'int': 5212} |
| `kind` | {'str': 5212} |
| `memAvailableKb` | {'int': 5212} |
| `memTotalKb` | {'int': 5212} |
| `otherPssKb` | {'int': 5212} |
| `processes` | {'int': 5212} |
| `pssFallbackProcesses` | {'int': 5212} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
