# sandbox_telemetry_parse — 2026-11-17 17:51:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=478493 lines=1064
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1057 |
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
| `chromeBrowserPssKb` | {'int': 1057} |
| `chromeGpuPssKb` | {'int': 1057} |
| `chromeOtherPssKb` | {'int': 1057} |
| `chromeProcesses` | {'int': 1057} |
| `chromeProfiles` | {'int': 1057} |
| `chromeRendererMaxPssKb` | {'int': 1057} |
| `chromeRendererPssKb` | {'int': 1057} |
| `chromeRenderers` | {'int': 1057} |
| `chromeTabs` | {'int': 1057} |
| `chromeTabsProbedProfiles` | {'int': 1057} |
| `chromeUtilityPssKb` | {'int': 1057} |
| `desktopPssKb` | {'int': 1057} |
| `hostPssKb` | {'int': 1057} |
| `kind` | {'str': 1057} |
| `memAvailableKb` | {'int': 1057} |
| `memTotalKb` | {'int': 1057} |
| `otherPssKb` | {'int': 1057} |
| `processes` | {'int': 1057} |
| `pssFallbackProcesses` | {'int': 1057} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
