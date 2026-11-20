# sandbox_telemetry_parse — 2026-11-20 12:43:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1717087 lines=3806
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3795 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3795} |
| `chromeGpuPssKb` | {'int': 3795} |
| `chromeOtherPssKb` | {'int': 3795} |
| `chromeProcesses` | {'int': 3795} |
| `chromeProfiles` | {'int': 3795} |
| `chromeRendererMaxPssKb` | {'int': 3795} |
| `chromeRendererPssKb` | {'int': 3795} |
| `chromeRenderers` | {'int': 3795} |
| `chromeTabs` | {'int': 3795} |
| `chromeTabsProbedProfiles` | {'int': 3795} |
| `chromeUtilityPssKb` | {'int': 3795} |
| `desktopPssKb` | {'int': 3795} |
| `hostPssKb` | {'int': 3795} |
| `kind` | {'str': 3795} |
| `memAvailableKb` | {'int': 3795} |
| `memTotalKb` | {'int': 3795} |
| `otherPssKb` | {'int': 3795} |
| `processes` | {'int': 3795} |
| `pssFallbackProcesses` | {'int': 3795} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
