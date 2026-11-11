# sandbox_telemetry_parse — 2026-11-11 17:24:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1736278 lines=3845
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3836 |
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
| `chromeBrowserPssKb` | {'int': 3836} |
| `chromeGpuPssKb` | {'int': 3836} |
| `chromeOtherPssKb` | {'int': 3836} |
| `chromeProcesses` | {'int': 3836} |
| `chromeProfiles` | {'int': 3836} |
| `chromeRendererMaxPssKb` | {'int': 3836} |
| `chromeRendererPssKb` | {'int': 3836} |
| `chromeRenderers` | {'int': 3836} |
| `chromeTabs` | {'int': 3836} |
| `chromeTabsProbedProfiles` | {'int': 3836} |
| `chromeUtilityPssKb` | {'int': 3836} |
| `desktopPssKb` | {'int': 3836} |
| `hostPssKb` | {'int': 3836} |
| `kind` | {'str': 3836} |
| `memAvailableKb` | {'int': 3836} |
| `memTotalKb` | {'int': 3836} |
| `otherPssKb` | {'int': 3836} |
| `processes` | {'int': 3836} |
| `pssFallbackProcesses` | {'int': 3836} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
