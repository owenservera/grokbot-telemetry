# sandbox_telemetry_parse — 2026-11-11 05:11:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1484266 lines=3288
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3279 |
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
| `chromeBrowserPssKb` | {'int': 3279} |
| `chromeGpuPssKb` | {'int': 3279} |
| `chromeOtherPssKb` | {'int': 3279} |
| `chromeProcesses` | {'int': 3279} |
| `chromeProfiles` | {'int': 3279} |
| `chromeRendererMaxPssKb` | {'int': 3279} |
| `chromeRendererPssKb` | {'int': 3279} |
| `chromeRenderers` | {'int': 3279} |
| `chromeTabs` | {'int': 3279} |
| `chromeTabsProbedProfiles` | {'int': 3279} |
| `chromeUtilityPssKb` | {'int': 3279} |
| `desktopPssKb` | {'int': 3279} |
| `hostPssKb` | {'int': 3279} |
| `kind` | {'str': 3279} |
| `memAvailableKb` | {'int': 3279} |
| `memTotalKb` | {'int': 3279} |
| `otherPssKb` | {'int': 3279} |
| `processes` | {'int': 3279} |
| `pssFallbackProcesses` | {'int': 3279} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
