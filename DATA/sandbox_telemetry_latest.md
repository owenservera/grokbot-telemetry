# sandbox_telemetry_parse — 2026-11-07 00:14:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=229153 lines=514
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 505 |
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
| `chromeBrowserPssKb` | {'int': 505} |
| `chromeGpuPssKb` | {'int': 505} |
| `chromeOtherPssKb` | {'int': 505} |
| `chromeProcesses` | {'int': 505} |
| `chromeProfiles` | {'int': 505} |
| `chromeRendererMaxPssKb` | {'int': 505} |
| `chromeRendererPssKb` | {'int': 505} |
| `chromeRenderers` | {'int': 505} |
| `chromeTabs` | {'int': 505} |
| `chromeTabsProbedProfiles` | {'int': 505} |
| `chromeUtilityPssKb` | {'int': 505} |
| `desktopPssKb` | {'int': 505} |
| `hostPssKb` | {'int': 505} |
| `kind` | {'str': 505} |
| `memAvailableKb` | {'int': 505} |
| `memTotalKb` | {'int': 505} |
| `otherPssKb` | {'int': 505} |
| `processes` | {'int': 505} |
| `pssFallbackProcesses` | {'int': 505} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
