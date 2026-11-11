# sandbox_telemetry_parse — 2026-11-11 14:11:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1666134 lines=3690
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3681 |
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
| `chromeBrowserPssKb` | {'int': 3681} |
| `chromeGpuPssKb` | {'int': 3681} |
| `chromeOtherPssKb` | {'int': 3681} |
| `chromeProcesses` | {'int': 3681} |
| `chromeProfiles` | {'int': 3681} |
| `chromeRendererMaxPssKb` | {'int': 3681} |
| `chromeRendererPssKb` | {'int': 3681} |
| `chromeRenderers` | {'int': 3681} |
| `chromeTabs` | {'int': 3681} |
| `chromeTabsProbedProfiles` | {'int': 3681} |
| `chromeUtilityPssKb` | {'int': 3681} |
| `desktopPssKb` | {'int': 3681} |
| `hostPssKb` | {'int': 3681} |
| `kind` | {'str': 3681} |
| `memAvailableKb` | {'int': 3681} |
| `memTotalKb` | {'int': 3681} |
| `otherPssKb` | {'int': 3681} |
| `processes` | {'int': 3681} |
| `pssFallbackProcesses` | {'int': 3681} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
