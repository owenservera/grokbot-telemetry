# sandbox_telemetry_parse — 2026-11-26 03:35:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3053640 lines=6764
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6749 |
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
| `chromeBrowserPssKb` | {'int': 6749} |
| `chromeGpuPssKb` | {'int': 6749} |
| `chromeOtherPssKb` | {'int': 6749} |
| `chromeProcesses` | {'int': 6749} |
| `chromeProfiles` | {'int': 6749} |
| `chromeRendererMaxPssKb` | {'int': 6749} |
| `chromeRendererPssKb` | {'int': 6749} |
| `chromeRenderers` | {'int': 6749} |
| `chromeTabs` | {'int': 6749} |
| `chromeTabsProbedProfiles` | {'int': 6749} |
| `chromeUtilityPssKb` | {'int': 6749} |
| `desktopPssKb` | {'int': 6749} |
| `hostPssKb` | {'int': 6749} |
| `kind` | {'str': 6749} |
| `memAvailableKb` | {'int': 6749} |
| `memTotalKb` | {'int': 6749} |
| `otherPssKb` | {'int': 6749} |
| `processes` | {'int': 6749} |
| `pssFallbackProcesses` | {'int': 6749} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
