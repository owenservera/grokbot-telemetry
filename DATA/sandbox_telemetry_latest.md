# sandbox_telemetry_parse — 2026-11-11 02:03:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1425948 lines=3159
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3150 |
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
| `chromeBrowserPssKb` | {'int': 3150} |
| `chromeGpuPssKb` | {'int': 3150} |
| `chromeOtherPssKb` | {'int': 3150} |
| `chromeProcesses` | {'int': 3150} |
| `chromeProfiles` | {'int': 3150} |
| `chromeRendererMaxPssKb` | {'int': 3150} |
| `chromeRendererPssKb` | {'int': 3150} |
| `chromeRenderers` | {'int': 3150} |
| `chromeTabs` | {'int': 3150} |
| `chromeTabsProbedProfiles` | {'int': 3150} |
| `chromeUtilityPssKb` | {'int': 3150} |
| `desktopPssKb` | {'int': 3150} |
| `hostPssKb` | {'int': 3150} |
| `kind` | {'str': 3150} |
| `memAvailableKb` | {'int': 3150} |
| `memTotalKb` | {'int': 3150} |
| `otherPssKb` | {'int': 3150} |
| `processes` | {'int': 3150} |
| `pssFallbackProcesses` | {'int': 3150} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
