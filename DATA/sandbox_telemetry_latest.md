# sandbox_telemetry_parse — 2026-11-06 20:10:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=147738 lines=334
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 325 |
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
| `chromeBrowserPssKb` | {'int': 325} |
| `chromeGpuPssKb` | {'int': 325} |
| `chromeOtherPssKb` | {'int': 325} |
| `chromeProcesses` | {'int': 325} |
| `chromeProfiles` | {'int': 325} |
| `chromeRendererMaxPssKb` | {'int': 325} |
| `chromeRendererPssKb` | {'int': 325} |
| `chromeRenderers` | {'int': 325} |
| `chromeTabs` | {'int': 325} |
| `chromeTabsProbedProfiles` | {'int': 325} |
| `chromeUtilityPssKb` | {'int': 325} |
| `desktopPssKb` | {'int': 325} |
| `hostPssKb` | {'int': 325} |
| `kind` | {'str': 325} |
| `memAvailableKb` | {'int': 325} |
| `memTotalKb` | {'int': 325} |
| `otherPssKb` | {'int': 325} |
| `processes` | {'int': 325} |
| `pssFallbackProcesses` | {'int': 325} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
