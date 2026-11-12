# sandbox_telemetry_parse — 2026-11-12 10:01:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2075260 lines=4594
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4585 |
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
| `chromeBrowserPssKb` | {'int': 4585} |
| `chromeGpuPssKb` | {'int': 4585} |
| `chromeOtherPssKb` | {'int': 4585} |
| `chromeProcesses` | {'int': 4585} |
| `chromeProfiles` | {'int': 4585} |
| `chromeRendererMaxPssKb` | {'int': 4585} |
| `chromeRendererPssKb` | {'int': 4585} |
| `chromeRenderers` | {'int': 4585} |
| `chromeTabs` | {'int': 4585} |
| `chromeTabsProbedProfiles` | {'int': 4585} |
| `chromeUtilityPssKb` | {'int': 4585} |
| `desktopPssKb` | {'int': 4585} |
| `hostPssKb` | {'int': 4585} |
| `kind` | {'str': 4585} |
| `memAvailableKb` | {'int': 4585} |
| `memTotalKb` | {'int': 4585} |
| `otherPssKb` | {'int': 4585} |
| `processes` | {'int': 4585} |
| `pssFallbackProcesses` | {'int': 4585} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
