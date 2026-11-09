# sandbox_telemetry_parse — 2026-11-09 09:59:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=602760 lines=1340
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1331 |
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
| `chromeBrowserPssKb` | {'int': 1331} |
| `chromeGpuPssKb` | {'int': 1331} |
| `chromeOtherPssKb` | {'int': 1331} |
| `chromeProcesses` | {'int': 1331} |
| `chromeProfiles` | {'int': 1331} |
| `chromeRendererMaxPssKb` | {'int': 1331} |
| `chromeRendererPssKb` | {'int': 1331} |
| `chromeRenderers` | {'int': 1331} |
| `chromeTabs` | {'int': 1331} |
| `chromeTabsProbedProfiles` | {'int': 1331} |
| `chromeUtilityPssKb` | {'int': 1331} |
| `desktopPssKb` | {'int': 1331} |
| `hostPssKb` | {'int': 1331} |
| `kind` | {'str': 1331} |
| `memAvailableKb` | {'int': 1331} |
| `memTotalKb` | {'int': 1331} |
| `otherPssKb` | {'int': 1331} |
| `processes` | {'int': 1331} |
| `pssFallbackProcesses` | {'int': 1331} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
