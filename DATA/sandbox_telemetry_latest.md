# sandbox_telemetry_parse — 2026-11-24 22:54:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2485655 lines=5508
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5493 |
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
| `chromeBrowserPssKb` | {'int': 5493} |
| `chromeGpuPssKb` | {'int': 5493} |
| `chromeOtherPssKb` | {'int': 5493} |
| `chromeProcesses` | {'int': 5493} |
| `chromeProfiles` | {'int': 5493} |
| `chromeRendererMaxPssKb` | {'int': 5493} |
| `chromeRendererPssKb` | {'int': 5493} |
| `chromeRenderers` | {'int': 5493} |
| `chromeTabs` | {'int': 5493} |
| `chromeTabsProbedProfiles` | {'int': 5493} |
| `chromeUtilityPssKb` | {'int': 5493} |
| `desktopPssKb` | {'int': 5493} |
| `hostPssKb` | {'int': 5493} |
| `kind` | {'str': 5493} |
| `memAvailableKb` | {'int': 5493} |
| `memTotalKb` | {'int': 5493} |
| `otherPssKb` | {'int': 5493} |
| `processes` | {'int': 5493} |
| `pssFallbackProcesses` | {'int': 5493} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
