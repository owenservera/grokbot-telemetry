# sandbox_telemetry_parse — 2026-11-20 00:20:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1505970 lines=3339
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3328 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3328} |
| `chromeGpuPssKb` | {'int': 3328} |
| `chromeOtherPssKb` | {'int': 3328} |
| `chromeProcesses` | {'int': 3328} |
| `chromeProfiles` | {'int': 3328} |
| `chromeRendererMaxPssKb` | {'int': 3328} |
| `chromeRendererPssKb` | {'int': 3328} |
| `chromeRenderers` | {'int': 3328} |
| `chromeTabs` | {'int': 3328} |
| `chromeTabsProbedProfiles` | {'int': 3328} |
| `chromeUtilityPssKb` | {'int': 3328} |
| `desktopPssKb` | {'int': 3328} |
| `hostPssKb` | {'int': 3328} |
| `kind` | {'str': 3328} |
| `memAvailableKb` | {'int': 3328} |
| `memTotalKb` | {'int': 3328} |
| `otherPssKb` | {'int': 3328} |
| `processes` | {'int': 3328} |
| `pssFallbackProcesses` | {'int': 3328} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
