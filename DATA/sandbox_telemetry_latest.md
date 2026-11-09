# sandbox_telemetry_parse — 2026-11-09 21:11:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=839926 lines=1864
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1855 |
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
| `chromeBrowserPssKb` | {'int': 1855} |
| `chromeGpuPssKb` | {'int': 1855} |
| `chromeOtherPssKb` | {'int': 1855} |
| `chromeProcesses` | {'int': 1855} |
| `chromeProfiles` | {'int': 1855} |
| `chromeRendererMaxPssKb` | {'int': 1855} |
| `chromeRendererPssKb` | {'int': 1855} |
| `chromeRenderers` | {'int': 1855} |
| `chromeTabs` | {'int': 1855} |
| `chromeTabsProbedProfiles` | {'int': 1855} |
| `chromeUtilityPssKb` | {'int': 1855} |
| `desktopPssKb` | {'int': 1855} |
| `hostPssKb` | {'int': 1855} |
| `kind` | {'str': 1855} |
| `memAvailableKb` | {'int': 1855} |
| `memTotalKb` | {'int': 1855} |
| `otherPssKb` | {'int': 1855} |
| `processes` | {'int': 1855} |
| `pssFallbackProcesses` | {'int': 1855} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
