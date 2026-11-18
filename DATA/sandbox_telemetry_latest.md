# sandbox_telemetry_parse — 2026-11-18 23:57:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1034909 lines=2296
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2287 |
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
| `chromeBrowserPssKb` | {'int': 2287} |
| `chromeGpuPssKb` | {'int': 2287} |
| `chromeOtherPssKb` | {'int': 2287} |
| `chromeProcesses` | {'int': 2287} |
| `chromeProfiles` | {'int': 2287} |
| `chromeRendererMaxPssKb` | {'int': 2287} |
| `chromeRendererPssKb` | {'int': 2287} |
| `chromeRenderers` | {'int': 2287} |
| `chromeTabs` | {'int': 2287} |
| `chromeTabsProbedProfiles` | {'int': 2287} |
| `chromeUtilityPssKb` | {'int': 2287} |
| `desktopPssKb` | {'int': 2287} |
| `hostPssKb` | {'int': 2287} |
| `kind` | {'str': 2287} |
| `memAvailableKb` | {'int': 2287} |
| `memTotalKb` | {'int': 2287} |
| `otherPssKb` | {'int': 2287} |
| `processes` | {'int': 2287} |
| `pssFallbackProcesses` | {'int': 2287} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
