# sandbox_telemetry_parse — 2026-11-19 23:08:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1478838 lines=3279
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3268 |
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
| `chromeBrowserPssKb` | {'int': 3268} |
| `chromeGpuPssKb` | {'int': 3268} |
| `chromeOtherPssKb` | {'int': 3268} |
| `chromeProcesses` | {'int': 3268} |
| `chromeProfiles` | {'int': 3268} |
| `chromeRendererMaxPssKb` | {'int': 3268} |
| `chromeRendererPssKb` | {'int': 3268} |
| `chromeRenderers` | {'int': 3268} |
| `chromeTabs` | {'int': 3268} |
| `chromeTabsProbedProfiles` | {'int': 3268} |
| `chromeUtilityPssKb` | {'int': 3268} |
| `desktopPssKb` | {'int': 3268} |
| `hostPssKb` | {'int': 3268} |
| `kind` | {'str': 3268} |
| `memAvailableKb` | {'int': 3268} |
| `memTotalKb` | {'int': 3268} |
| `otherPssKb` | {'int': 3268} |
| `processes` | {'int': 3268} |
| `pssFallbackProcesses` | {'int': 3268} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
