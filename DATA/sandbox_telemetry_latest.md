# sandbox_telemetry_parse — 2026-11-12 20:20:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2311632 lines=5116
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5107 |
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
| `chromeBrowserPssKb` | {'int': 5107} |
| `chromeGpuPssKb` | {'int': 5107} |
| `chromeOtherPssKb` | {'int': 5107} |
| `chromeProcesses` | {'int': 5107} |
| `chromeProfiles` | {'int': 5107} |
| `chromeRendererMaxPssKb` | {'int': 5107} |
| `chromeRendererPssKb` | {'int': 5107} |
| `chromeRenderers` | {'int': 5107} |
| `chromeTabs` | {'int': 5107} |
| `chromeTabsProbedProfiles` | {'int': 5107} |
| `chromeUtilityPssKb` | {'int': 5107} |
| `desktopPssKb` | {'int': 5107} |
| `hostPssKb` | {'int': 5107} |
| `kind` | {'str': 5107} |
| `memAvailableKb` | {'int': 5107} |
| `memTotalKb` | {'int': 5107} |
| `otherPssKb` | {'int': 5107} |
| `processes` | {'int': 5107} |
| `pssFallbackProcesses` | {'int': 5107} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
