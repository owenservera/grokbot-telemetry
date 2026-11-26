# sandbox_telemetry_parse — 2026-11-26 08:34:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3164478 lines=7009
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6994 |
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
| `chromeBrowserPssKb` | {'int': 6994} |
| `chromeGpuPssKb` | {'int': 6994} |
| `chromeOtherPssKb` | {'int': 6994} |
| `chromeProcesses` | {'int': 6994} |
| `chromeProfiles` | {'int': 6994} |
| `chromeRendererMaxPssKb` | {'int': 6994} |
| `chromeRendererPssKb` | {'int': 6994} |
| `chromeRenderers` | {'int': 6994} |
| `chromeTabs` | {'int': 6994} |
| `chromeTabsProbedProfiles` | {'int': 6994} |
| `chromeUtilityPssKb` | {'int': 6994} |
| `desktopPssKb` | {'int': 6994} |
| `hostPssKb` | {'int': 6994} |
| `kind` | {'str': 6994} |
| `memAvailableKb` | {'int': 6994} |
| `memTotalKb` | {'int': 6994} |
| `otherPssKb` | {'int': 6994} |
| `processes` | {'int': 6994} |
| `pssFallbackProcesses` | {'int': 6994} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
