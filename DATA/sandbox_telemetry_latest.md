# sandbox_telemetry_parse — 2026-11-24 08:03:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2199238 lines=4875
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4860 |
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
| `chromeBrowserPssKb` | {'int': 4860} |
| `chromeGpuPssKb` | {'int': 4860} |
| `chromeOtherPssKb` | {'int': 4860} |
| `chromeProcesses` | {'int': 4860} |
| `chromeProfiles` | {'int': 4860} |
| `chromeRendererMaxPssKb` | {'int': 4860} |
| `chromeRendererPssKb` | {'int': 4860} |
| `chromeRenderers` | {'int': 4860} |
| `chromeTabs` | {'int': 4860} |
| `chromeTabsProbedProfiles` | {'int': 4860} |
| `chromeUtilityPssKb` | {'int': 4860} |
| `desktopPssKb` | {'int': 4860} |
| `hostPssKb` | {'int': 4860} |
| `kind` | {'str': 4860} |
| `memAvailableKb` | {'int': 4860} |
| `memTotalKb` | {'int': 4860} |
| `otherPssKb` | {'int': 4860} |
| `processes` | {'int': 4860} |
| `pssFallbackProcesses` | {'int': 4860} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
