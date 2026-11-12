# sandbox_telemetry_parse — 2026-11-12 02:25:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1929567 lines=4272
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4263 |
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
| `chromeBrowserPssKb` | {'int': 4263} |
| `chromeGpuPssKb` | {'int': 4263} |
| `chromeOtherPssKb` | {'int': 4263} |
| `chromeProcesses` | {'int': 4263} |
| `chromeProfiles` | {'int': 4263} |
| `chromeRendererMaxPssKb` | {'int': 4263} |
| `chromeRendererPssKb` | {'int': 4263} |
| `chromeRenderers` | {'int': 4263} |
| `chromeTabs` | {'int': 4263} |
| `chromeTabsProbedProfiles` | {'int': 4263} |
| `chromeUtilityPssKb` | {'int': 4263} |
| `desktopPssKb` | {'int': 4263} |
| `hostPssKb` | {'int': 4263} |
| `kind` | {'str': 4263} |
| `memAvailableKb` | {'int': 4263} |
| `memTotalKb` | {'int': 4263} |
| `otherPssKb` | {'int': 4263} |
| `processes` | {'int': 4263} |
| `pssFallbackProcesses` | {'int': 4263} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
