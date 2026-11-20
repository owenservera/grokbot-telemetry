# sandbox_telemetry_parse — 2026-11-20 13:54:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1742882 lines=3863
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3852 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3852} |
| `chromeGpuPssKb` | {'int': 3852} |
| `chromeOtherPssKb` | {'int': 3852} |
| `chromeProcesses` | {'int': 3852} |
| `chromeProfiles` | {'int': 3852} |
| `chromeRendererMaxPssKb` | {'int': 3852} |
| `chromeRendererPssKb` | {'int': 3852} |
| `chromeRenderers` | {'int': 3852} |
| `chromeTabs` | {'int': 3852} |
| `chromeTabsProbedProfiles` | {'int': 3852} |
| `chromeUtilityPssKb` | {'int': 3852} |
| `desktopPssKb` | {'int': 3852} |
| `hostPssKb` | {'int': 3852} |
| `kind` | {'str': 3852} |
| `memAvailableKb` | {'int': 3852} |
| `memTotalKb` | {'int': 3852} |
| `otherPssKb` | {'int': 3852} |
| `processes` | {'int': 3852} |
| `pssFallbackProcesses` | {'int': 3852} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
