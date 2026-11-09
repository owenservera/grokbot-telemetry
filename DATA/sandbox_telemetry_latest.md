# sandbox_telemetry_parse — 2026-11-09 19:14:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=805097 lines=1787
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1778 |
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
| `chromeBrowserPssKb` | {'int': 1778} |
| `chromeGpuPssKb` | {'int': 1778} |
| `chromeOtherPssKb` | {'int': 1778} |
| `chromeProcesses` | {'int': 1778} |
| `chromeProfiles` | {'int': 1778} |
| `chromeRendererMaxPssKb` | {'int': 1778} |
| `chromeRendererPssKb` | {'int': 1778} |
| `chromeRenderers` | {'int': 1778} |
| `chromeTabs` | {'int': 1778} |
| `chromeTabsProbedProfiles` | {'int': 1778} |
| `chromeUtilityPssKb` | {'int': 1778} |
| `desktopPssKb` | {'int': 1778} |
| `hostPssKb` | {'int': 1778} |
| `kind` | {'str': 1778} |
| `memAvailableKb` | {'int': 1778} |
| `memTotalKb` | {'int': 1778} |
| `otherPssKb` | {'int': 1778} |
| `processes` | {'int': 1778} |
| `pssFallbackProcesses` | {'int': 1778} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
