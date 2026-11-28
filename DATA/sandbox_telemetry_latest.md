# sandbox_telemetry_parse — 2026-11-28 13:24:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=903658 lines=2004
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1996 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1996} |
| `chromeGpuPssKb` | {'int': 1996} |
| `chromeOtherPssKb` | {'int': 1996} |
| `chromeProcesses` | {'int': 1996} |
| `chromeProfiles` | {'int': 1996} |
| `chromeRendererMaxPssKb` | {'int': 1996} |
| `chromeRendererPssKb` | {'int': 1996} |
| `chromeRenderers` | {'int': 1996} |
| `chromeTabs` | {'int': 1996} |
| `chromeTabsProbedProfiles` | {'int': 1996} |
| `chromeUtilityPssKb` | {'int': 1996} |
| `desktopPssKb` | {'int': 1996} |
| `hostPssKb` | {'int': 1996} |
| `kind` | {'str': 1996} |
| `memAvailableKb` | {'int': 1996} |
| `memTotalKb` | {'int': 1996} |
| `otherPssKb` | {'int': 1996} |
| `processes` | {'int': 1996} |
| `pssFallbackProcesses` | {'int': 1996} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
