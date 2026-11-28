# sandbox_telemetry_parse — 2026-11-28 01:13:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=669762 lines=1487
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1479 |
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
| `chromeBrowserPssKb` | {'int': 1479} |
| `chromeGpuPssKb` | {'int': 1479} |
| `chromeOtherPssKb` | {'int': 1479} |
| `chromeProcesses` | {'int': 1479} |
| `chromeProfiles` | {'int': 1479} |
| `chromeRendererMaxPssKb` | {'int': 1479} |
| `chromeRendererPssKb` | {'int': 1479} |
| `chromeRenderers` | {'int': 1479} |
| `chromeTabs` | {'int': 1479} |
| `chromeTabsProbedProfiles` | {'int': 1479} |
| `chromeUtilityPssKb` | {'int': 1479} |
| `desktopPssKb` | {'int': 1479} |
| `hostPssKb` | {'int': 1479} |
| `kind` | {'str': 1479} |
| `memAvailableKb` | {'int': 1479} |
| `memTotalKb` | {'int': 1479} |
| `otherPssKb` | {'int': 1479} |
| `processes` | {'int': 1479} |
| `pssFallbackProcesses` | {'int': 1479} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
