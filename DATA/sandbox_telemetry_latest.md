# sandbox_telemetry_parse — 2026-11-11 04:24:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1470702 lines=3258
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3249 |
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
| `chromeBrowserPssKb` | {'int': 3249} |
| `chromeGpuPssKb` | {'int': 3249} |
| `chromeOtherPssKb` | {'int': 3249} |
| `chromeProcesses` | {'int': 3249} |
| `chromeProfiles` | {'int': 3249} |
| `chromeRendererMaxPssKb` | {'int': 3249} |
| `chromeRendererPssKb` | {'int': 3249} |
| `chromeRenderers` | {'int': 3249} |
| `chromeTabs` | {'int': 3249} |
| `chromeTabsProbedProfiles` | {'int': 3249} |
| `chromeUtilityPssKb` | {'int': 3249} |
| `desktopPssKb` | {'int': 3249} |
| `hostPssKb` | {'int': 3249} |
| `kind` | {'str': 3249} |
| `memAvailableKb` | {'int': 3249} |
| `memTotalKb` | {'int': 3249} |
| `otherPssKb` | {'int': 3249} |
| `processes` | {'int': 3249} |
| `pssFallbackProcesses` | {'int': 3249} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
