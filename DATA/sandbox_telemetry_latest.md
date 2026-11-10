# sandbox_telemetry_parse — 2026-11-10 02:22:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=950312 lines=2108
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2099 |
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
| `chromeBrowserPssKb` | {'int': 2099} |
| `chromeGpuPssKb` | {'int': 2099} |
| `chromeOtherPssKb` | {'int': 2099} |
| `chromeProcesses` | {'int': 2099} |
| `chromeProfiles` | {'int': 2099} |
| `chromeRendererMaxPssKb` | {'int': 2099} |
| `chromeRendererPssKb` | {'int': 2099} |
| `chromeRenderers` | {'int': 2099} |
| `chromeTabs` | {'int': 2099} |
| `chromeTabsProbedProfiles` | {'int': 2099} |
| `chromeUtilityPssKb` | {'int': 2099} |
| `desktopPssKb` | {'int': 2099} |
| `hostPssKb` | {'int': 2099} |
| `kind` | {'str': 2099} |
| `memAvailableKb` | {'int': 2099} |
| `memTotalKb` | {'int': 2099} |
| `otherPssKb` | {'int': 2099} |
| `processes` | {'int': 2099} |
| `pssFallbackProcesses` | {'int': 2099} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
