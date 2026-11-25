# sandbox_telemetry_parse — 2026-11-25 22:17:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2947807 lines=6530
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6515 |
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
| `chromeBrowserPssKb` | {'int': 6515} |
| `chromeGpuPssKb` | {'int': 6515} |
| `chromeOtherPssKb` | {'int': 6515} |
| `chromeProcesses` | {'int': 6515} |
| `chromeProfiles` | {'int': 6515} |
| `chromeRendererMaxPssKb` | {'int': 6515} |
| `chromeRendererPssKb` | {'int': 6515} |
| `chromeRenderers` | {'int': 6515} |
| `chromeTabs` | {'int': 6515} |
| `chromeTabsProbedProfiles` | {'int': 6515} |
| `chromeUtilityPssKb` | {'int': 6515} |
| `desktopPssKb` | {'int': 6515} |
| `hostPssKb` | {'int': 6515} |
| `kind` | {'str': 6515} |
| `memAvailableKb` | {'int': 6515} |
| `memTotalKb` | {'int': 6515} |
| `otherPssKb` | {'int': 6515} |
| `processes` | {'int': 6515} |
| `pssFallbackProcesses` | {'int': 6515} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
