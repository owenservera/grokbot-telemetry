# sandbox_telemetry_parse — 2026-11-11 16:15:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1710023 lines=3787
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3778 |
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
| `chromeBrowserPssKb` | {'int': 3778} |
| `chromeGpuPssKb` | {'int': 3778} |
| `chromeOtherPssKb` | {'int': 3778} |
| `chromeProcesses` | {'int': 3778} |
| `chromeProfiles` | {'int': 3778} |
| `chromeRendererMaxPssKb` | {'int': 3778} |
| `chromeRendererPssKb` | {'int': 3778} |
| `chromeRenderers` | {'int': 3778} |
| `chromeTabs` | {'int': 3778} |
| `chromeTabsProbedProfiles` | {'int': 3778} |
| `chromeUtilityPssKb` | {'int': 3778} |
| `desktopPssKb` | {'int': 3778} |
| `hostPssKb` | {'int': 3778} |
| `kind` | {'str': 3778} |
| `memAvailableKb` | {'int': 3778} |
| `memTotalKb` | {'int': 3778} |
| `otherPssKb` | {'int': 3778} |
| `processes` | {'int': 3778} |
| `pssFallbackProcesses` | {'int': 3778} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
