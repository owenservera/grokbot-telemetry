# sandbox_telemetry_parse — 2026-11-10 15:27:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1200535 lines=2661
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2652 |
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
| `chromeBrowserPssKb` | {'int': 2652} |
| `chromeGpuPssKb` | {'int': 2652} |
| `chromeOtherPssKb` | {'int': 2652} |
| `chromeProcesses` | {'int': 2652} |
| `chromeProfiles` | {'int': 2652} |
| `chromeRendererMaxPssKb` | {'int': 2652} |
| `chromeRendererPssKb` | {'int': 2652} |
| `chromeRenderers` | {'int': 2652} |
| `chromeTabs` | {'int': 2652} |
| `chromeTabsProbedProfiles` | {'int': 2652} |
| `chromeUtilityPssKb` | {'int': 2652} |
| `desktopPssKb` | {'int': 2652} |
| `hostPssKb` | {'int': 2652} |
| `kind` | {'str': 2652} |
| `memAvailableKb` | {'int': 2652} |
| `memTotalKb` | {'int': 2652} |
| `otherPssKb` | {'int': 2652} |
| `processes` | {'int': 2652} |
| `pssFallbackProcesses` | {'int': 2652} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
