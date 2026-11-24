# sandbox_telemetry_parse — 2026-11-24 13:14:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2297356 lines=5092
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5077 |
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
| `chromeBrowserPssKb` | {'int': 5077} |
| `chromeGpuPssKb` | {'int': 5077} |
| `chromeOtherPssKb` | {'int': 5077} |
| `chromeProcesses` | {'int': 5077} |
| `chromeProfiles` | {'int': 5077} |
| `chromeRendererMaxPssKb` | {'int': 5077} |
| `chromeRendererPssKb` | {'int': 5077} |
| `chromeRenderers` | {'int': 5077} |
| `chromeTabs` | {'int': 5077} |
| `chromeTabsProbedProfiles` | {'int': 5077} |
| `chromeUtilityPssKb` | {'int': 5077} |
| `desktopPssKb` | {'int': 5077} |
| `hostPssKb` | {'int': 5077} |
| `kind` | {'str': 5077} |
| `memAvailableKb` | {'int': 5077} |
| `memTotalKb` | {'int': 5077} |
| `otherPssKb` | {'int': 5077} |
| `processes` | {'int': 5077} |
| `pssFallbackProcesses` | {'int': 5077} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
