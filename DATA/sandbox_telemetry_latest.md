# sandbox_telemetry_parse — 2026-11-09 23:38:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=888779 lines=1972
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1963 |
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
| `chromeBrowserPssKb` | {'int': 1963} |
| `chromeGpuPssKb` | {'int': 1963} |
| `chromeOtherPssKb` | {'int': 1963} |
| `chromeProcesses` | {'int': 1963} |
| `chromeProfiles` | {'int': 1963} |
| `chromeRendererMaxPssKb` | {'int': 1963} |
| `chromeRendererPssKb` | {'int': 1963} |
| `chromeRenderers` | {'int': 1963} |
| `chromeTabs` | {'int': 1963} |
| `chromeTabsProbedProfiles` | {'int': 1963} |
| `chromeUtilityPssKb` | {'int': 1963} |
| `desktopPssKb` | {'int': 1963} |
| `hostPssKb` | {'int': 1963} |
| `kind` | {'str': 1963} |
| `memAvailableKb` | {'int': 1963} |
| `memTotalKb` | {'int': 1963} |
| `otherPssKb` | {'int': 1963} |
| `processes` | {'int': 1963} |
| `pssFallbackProcesses` | {'int': 1963} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
