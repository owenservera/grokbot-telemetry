# sandbox_telemetry_parse — 2026-11-10 16:24:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1219102 lines=2702
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2693 |
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
| `chromeBrowserPssKb` | {'int': 2693} |
| `chromeGpuPssKb` | {'int': 2693} |
| `chromeOtherPssKb` | {'int': 2693} |
| `chromeProcesses` | {'int': 2693} |
| `chromeProfiles` | {'int': 2693} |
| `chromeRendererMaxPssKb` | {'int': 2693} |
| `chromeRendererPssKb` | {'int': 2693} |
| `chromeRenderers` | {'int': 2693} |
| `chromeTabs` | {'int': 2693} |
| `chromeTabsProbedProfiles` | {'int': 2693} |
| `chromeUtilityPssKb` | {'int': 2693} |
| `desktopPssKb` | {'int': 2693} |
| `hostPssKb` | {'int': 2693} |
| `kind` | {'str': 2693} |
| `memAvailableKb` | {'int': 2693} |
| `memTotalKb` | {'int': 2693} |
| `otherPssKb` | {'int': 2693} |
| `processes` | {'int': 2693} |
| `pssFallbackProcesses` | {'int': 2693} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
