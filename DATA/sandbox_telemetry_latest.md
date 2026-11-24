# sandbox_telemetry_parse — 2026-11-24 19:08:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2409640 lines=5340
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5325 |
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
| `chromeBrowserPssKb` | {'int': 5325} |
| `chromeGpuPssKb` | {'int': 5325} |
| `chromeOtherPssKb` | {'int': 5325} |
| `chromeProcesses` | {'int': 5325} |
| `chromeProfiles` | {'int': 5325} |
| `chromeRendererMaxPssKb` | {'int': 5325} |
| `chromeRendererPssKb` | {'int': 5325} |
| `chromeRenderers` | {'int': 5325} |
| `chromeTabs` | {'int': 5325} |
| `chromeTabsProbedProfiles` | {'int': 5325} |
| `chromeUtilityPssKb` | {'int': 5325} |
| `desktopPssKb` | {'int': 5325} |
| `hostPssKb` | {'int': 5325} |
| `kind` | {'str': 5325} |
| `memAvailableKb` | {'int': 5325} |
| `memTotalKb` | {'int': 5325} |
| `otherPssKb` | {'int': 5325} |
| `processes` | {'int': 5325} |
| `pssFallbackProcesses` | {'int': 5325} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
