# sandbox_telemetry_parse — 2026-11-19 11:26:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1251071 lines=2774
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2765 |
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
| `chromeBrowserPssKb` | {'int': 2765} |
| `chromeGpuPssKb` | {'int': 2765} |
| `chromeOtherPssKb` | {'int': 2765} |
| `chromeProcesses` | {'int': 2765} |
| `chromeProfiles` | {'int': 2765} |
| `chromeRendererMaxPssKb` | {'int': 2765} |
| `chromeRendererPssKb` | {'int': 2765} |
| `chromeRenderers` | {'int': 2765} |
| `chromeTabs` | {'int': 2765} |
| `chromeTabsProbedProfiles` | {'int': 2765} |
| `chromeUtilityPssKb` | {'int': 2765} |
| `desktopPssKb` | {'int': 2765} |
| `hostPssKb` | {'int': 2765} |
| `kind` | {'str': 2765} |
| `memAvailableKb` | {'int': 2765} |
| `memTotalKb` | {'int': 2765} |
| `otherPssKb` | {'int': 2765} |
| `processes` | {'int': 2765} |
| `pssFallbackProcesses` | {'int': 2765} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
