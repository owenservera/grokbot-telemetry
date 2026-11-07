# sandbox_telemetry_parse — 2026-11-07 05:58:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=333621 lines=745
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 736 |
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
| `chromeBrowserPssKb` | {'int': 736} |
| `chromeGpuPssKb` | {'int': 736} |
| `chromeOtherPssKb` | {'int': 736} |
| `chromeProcesses` | {'int': 736} |
| `chromeProfiles` | {'int': 736} |
| `chromeRendererMaxPssKb` | {'int': 736} |
| `chromeRendererPssKb` | {'int': 736} |
| `chromeRenderers` | {'int': 736} |
| `chromeTabs` | {'int': 736} |
| `chromeTabsProbedProfiles` | {'int': 736} |
| `chromeUtilityPssKb` | {'int': 736} |
| `desktopPssKb` | {'int': 736} |
| `hostPssKb` | {'int': 736} |
| `kind` | {'str': 736} |
| `memAvailableKb` | {'int': 736} |
| `memTotalKb` | {'int': 736} |
| `otherPssKb` | {'int': 736} |
| `processes` | {'int': 736} |
| `pssFallbackProcesses` | {'int': 736} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
