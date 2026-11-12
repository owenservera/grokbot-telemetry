# sandbox_telemetry_parse — 2026-11-12 20:11:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2308915 lines=5110
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5101 |
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
| `chromeBrowserPssKb` | {'int': 5101} |
| `chromeGpuPssKb` | {'int': 5101} |
| `chromeOtherPssKb` | {'int': 5101} |
| `chromeProcesses` | {'int': 5101} |
| `chromeProfiles` | {'int': 5101} |
| `chromeRendererMaxPssKb` | {'int': 5101} |
| `chromeRendererPssKb` | {'int': 5101} |
| `chromeRenderers` | {'int': 5101} |
| `chromeTabs` | {'int': 5101} |
| `chromeTabsProbedProfiles` | {'int': 5101} |
| `chromeUtilityPssKb` | {'int': 5101} |
| `desktopPssKb` | {'int': 5101} |
| `hostPssKb` | {'int': 5101} |
| `kind` | {'str': 5101} |
| `memAvailableKb` | {'int': 5101} |
| `memTotalKb` | {'int': 5101} |
| `otherPssKb` | {'int': 5101} |
| `processes` | {'int': 5101} |
| `pssFallbackProcesses` | {'int': 5101} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
