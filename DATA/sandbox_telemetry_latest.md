# sandbox_telemetry_parse — 2026-11-23 20:58:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1984853 lines=4401
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4386 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4386} |
| `chromeGpuPssKb` | {'int': 4386} |
| `chromeOtherPssKb` | {'int': 4386} |
| `chromeProcesses` | {'int': 4386} |
| `chromeProfiles` | {'int': 4386} |
| `chromeRendererMaxPssKb` | {'int': 4386} |
| `chromeRendererPssKb` | {'int': 4386} |
| `chromeRenderers` | {'int': 4386} |
| `chromeTabs` | {'int': 4386} |
| `chromeTabsProbedProfiles` | {'int': 4386} |
| `chromeUtilityPssKb` | {'int': 4386} |
| `desktopPssKb` | {'int': 4386} |
| `hostPssKb` | {'int': 4386} |
| `kind` | {'str': 4386} |
| `memAvailableKb` | {'int': 4386} |
| `memTotalKb` | {'int': 4386} |
| `otherPssKb` | {'int': 4386} |
| `processes` | {'int': 4386} |
| `pssFallbackProcesses` | {'int': 4386} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
