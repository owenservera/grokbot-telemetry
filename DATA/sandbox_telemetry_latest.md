# sandbox_telemetry_parse — 2026-11-25 22:23:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2948711 lines=6532
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6517 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6517} |
| `chromeGpuPssKb` | {'int': 6517} |
| `chromeOtherPssKb` | {'int': 6517} |
| `chromeProcesses` | {'int': 6517} |
| `chromeProfiles` | {'int': 6517} |
| `chromeRendererMaxPssKb` | {'int': 6517} |
| `chromeRendererPssKb` | {'int': 6517} |
| `chromeRenderers` | {'int': 6517} |
| `chromeTabs` | {'int': 6517} |
| `chromeTabsProbedProfiles` | {'int': 6517} |
| `chromeUtilityPssKb` | {'int': 6517} |
| `desktopPssKb` | {'int': 6517} |
| `hostPssKb` | {'int': 6517} |
| `kind` | {'str': 6517} |
| `memAvailableKb` | {'int': 6517} |
| `memTotalKb` | {'int': 6517} |
| `otherPssKb` | {'int': 6517} |
| `processes` | {'int': 6517} |
| `pssFallbackProcesses` | {'int': 6517} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
