# sandbox_telemetry_parse — 2026-11-18 15:08:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=865100 lines=1919
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1912 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1912} |
| `chromeGpuPssKb` | {'int': 1912} |
| `chromeOtherPssKb` | {'int': 1912} |
| `chromeProcesses` | {'int': 1912} |
| `chromeProfiles` | {'int': 1912} |
| `chromeRendererMaxPssKb` | {'int': 1912} |
| `chromeRendererPssKb` | {'int': 1912} |
| `chromeRenderers` | {'int': 1912} |
| `chromeTabs` | {'int': 1912} |
| `chromeTabsProbedProfiles` | {'int': 1912} |
| `chromeUtilityPssKb` | {'int': 1912} |
| `desktopPssKb` | {'int': 1912} |
| `hostPssKb` | {'int': 1912} |
| `kind` | {'str': 1912} |
| `memAvailableKb` | {'int': 1912} |
| `memTotalKb` | {'int': 1912} |
| `otherPssKb` | {'int': 1912} |
| `processes` | {'int': 1912} |
| `pssFallbackProcesses` | {'int': 1912} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
