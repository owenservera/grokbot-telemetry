# sandbox_telemetry_parse — 2026-11-24 18:08:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2390621 lines=5298
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5283 |
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
| `chromeBrowserPssKb` | {'int': 5283} |
| `chromeGpuPssKb` | {'int': 5283} |
| `chromeOtherPssKb` | {'int': 5283} |
| `chromeProcesses` | {'int': 5283} |
| `chromeProfiles` | {'int': 5283} |
| `chromeRendererMaxPssKb` | {'int': 5283} |
| `chromeRendererPssKb` | {'int': 5283} |
| `chromeRenderers` | {'int': 5283} |
| `chromeTabs` | {'int': 5283} |
| `chromeTabsProbedProfiles` | {'int': 5283} |
| `chromeUtilityPssKb` | {'int': 5283} |
| `desktopPssKb` | {'int': 5283} |
| `hostPssKb` | {'int': 5283} |
| `kind` | {'str': 5283} |
| `memAvailableKb` | {'int': 5283} |
| `memTotalKb` | {'int': 5283} |
| `otherPssKb` | {'int': 5283} |
| `processes` | {'int': 5283} |
| `pssFallbackProcesses` | {'int': 5283} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
