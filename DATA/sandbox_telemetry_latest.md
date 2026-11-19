# sandbox_telemetry_parse — 2026-11-19 16:00:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1341120 lines=2973
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2964 |
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
| `chromeBrowserPssKb` | {'int': 2964} |
| `chromeGpuPssKb` | {'int': 2964} |
| `chromeOtherPssKb` | {'int': 2964} |
| `chromeProcesses` | {'int': 2964} |
| `chromeProfiles` | {'int': 2964} |
| `chromeRendererMaxPssKb` | {'int': 2964} |
| `chromeRendererPssKb` | {'int': 2964} |
| `chromeRenderers` | {'int': 2964} |
| `chromeTabs` | {'int': 2964} |
| `chromeTabsProbedProfiles` | {'int': 2964} |
| `chromeUtilityPssKb` | {'int': 2964} |
| `desktopPssKb` | {'int': 2964} |
| `hostPssKb` | {'int': 2964} |
| `kind` | {'str': 2964} |
| `memAvailableKb` | {'int': 2964} |
| `memTotalKb` | {'int': 2964} |
| `otherPssKb` | {'int': 2964} |
| `processes` | {'int': 2964} |
| `pssFallbackProcesses` | {'int': 2964} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
