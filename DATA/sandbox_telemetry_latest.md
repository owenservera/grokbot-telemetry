# sandbox_telemetry_parse — 2026-11-20 08:55:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1645648 lines=3648
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3637 |
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
| `chromeBrowserPssKb` | {'int': 3637} |
| `chromeGpuPssKb` | {'int': 3637} |
| `chromeOtherPssKb` | {'int': 3637} |
| `chromeProcesses` | {'int': 3637} |
| `chromeProfiles` | {'int': 3637} |
| `chromeRendererMaxPssKb` | {'int': 3637} |
| `chromeRendererPssKb` | {'int': 3637} |
| `chromeRenderers` | {'int': 3637} |
| `chromeTabs` | {'int': 3637} |
| `chromeTabsProbedProfiles` | {'int': 3637} |
| `chromeUtilityPssKb` | {'int': 3637} |
| `desktopPssKb` | {'int': 3637} |
| `hostPssKb` | {'int': 3637} |
| `kind` | {'str': 3637} |
| `memAvailableKb` | {'int': 3637} |
| `memTotalKb` | {'int': 3637} |
| `otherPssKb` | {'int': 3637} |
| `processes` | {'int': 3637} |
| `pssFallbackProcesses` | {'int': 3637} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
