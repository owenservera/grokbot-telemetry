# sandbox_telemetry_parse — 2026-11-09 23:21:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=884259 lines=1962
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1953 |
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
| `chromeBrowserPssKb` | {'int': 1953} |
| `chromeGpuPssKb` | {'int': 1953} |
| `chromeOtherPssKb` | {'int': 1953} |
| `chromeProcesses` | {'int': 1953} |
| `chromeProfiles` | {'int': 1953} |
| `chromeRendererMaxPssKb` | {'int': 1953} |
| `chromeRendererPssKb` | {'int': 1953} |
| `chromeRenderers` | {'int': 1953} |
| `chromeTabs` | {'int': 1953} |
| `chromeTabsProbedProfiles` | {'int': 1953} |
| `chromeUtilityPssKb` | {'int': 1953} |
| `desktopPssKb` | {'int': 1953} |
| `hostPssKb` | {'int': 1953} |
| `kind` | {'str': 1953} |
| `memAvailableKb` | {'int': 1953} |
| `memTotalKb` | {'int': 1953} |
| `otherPssKb` | {'int': 1953} |
| `processes` | {'int': 1953} |
| `pssFallbackProcesses` | {'int': 1953} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
