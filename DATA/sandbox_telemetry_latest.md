# sandbox_telemetry_parse — 2026-11-20 02:03:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1531282 lines=3395
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3384 |
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
| `chromeBrowserPssKb` | {'int': 3384} |
| `chromeGpuPssKb` | {'int': 3384} |
| `chromeOtherPssKb` | {'int': 3384} |
| `chromeProcesses` | {'int': 3384} |
| `chromeProfiles` | {'int': 3384} |
| `chromeRendererMaxPssKb` | {'int': 3384} |
| `chromeRendererPssKb` | {'int': 3384} |
| `chromeRenderers` | {'int': 3384} |
| `chromeTabs` | {'int': 3384} |
| `chromeTabsProbedProfiles` | {'int': 3384} |
| `chromeUtilityPssKb` | {'int': 3384} |
| `desktopPssKb` | {'int': 3384} |
| `hostPssKb` | {'int': 3384} |
| `kind` | {'str': 3384} |
| `memAvailableKb` | {'int': 3384} |
| `memTotalKb` | {'int': 3384} |
| `otherPssKb` | {'int': 3384} |
| `processes` | {'int': 3384} |
| `pssFallbackProcesses` | {'int': 3384} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
