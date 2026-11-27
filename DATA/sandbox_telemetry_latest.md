# sandbox_telemetry_parse — 2026-11-27 15:22:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=477392 lines=1062
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1054 |
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
| `chromeBrowserPssKb` | {'int': 1054} |
| `chromeGpuPssKb` | {'int': 1054} |
| `chromeOtherPssKb` | {'int': 1054} |
| `chromeProcesses` | {'int': 1054} |
| `chromeProfiles` | {'int': 1054} |
| `chromeRendererMaxPssKb` | {'int': 1054} |
| `chromeRendererPssKb` | {'int': 1054} |
| `chromeRenderers` | {'int': 1054} |
| `chromeTabs` | {'int': 1054} |
| `chromeTabsProbedProfiles` | {'int': 1054} |
| `chromeUtilityPssKb` | {'int': 1054} |
| `desktopPssKb` | {'int': 1054} |
| `hostPssKb` | {'int': 1054} |
| `kind` | {'str': 1054} |
| `memAvailableKb` | {'int': 1054} |
| `memTotalKb` | {'int': 1054} |
| `otherPssKb` | {'int': 1054} |
| `processes` | {'int': 1054} |
| `pssFallbackProcesses` | {'int': 1054} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
