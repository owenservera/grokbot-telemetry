# sandbox_telemetry_parse — 2026-11-27 04:55:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=245784 lines=550
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 542 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 542} |
| `chromeGpuPssKb` | {'int': 542} |
| `chromeOtherPssKb` | {'int': 542} |
| `chromeProcesses` | {'int': 542} |
| `chromeProfiles` | {'int': 542} |
| `chromeRendererMaxPssKb` | {'int': 542} |
| `chromeRendererPssKb` | {'int': 542} |
| `chromeRenderers` | {'int': 542} |
| `chromeTabs` | {'int': 542} |
| `chromeTabsProbedProfiles` | {'int': 542} |
| `chromeUtilityPssKb` | {'int': 542} |
| `desktopPssKb` | {'int': 542} |
| `hostPssKb` | {'int': 542} |
| `kind` | {'str': 542} |
| `memAvailableKb` | {'int': 542} |
| `memTotalKb` | {'int': 542} |
| `otherPssKb` | {'int': 542} |
| `processes` | {'int': 542} |
| `pssFallbackProcesses` | {'int': 542} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
