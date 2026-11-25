# sandbox_telemetry_parse — 2026-11-25 20:33:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2912983 lines=6453
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6438 |
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
| `chromeBrowserPssKb` | {'int': 6438} |
| `chromeGpuPssKb` | {'int': 6438} |
| `chromeOtherPssKb` | {'int': 6438} |
| `chromeProcesses` | {'int': 6438} |
| `chromeProfiles` | {'int': 6438} |
| `chromeRendererMaxPssKb` | {'int': 6438} |
| `chromeRendererPssKb` | {'int': 6438} |
| `chromeRenderers` | {'int': 6438} |
| `chromeTabs` | {'int': 6438} |
| `chromeTabsProbedProfiles` | {'int': 6438} |
| `chromeUtilityPssKb` | {'int': 6438} |
| `desktopPssKb` | {'int': 6438} |
| `hostPssKb` | {'int': 6438} |
| `kind` | {'str': 6438} |
| `memAvailableKb` | {'int': 6438} |
| `memTotalKb` | {'int': 6438} |
| `otherPssKb` | {'int': 6438} |
| `processes` | {'int': 6438} |
| `pssFallbackProcesses` | {'int': 6438} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
