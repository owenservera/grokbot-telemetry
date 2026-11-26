# sandbox_telemetry_parse — 2026-11-26 06:16:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3114272 lines=6898
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6883 |
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
| `chromeBrowserPssKb` | {'int': 6883} |
| `chromeGpuPssKb` | {'int': 6883} |
| `chromeOtherPssKb` | {'int': 6883} |
| `chromeProcesses` | {'int': 6883} |
| `chromeProfiles` | {'int': 6883} |
| `chromeRendererMaxPssKb` | {'int': 6883} |
| `chromeRendererPssKb` | {'int': 6883} |
| `chromeRenderers` | {'int': 6883} |
| `chromeTabs` | {'int': 6883} |
| `chromeTabsProbedProfiles` | {'int': 6883} |
| `chromeUtilityPssKb` | {'int': 6883} |
| `desktopPssKb` | {'int': 6883} |
| `hostPssKb` | {'int': 6883} |
| `kind` | {'str': 6883} |
| `memAvailableKb` | {'int': 6883} |
| `memTotalKb` | {'int': 6883} |
| `otherPssKb` | {'int': 6883} |
| `processes` | {'int': 6883} |
| `pssFallbackProcesses` | {'int': 6883} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
