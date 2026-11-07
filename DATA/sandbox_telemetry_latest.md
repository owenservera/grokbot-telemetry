# sandbox_telemetry_parse — 2026-11-07 12:46:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=467039 lines=1040
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1031 |
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
| `chromeBrowserPssKb` | {'int': 1031} |
| `chromeGpuPssKb` | {'int': 1031} |
| `chromeOtherPssKb` | {'int': 1031} |
| `chromeProcesses` | {'int': 1031} |
| `chromeProfiles` | {'int': 1031} |
| `chromeRendererMaxPssKb` | {'int': 1031} |
| `chromeRendererPssKb` | {'int': 1031} |
| `chromeRenderers` | {'int': 1031} |
| `chromeTabs` | {'int': 1031} |
| `chromeTabsProbedProfiles` | {'int': 1031} |
| `chromeUtilityPssKb` | {'int': 1031} |
| `desktopPssKb` | {'int': 1031} |
| `hostPssKb` | {'int': 1031} |
| `kind` | {'str': 1031} |
| `memAvailableKb` | {'int': 1031} |
| `memTotalKb` | {'int': 1031} |
| `otherPssKb` | {'int': 1031} |
| `processes` | {'int': 1031} |
| `pssFallbackProcesses` | {'int': 1031} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
