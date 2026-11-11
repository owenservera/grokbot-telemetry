# sandbox_telemetry_parse — 2026-11-11 18:01:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1750307 lines=3876
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3867 |
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
| `chromeBrowserPssKb` | {'int': 3867} |
| `chromeGpuPssKb` | {'int': 3867} |
| `chromeOtherPssKb` | {'int': 3867} |
| `chromeProcesses` | {'int': 3867} |
| `chromeProfiles` | {'int': 3867} |
| `chromeRendererMaxPssKb` | {'int': 3867} |
| `chromeRendererPssKb` | {'int': 3867} |
| `chromeRenderers` | {'int': 3867} |
| `chromeTabs` | {'int': 3867} |
| `chromeTabsProbedProfiles` | {'int': 3867} |
| `chromeUtilityPssKb` | {'int': 3867} |
| `desktopPssKb` | {'int': 3867} |
| `hostPssKb` | {'int': 3867} |
| `kind` | {'str': 3867} |
| `memAvailableKb` | {'int': 3867} |
| `memTotalKb` | {'int': 3867} |
| `otherPssKb` | {'int': 3867} |
| `processes` | {'int': 3867} |
| `pssFallbackProcesses` | {'int': 3867} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
