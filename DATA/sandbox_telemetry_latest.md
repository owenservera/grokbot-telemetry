# sandbox_telemetry_parse — 2026-11-28 15:10:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=937592 lines=2079
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2071 |
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
| `chromeBrowserPssKb` | {'int': 2071} |
| `chromeGpuPssKb` | {'int': 2071} |
| `chromeOtherPssKb` | {'int': 2071} |
| `chromeProcesses` | {'int': 2071} |
| `chromeProfiles` | {'int': 2071} |
| `chromeRendererMaxPssKb` | {'int': 2071} |
| `chromeRendererPssKb` | {'int': 2071} |
| `chromeRenderers` | {'int': 2071} |
| `chromeTabs` | {'int': 2071} |
| `chromeTabsProbedProfiles` | {'int': 2071} |
| `chromeUtilityPssKb` | {'int': 2071} |
| `desktopPssKb` | {'int': 2071} |
| `hostPssKb` | {'int': 2071} |
| `kind` | {'str': 2071} |
| `memAvailableKb` | {'int': 2071} |
| `memTotalKb` | {'int': 2071} |
| `otherPssKb` | {'int': 2071} |
| `processes` | {'int': 2071} |
| `pssFallbackProcesses` | {'int': 2071} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
