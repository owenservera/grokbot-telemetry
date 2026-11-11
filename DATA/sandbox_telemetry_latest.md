# sandbox_telemetry_parse — 2026-11-11 15:32:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1694638 lines=3753
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3744 |
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
| `chromeBrowserPssKb` | {'int': 3744} |
| `chromeGpuPssKb` | {'int': 3744} |
| `chromeOtherPssKb` | {'int': 3744} |
| `chromeProcesses` | {'int': 3744} |
| `chromeProfiles` | {'int': 3744} |
| `chromeRendererMaxPssKb` | {'int': 3744} |
| `chromeRendererPssKb` | {'int': 3744} |
| `chromeRenderers` | {'int': 3744} |
| `chromeTabs` | {'int': 3744} |
| `chromeTabsProbedProfiles` | {'int': 3744} |
| `chromeUtilityPssKb` | {'int': 3744} |
| `desktopPssKb` | {'int': 3744} |
| `hostPssKb` | {'int': 3744} |
| `kind` | {'str': 3744} |
| `memAvailableKb` | {'int': 3744} |
| `memTotalKb` | {'int': 3744} |
| `otherPssKb` | {'int': 3744} |
| `processes` | {'int': 3744} |
| `pssFallbackProcesses` | {'int': 3744} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
