# sandbox_telemetry_parse — 2026-11-11 02:16:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1431372 lines=3171
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3162 |
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
| `chromeBrowserPssKb` | {'int': 3162} |
| `chromeGpuPssKb` | {'int': 3162} |
| `chromeOtherPssKb` | {'int': 3162} |
| `chromeProcesses` | {'int': 3162} |
| `chromeProfiles` | {'int': 3162} |
| `chromeRendererMaxPssKb` | {'int': 3162} |
| `chromeRendererPssKb` | {'int': 3162} |
| `chromeRenderers` | {'int': 3162} |
| `chromeTabs` | {'int': 3162} |
| `chromeTabsProbedProfiles` | {'int': 3162} |
| `chromeUtilityPssKb` | {'int': 3162} |
| `desktopPssKb` | {'int': 3162} |
| `hostPssKb` | {'int': 3162} |
| `kind` | {'str': 3162} |
| `memAvailableKb` | {'int': 3162} |
| `memTotalKb` | {'int': 3162} |
| `otherPssKb` | {'int': 3162} |
| `processes` | {'int': 3162} |
| `pssFallbackProcesses` | {'int': 3162} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
