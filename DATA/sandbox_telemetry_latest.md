# sandbox_telemetry_parse — 2026-11-11 19:00:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1770668 lines=3921
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3912 |
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
| `chromeBrowserPssKb` | {'int': 3912} |
| `chromeGpuPssKb` | {'int': 3912} |
| `chromeOtherPssKb` | {'int': 3912} |
| `chromeProcesses` | {'int': 3912} |
| `chromeProfiles` | {'int': 3912} |
| `chromeRendererMaxPssKb` | {'int': 3912} |
| `chromeRendererPssKb` | {'int': 3912} |
| `chromeRenderers` | {'int': 3912} |
| `chromeTabs` | {'int': 3912} |
| `chromeTabsProbedProfiles` | {'int': 3912} |
| `chromeUtilityPssKb` | {'int': 3912} |
| `desktopPssKb` | {'int': 3912} |
| `hostPssKb` | {'int': 3912} |
| `kind` | {'str': 3912} |
| `memAvailableKb` | {'int': 3912} |
| `memTotalKb` | {'int': 3912} |
| `otherPssKb` | {'int': 3912} |
| `processes` | {'int': 3912} |
| `pssFallbackProcesses` | {'int': 3912} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
