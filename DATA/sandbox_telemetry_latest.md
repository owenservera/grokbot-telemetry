# sandbox_telemetry_parse — 2026-11-12 03:55:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1957632 lines=4334
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4325 |
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
| `chromeBrowserPssKb` | {'int': 4325} |
| `chromeGpuPssKb` | {'int': 4325} |
| `chromeOtherPssKb` | {'int': 4325} |
| `chromeProcesses` | {'int': 4325} |
| `chromeProfiles` | {'int': 4325} |
| `chromeRendererMaxPssKb` | {'int': 4325} |
| `chromeRendererPssKb` | {'int': 4325} |
| `chromeRenderers` | {'int': 4325} |
| `chromeTabs` | {'int': 4325} |
| `chromeTabsProbedProfiles` | {'int': 4325} |
| `chromeUtilityPssKb` | {'int': 4325} |
| `desktopPssKb` | {'int': 4325} |
| `hostPssKb` | {'int': 4325} |
| `kind` | {'str': 4325} |
| `memAvailableKb` | {'int': 4325} |
| `memTotalKb` | {'int': 4325} |
| `otherPssKb` | {'int': 4325} |
| `processes` | {'int': 4325} |
| `pssFallbackProcesses` | {'int': 4325} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
