# sandbox_telemetry_parse — 2026-11-07 06:54:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=352606 lines=787
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 778 |
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
| `chromeBrowserPssKb` | {'int': 778} |
| `chromeGpuPssKb` | {'int': 778} |
| `chromeOtherPssKb` | {'int': 778} |
| `chromeProcesses` | {'int': 778} |
| `chromeProfiles` | {'int': 778} |
| `chromeRendererMaxPssKb` | {'int': 778} |
| `chromeRendererPssKb` | {'int': 778} |
| `chromeRenderers` | {'int': 778} |
| `chromeTabs` | {'int': 778} |
| `chromeTabsProbedProfiles` | {'int': 778} |
| `chromeUtilityPssKb` | {'int': 778} |
| `desktopPssKb` | {'int': 778} |
| `hostPssKb` | {'int': 778} |
| `kind` | {'str': 778} |
| `memAvailableKb` | {'int': 778} |
| `memTotalKb` | {'int': 778} |
| `otherPssKb` | {'int': 778} |
| `processes` | {'int': 778} |
| `pssFallbackProcesses` | {'int': 778} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
