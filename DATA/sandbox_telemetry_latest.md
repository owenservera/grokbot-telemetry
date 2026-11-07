# sandbox_telemetry_parse — 2026-11-07 07:23:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=358482 lines=800
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 791 |
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
| `chromeBrowserPssKb` | {'int': 791} |
| `chromeGpuPssKb` | {'int': 791} |
| `chromeOtherPssKb` | {'int': 791} |
| `chromeProcesses` | {'int': 791} |
| `chromeProfiles` | {'int': 791} |
| `chromeRendererMaxPssKb` | {'int': 791} |
| `chromeRendererPssKb` | {'int': 791} |
| `chromeRenderers` | {'int': 791} |
| `chromeTabs` | {'int': 791} |
| `chromeTabsProbedProfiles` | {'int': 791} |
| `chromeUtilityPssKb` | {'int': 791} |
| `desktopPssKb` | {'int': 791} |
| `hostPssKb` | {'int': 791} |
| `kind` | {'str': 791} |
| `memAvailableKb` | {'int': 791} |
| `memTotalKb` | {'int': 791} |
| `otherPssKb` | {'int': 791} |
| `processes` | {'int': 791} |
| `pssFallbackProcesses` | {'int': 791} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
