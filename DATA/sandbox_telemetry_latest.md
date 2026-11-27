# sandbox_telemetry_parse — 2026-11-27 14:25:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=454749 lines=1012
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1004 |
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
| `chromeBrowserPssKb` | {'int': 1004} |
| `chromeGpuPssKb` | {'int': 1004} |
| `chromeOtherPssKb` | {'int': 1004} |
| `chromeProcesses` | {'int': 1004} |
| `chromeProfiles` | {'int': 1004} |
| `chromeRendererMaxPssKb` | {'int': 1004} |
| `chromeRendererPssKb` | {'int': 1004} |
| `chromeRenderers` | {'int': 1004} |
| `chromeTabs` | {'int': 1004} |
| `chromeTabsProbedProfiles` | {'int': 1004} |
| `chromeUtilityPssKb` | {'int': 1004} |
| `desktopPssKb` | {'int': 1004} |
| `hostPssKb` | {'int': 1004} |
| `kind` | {'str': 1004} |
| `memAvailableKb` | {'int': 1004} |
| `memTotalKb` | {'int': 1004} |
| `otherPssKb` | {'int': 1004} |
| `processes` | {'int': 1004} |
| `pssFallbackProcesses` | {'int': 1004} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
