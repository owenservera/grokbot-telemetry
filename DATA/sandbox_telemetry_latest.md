# sandbox_telemetry_parse — 2026-11-26 07:07:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3132821 lines=6939
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6924 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6924} |
| `chromeGpuPssKb` | {'int': 6924} |
| `chromeOtherPssKb` | {'int': 6924} |
| `chromeProcesses` | {'int': 6924} |
| `chromeProfiles` | {'int': 6924} |
| `chromeRendererMaxPssKb` | {'int': 6924} |
| `chromeRendererPssKb` | {'int': 6924} |
| `chromeRenderers` | {'int': 6924} |
| `chromeTabs` | {'int': 6924} |
| `chromeTabsProbedProfiles` | {'int': 6924} |
| `chromeUtilityPssKb` | {'int': 6924} |
| `desktopPssKb` | {'int': 6924} |
| `hostPssKb` | {'int': 6924} |
| `kind` | {'str': 6924} |
| `memAvailableKb` | {'int': 6924} |
| `memTotalKb` | {'int': 6924} |
| `otherPssKb` | {'int': 6924} |
| `processes` | {'int': 6924} |
| `pssFallbackProcesses` | {'int': 6924} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
