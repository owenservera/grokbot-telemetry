# sandbox_telemetry_parse — 2026-11-16 16:58:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=50307 lines=117
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 110 |
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
| `chromeBrowserPssKb` | {'int': 110} |
| `chromeGpuPssKb` | {'int': 110} |
| `chromeOtherPssKb` | {'int': 110} |
| `chromeProcesses` | {'int': 110} |
| `chromeProfiles` | {'int': 110} |
| `chromeRendererMaxPssKb` | {'int': 110} |
| `chromeRendererPssKb` | {'int': 110} |
| `chromeRenderers` | {'int': 110} |
| `chromeTabs` | {'int': 110} |
| `chromeTabsProbedProfiles` | {'int': 110} |
| `chromeUtilityPssKb` | {'int': 110} |
| `desktopPssKb` | {'int': 110} |
| `hostPssKb` | {'int': 110} |
| `kind` | {'str': 110} |
| `memAvailableKb` | {'int': 110} |
| `memTotalKb` | {'int': 110} |
| `otherPssKb` | {'int': 110} |
| `processes` | {'int': 110} |
| `pssFallbackProcesses` | {'int': 110} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
