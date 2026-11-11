# sandbox_telemetry_parse — 2026-11-11 17:45:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1744421 lines=3863
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3854 |
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
| `chromeBrowserPssKb` | {'int': 3854} |
| `chromeGpuPssKb` | {'int': 3854} |
| `chromeOtherPssKb` | {'int': 3854} |
| `chromeProcesses` | {'int': 3854} |
| `chromeProfiles` | {'int': 3854} |
| `chromeRendererMaxPssKb` | {'int': 3854} |
| `chromeRendererPssKb` | {'int': 3854} |
| `chromeRenderers` | {'int': 3854} |
| `chromeTabs` | {'int': 3854} |
| `chromeTabsProbedProfiles` | {'int': 3854} |
| `chromeUtilityPssKb` | {'int': 3854} |
| `desktopPssKb` | {'int': 3854} |
| `hostPssKb` | {'int': 3854} |
| `kind` | {'str': 3854} |
| `memAvailableKb` | {'int': 3854} |
| `memTotalKb` | {'int': 3854} |
| `otherPssKb` | {'int': 3854} |
| `processes` | {'int': 3854} |
| `pssFallbackProcesses` | {'int': 3854} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
