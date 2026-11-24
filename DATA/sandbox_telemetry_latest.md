# sandbox_telemetry_parse — 2026-11-24 10:13:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2239936 lines=4965
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4950 |
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
| `chromeBrowserPssKb` | {'int': 4950} |
| `chromeGpuPssKb` | {'int': 4950} |
| `chromeOtherPssKb` | {'int': 4950} |
| `chromeProcesses` | {'int': 4950} |
| `chromeProfiles` | {'int': 4950} |
| `chromeRendererMaxPssKb` | {'int': 4950} |
| `chromeRendererPssKb` | {'int': 4950} |
| `chromeRenderers` | {'int': 4950} |
| `chromeTabs` | {'int': 4950} |
| `chromeTabsProbedProfiles` | {'int': 4950} |
| `chromeUtilityPssKb` | {'int': 4950} |
| `desktopPssKb` | {'int': 4950} |
| `hostPssKb` | {'int': 4950} |
| `kind` | {'str': 4950} |
| `memAvailableKb` | {'int': 4950} |
| `memTotalKb` | {'int': 4950} |
| `otherPssKb` | {'int': 4950} |
| `processes` | {'int': 4950} |
| `pssFallbackProcesses` | {'int': 4950} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
