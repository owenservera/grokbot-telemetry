# sandbox_telemetry_parse — 2026-11-06 11:59:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1896 lines=10
## kind counts
| kind | count |
|------|------:|
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
| `memory_sample` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 3} |
| `chromeGpuPssKb` | {'int': 3} |
| `chromeOtherPssKb` | {'int': 3} |
| `chromeProcesses` | {'int': 3} |
| `chromeProfiles` | {'int': 3} |
| `chromeRendererMaxPssKb` | {'int': 3} |
| `chromeRendererPssKb` | {'int': 3} |
| `chromeRenderers` | {'int': 3} |
| `chromeTabs` | {'int': 3} |
| `chromeTabsProbedProfiles` | {'int': 3} |
| `chromeUtilityPssKb` | {'int': 3} |
| `desktopPssKb` | {'int': 3} |
| `hostPssKb` | {'int': 3} |
| `kind` | {'str': 3} |
| `memAvailableKb` | {'int': 3} |
| `memTotalKb` | {'int': 3} |
| `otherPssKb` | {'int': 3} |
| `processes` | {'int': 3} |
| `pssFallbackProcesses` | {'int': 3} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
