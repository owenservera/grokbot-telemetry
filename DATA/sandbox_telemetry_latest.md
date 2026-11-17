# sandbox_telemetry_parse — 2026-11-17 19:03:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=497929 lines=1107
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1100 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1100} |
| `chromeGpuPssKb` | {'int': 1100} |
| `chromeOtherPssKb` | {'int': 1100} |
| `chromeProcesses` | {'int': 1100} |
| `chromeProfiles` | {'int': 1100} |
| `chromeRendererMaxPssKb` | {'int': 1100} |
| `chromeRendererPssKb` | {'int': 1100} |
| `chromeRenderers` | {'int': 1100} |
| `chromeTabs` | {'int': 1100} |
| `chromeTabsProbedProfiles` | {'int': 1100} |
| `chromeUtilityPssKb` | {'int': 1100} |
| `desktopPssKb` | {'int': 1100} |
| `hostPssKb` | {'int': 1100} |
| `kind` | {'str': 1100} |
| `memAvailableKb` | {'int': 1100} |
| `memTotalKb` | {'int': 1100} |
| `otherPssKb` | {'int': 1100} |
| `processes` | {'int': 1100} |
| `pssFallbackProcesses` | {'int': 1100} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
