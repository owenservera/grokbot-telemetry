# sandbox_telemetry_parse — 2026-11-25 11:05:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2729857 lines=6048
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6033 |
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
| `chromeBrowserPssKb` | {'int': 6033} |
| `chromeGpuPssKb` | {'int': 6033} |
| `chromeOtherPssKb` | {'int': 6033} |
| `chromeProcesses` | {'int': 6033} |
| `chromeProfiles` | {'int': 6033} |
| `chromeRendererMaxPssKb` | {'int': 6033} |
| `chromeRendererPssKb` | {'int': 6033} |
| `chromeRenderers` | {'int': 6033} |
| `chromeTabs` | {'int': 6033} |
| `chromeTabsProbedProfiles` | {'int': 6033} |
| `chromeUtilityPssKb` | {'int': 6033} |
| `desktopPssKb` | {'int': 6033} |
| `hostPssKb` | {'int': 6033} |
| `kind` | {'str': 6033} |
| `memAvailableKb` | {'int': 6033} |
| `memTotalKb` | {'int': 6033} |
| `otherPssKb` | {'int': 6033} |
| `processes` | {'int': 6033} |
| `pssFallbackProcesses` | {'int': 6033} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
