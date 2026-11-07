# sandbox_telemetry_parse — 2026-11-07 03:25:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=289766 lines=648
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 639 |
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
| `chromeBrowserPssKb` | {'int': 639} |
| `chromeGpuPssKb` | {'int': 639} |
| `chromeOtherPssKb` | {'int': 639} |
| `chromeProcesses` | {'int': 639} |
| `chromeProfiles` | {'int': 639} |
| `chromeRendererMaxPssKb` | {'int': 639} |
| `chromeRendererPssKb` | {'int': 639} |
| `chromeRenderers` | {'int': 639} |
| `chromeTabs` | {'int': 639} |
| `chromeTabsProbedProfiles` | {'int': 639} |
| `chromeUtilityPssKb` | {'int': 639} |
| `desktopPssKb` | {'int': 639} |
| `hostPssKb` | {'int': 639} |
| `kind` | {'str': 639} |
| `memAvailableKb` | {'int': 639} |
| `memTotalKb` | {'int': 639} |
| `otherPssKb` | {'int': 639} |
| `processes` | {'int': 639} |
| `pssFallbackProcesses` | {'int': 639} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
