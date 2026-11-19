# sandbox_telemetry_parse — 2026-11-19 17:58:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1382027 lines=3065
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3054 |
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
| `chromeBrowserPssKb` | {'int': 3054} |
| `chromeGpuPssKb` | {'int': 3054} |
| `chromeOtherPssKb` | {'int': 3054} |
| `chromeProcesses` | {'int': 3054} |
| `chromeProfiles` | {'int': 3054} |
| `chromeRendererMaxPssKb` | {'int': 3054} |
| `chromeRendererPssKb` | {'int': 3054} |
| `chromeRenderers` | {'int': 3054} |
| `chromeTabs` | {'int': 3054} |
| `chromeTabsProbedProfiles` | {'int': 3054} |
| `chromeUtilityPssKb` | {'int': 3054} |
| `desktopPssKb` | {'int': 3054} |
| `hostPssKb` | {'int': 3054} |
| `kind` | {'str': 3054} |
| `memAvailableKb` | {'int': 3054} |
| `memTotalKb` | {'int': 3054} |
| `otherPssKb` | {'int': 3054} |
| `processes` | {'int': 3054} |
| `pssFallbackProcesses` | {'int': 3054} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
