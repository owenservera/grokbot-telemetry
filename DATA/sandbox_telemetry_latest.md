# sandbox_telemetry_parse — 2026-11-26 06:52:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3127395 lines=6927
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6912 |
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
| `chromeBrowserPssKb` | {'int': 6912} |
| `chromeGpuPssKb` | {'int': 6912} |
| `chromeOtherPssKb` | {'int': 6912} |
| `chromeProcesses` | {'int': 6912} |
| `chromeProfiles` | {'int': 6912} |
| `chromeRendererMaxPssKb` | {'int': 6912} |
| `chromeRendererPssKb` | {'int': 6912} |
| `chromeRenderers` | {'int': 6912} |
| `chromeTabs` | {'int': 6912} |
| `chromeTabsProbedProfiles` | {'int': 6912} |
| `chromeUtilityPssKb` | {'int': 6912} |
| `desktopPssKb` | {'int': 6912} |
| `hostPssKb` | {'int': 6912} |
| `kind` | {'str': 6912} |
| `memAvailableKb` | {'int': 6912} |
| `memTotalKb` | {'int': 6912} |
| `otherPssKb` | {'int': 6912} |
| `processes` | {'int': 6912} |
| `pssFallbackProcesses` | {'int': 6912} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
