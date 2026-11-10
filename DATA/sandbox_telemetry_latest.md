# sandbox_telemetry_parse — 2026-11-10 20:59:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1318254 lines=2921
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2912 |
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
| `chromeBrowserPssKb` | {'int': 2912} |
| `chromeGpuPssKb` | {'int': 2912} |
| `chromeOtherPssKb` | {'int': 2912} |
| `chromeProcesses` | {'int': 2912} |
| `chromeProfiles` | {'int': 2912} |
| `chromeRendererMaxPssKb` | {'int': 2912} |
| `chromeRendererPssKb` | {'int': 2912} |
| `chromeRenderers` | {'int': 2912} |
| `chromeTabs` | {'int': 2912} |
| `chromeTabsProbedProfiles` | {'int': 2912} |
| `chromeUtilityPssKb` | {'int': 2912} |
| `desktopPssKb` | {'int': 2912} |
| `hostPssKb` | {'int': 2912} |
| `kind` | {'str': 2912} |
| `memAvailableKb` | {'int': 2912} |
| `memTotalKb` | {'int': 2912} |
| `otherPssKb` | {'int': 2912} |
| `processes` | {'int': 2912} |
| `pssFallbackProcesses` | {'int': 2912} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
