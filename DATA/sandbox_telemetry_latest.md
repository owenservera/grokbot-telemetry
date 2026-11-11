# sandbox_telemetry_parse — 2026-11-11 22:41:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1854885 lines=4107
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4098 |
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
| `chromeBrowserPssKb` | {'int': 4098} |
| `chromeGpuPssKb` | {'int': 4098} |
| `chromeOtherPssKb` | {'int': 4098} |
| `chromeProcesses` | {'int': 4098} |
| `chromeProfiles` | {'int': 4098} |
| `chromeRendererMaxPssKb` | {'int': 4098} |
| `chromeRendererPssKb` | {'int': 4098} |
| `chromeRenderers` | {'int': 4098} |
| `chromeTabs` | {'int': 4098} |
| `chromeTabsProbedProfiles` | {'int': 4098} |
| `chromeUtilityPssKb` | {'int': 4098} |
| `desktopPssKb` | {'int': 4098} |
| `hostPssKb` | {'int': 4098} |
| `kind` | {'str': 4098} |
| `memAvailableKb` | {'int': 4098} |
| `memTotalKb` | {'int': 4098} |
| `otherPssKb` | {'int': 4098} |
| `processes` | {'int': 4098} |
| `pssFallbackProcesses` | {'int': 4098} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
