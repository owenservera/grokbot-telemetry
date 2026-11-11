# sandbox_telemetry_parse — 2026-11-11 15:18:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1689666 lines=3742
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3733 |
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
| `chromeBrowserPssKb` | {'int': 3733} |
| `chromeGpuPssKb` | {'int': 3733} |
| `chromeOtherPssKb` | {'int': 3733} |
| `chromeProcesses` | {'int': 3733} |
| `chromeProfiles` | {'int': 3733} |
| `chromeRendererMaxPssKb` | {'int': 3733} |
| `chromeRendererPssKb` | {'int': 3733} |
| `chromeRenderers` | {'int': 3733} |
| `chromeTabs` | {'int': 3733} |
| `chromeTabsProbedProfiles` | {'int': 3733} |
| `chromeUtilityPssKb` | {'int': 3733} |
| `desktopPssKb` | {'int': 3733} |
| `hostPssKb` | {'int': 3733} |
| `kind` | {'str': 3733} |
| `memAvailableKb` | {'int': 3733} |
| `memTotalKb` | {'int': 3733} |
| `otherPssKb` | {'int': 3733} |
| `processes` | {'int': 3733} |
| `pssFallbackProcesses` | {'int': 3733} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
