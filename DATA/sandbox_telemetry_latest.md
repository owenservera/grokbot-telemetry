# sandbox_telemetry_parse — 2026-11-28 05:20:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=748053 lines=1660
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1652 |
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
| `chromeBrowserPssKb` | {'int': 1652} |
| `chromeGpuPssKb` | {'int': 1652} |
| `chromeOtherPssKb` | {'int': 1652} |
| `chromeProcesses` | {'int': 1652} |
| `chromeProfiles` | {'int': 1652} |
| `chromeRendererMaxPssKb` | {'int': 1652} |
| `chromeRendererPssKb` | {'int': 1652} |
| `chromeRenderers` | {'int': 1652} |
| `chromeTabs` | {'int': 1652} |
| `chromeTabsProbedProfiles` | {'int': 1652} |
| `chromeUtilityPssKb` | {'int': 1652} |
| `desktopPssKb` | {'int': 1652} |
| `hostPssKb` | {'int': 1652} |
| `kind` | {'str': 1652} |
| `memAvailableKb` | {'int': 1652} |
| `memTotalKb` | {'int': 1652} |
| `otherPssKb` | {'int': 1652} |
| `processes` | {'int': 1652} |
| `pssFallbackProcesses` | {'int': 1652} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
