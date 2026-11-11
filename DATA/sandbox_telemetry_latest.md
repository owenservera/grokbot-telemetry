# sandbox_telemetry_parse — 2026-11-11 13:00:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1641714 lines=3636
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3627 |
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
| `chromeBrowserPssKb` | {'int': 3627} |
| `chromeGpuPssKb` | {'int': 3627} |
| `chromeOtherPssKb` | {'int': 3627} |
| `chromeProcesses` | {'int': 3627} |
| `chromeProfiles` | {'int': 3627} |
| `chromeRendererMaxPssKb` | {'int': 3627} |
| `chromeRendererPssKb` | {'int': 3627} |
| `chromeRenderers` | {'int': 3627} |
| `chromeTabs` | {'int': 3627} |
| `chromeTabsProbedProfiles` | {'int': 3627} |
| `chromeUtilityPssKb` | {'int': 3627} |
| `desktopPssKb` | {'int': 3627} |
| `hostPssKb` | {'int': 3627} |
| `kind` | {'str': 3627} |
| `memAvailableKb` | {'int': 3627} |
| `memTotalKb` | {'int': 3627} |
| `otherPssKb` | {'int': 3627} |
| `processes` | {'int': 3627} |
| `pssFallbackProcesses` | {'int': 3627} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
