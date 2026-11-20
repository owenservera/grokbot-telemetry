# sandbox_telemetry_parse — 2026-11-20 19:53:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1859771 lines=4123
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4110 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4110} |
| `chromeGpuPssKb` | {'int': 4110} |
| `chromeOtherPssKb` | {'int': 4110} |
| `chromeProcesses` | {'int': 4110} |
| `chromeProfiles` | {'int': 4110} |
| `chromeRendererMaxPssKb` | {'int': 4110} |
| `chromeRendererPssKb` | {'int': 4110} |
| `chromeRenderers` | {'int': 4110} |
| `chromeTabs` | {'int': 4110} |
| `chromeTabsProbedProfiles` | {'int': 4110} |
| `chromeUtilityPssKb` | {'int': 4110} |
| `desktopPssKb` | {'int': 4110} |
| `hostPssKb` | {'int': 4110} |
| `kind` | {'str': 4110} |
| `memAvailableKb` | {'int': 4110} |
| `memTotalKb` | {'int': 4110} |
| `otherPssKb` | {'int': 4110} |
| `processes` | {'int': 4110} |
| `pssFallbackProcesses` | {'int': 4110} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
