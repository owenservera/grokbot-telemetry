# sandbox_telemetry_parse — 2026-11-28 03:13:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=709154 lines=1574
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1566 |
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
| `chromeBrowserPssKb` | {'int': 1566} |
| `chromeGpuPssKb` | {'int': 1566} |
| `chromeOtherPssKb` | {'int': 1566} |
| `chromeProcesses` | {'int': 1566} |
| `chromeProfiles` | {'int': 1566} |
| `chromeRendererMaxPssKb` | {'int': 1566} |
| `chromeRendererPssKb` | {'int': 1566} |
| `chromeRenderers` | {'int': 1566} |
| `chromeTabs` | {'int': 1566} |
| `chromeTabsProbedProfiles` | {'int': 1566} |
| `chromeUtilityPssKb` | {'int': 1566} |
| `desktopPssKb` | {'int': 1566} |
| `hostPssKb` | {'int': 1566} |
| `kind` | {'str': 1566} |
| `memAvailableKb` | {'int': 1566} |
| `memTotalKb` | {'int': 1566} |
| `otherPssKb` | {'int': 1566} |
| `processes` | {'int': 1566} |
| `pssFallbackProcesses` | {'int': 1566} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
