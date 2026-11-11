# sandbox_telemetry_parse — 2026-11-11 21:27:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1824995 lines=4041
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4032 |
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
| `chromeBrowserPssKb` | {'int': 4032} |
| `chromeGpuPssKb` | {'int': 4032} |
| `chromeOtherPssKb` | {'int': 4032} |
| `chromeProcesses` | {'int': 4032} |
| `chromeProfiles` | {'int': 4032} |
| `chromeRendererMaxPssKb` | {'int': 4032} |
| `chromeRendererPssKb` | {'int': 4032} |
| `chromeRenderers` | {'int': 4032} |
| `chromeTabs` | {'int': 4032} |
| `chromeTabsProbedProfiles` | {'int': 4032} |
| `chromeUtilityPssKb` | {'int': 4032} |
| `desktopPssKb` | {'int': 4032} |
| `hostPssKb` | {'int': 4032} |
| `kind` | {'str': 4032} |
| `memAvailableKb` | {'int': 4032} |
| `memTotalKb` | {'int': 4032} |
| `otherPssKb` | {'int': 4032} |
| `processes` | {'int': 4032} |
| `pssFallbackProcesses` | {'int': 4032} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
