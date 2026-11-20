# sandbox_telemetry_parse — 2026-11-20 07:07:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1613548 lines=3577
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3566 |
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
| `chromeBrowserPssKb` | {'int': 3566} |
| `chromeGpuPssKb` | {'int': 3566} |
| `chromeOtherPssKb` | {'int': 3566} |
| `chromeProcesses` | {'int': 3566} |
| `chromeProfiles` | {'int': 3566} |
| `chromeRendererMaxPssKb` | {'int': 3566} |
| `chromeRendererPssKb` | {'int': 3566} |
| `chromeRenderers` | {'int': 3566} |
| `chromeTabs` | {'int': 3566} |
| `chromeTabsProbedProfiles` | {'int': 3566} |
| `chromeUtilityPssKb` | {'int': 3566} |
| `desktopPssKb` | {'int': 3566} |
| `hostPssKb` | {'int': 3566} |
| `kind` | {'str': 3566} |
| `memAvailableKb` | {'int': 3566} |
| `memTotalKb` | {'int': 3566} |
| `otherPssKb` | {'int': 3566} |
| `processes` | {'int': 3566} |
| `pssFallbackProcesses` | {'int': 3566} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
