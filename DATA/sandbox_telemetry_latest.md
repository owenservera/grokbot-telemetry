# sandbox_telemetry_parse — 2026-11-23 16:26:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1908818 lines=4233
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4218 |
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
| `chromeBrowserPssKb` | {'int': 4218} |
| `chromeGpuPssKb` | {'int': 4218} |
| `chromeOtherPssKb` | {'int': 4218} |
| `chromeProcesses` | {'int': 4218} |
| `chromeProfiles` | {'int': 4218} |
| `chromeRendererMaxPssKb` | {'int': 4218} |
| `chromeRendererPssKb` | {'int': 4218} |
| `chromeRenderers` | {'int': 4218} |
| `chromeTabs` | {'int': 4218} |
| `chromeTabsProbedProfiles` | {'int': 4218} |
| `chromeUtilityPssKb` | {'int': 4218} |
| `desktopPssKb` | {'int': 4218} |
| `hostPssKb` | {'int': 4218} |
| `kind` | {'str': 4218} |
| `memAvailableKb` | {'int': 4218} |
| `memTotalKb` | {'int': 4218} |
| `otherPssKb` | {'int': 4218} |
| `processes` | {'int': 4218} |
| `pssFallbackProcesses` | {'int': 4218} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
