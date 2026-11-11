# sandbox_telemetry_parse — 2026-11-11 10:12:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1577881 lines=3495
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3486 |
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
| `chromeBrowserPssKb` | {'int': 3486} |
| `chromeGpuPssKb` | {'int': 3486} |
| `chromeOtherPssKb` | {'int': 3486} |
| `chromeProcesses` | {'int': 3486} |
| `chromeProfiles` | {'int': 3486} |
| `chromeRendererMaxPssKb` | {'int': 3486} |
| `chromeRendererPssKb` | {'int': 3486} |
| `chromeRenderers` | {'int': 3486} |
| `chromeTabs` | {'int': 3486} |
| `chromeTabsProbedProfiles` | {'int': 3486} |
| `chromeUtilityPssKb` | {'int': 3486} |
| `desktopPssKb` | {'int': 3486} |
| `hostPssKb` | {'int': 3486} |
| `kind` | {'str': 3486} |
| `memAvailableKb` | {'int': 3486} |
| `memTotalKb` | {'int': 3486} |
| `otherPssKb` | {'int': 3486} |
| `processes` | {'int': 3486} |
| `pssFallbackProcesses` | {'int': 3486} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
