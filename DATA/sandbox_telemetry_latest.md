# sandbox_telemetry_parse — 2026-11-10 17:02:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1231333 lines=2729
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2720 |
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
| `chromeBrowserPssKb` | {'int': 2720} |
| `chromeGpuPssKb` | {'int': 2720} |
| `chromeOtherPssKb` | {'int': 2720} |
| `chromeProcesses` | {'int': 2720} |
| `chromeProfiles` | {'int': 2720} |
| `chromeRendererMaxPssKb` | {'int': 2720} |
| `chromeRendererPssKb` | {'int': 2720} |
| `chromeRenderers` | {'int': 2720} |
| `chromeTabs` | {'int': 2720} |
| `chromeTabsProbedProfiles` | {'int': 2720} |
| `chromeUtilityPssKb` | {'int': 2720} |
| `desktopPssKb` | {'int': 2720} |
| `hostPssKb` | {'int': 2720} |
| `kind` | {'str': 2720} |
| `memAvailableKb` | {'int': 2720} |
| `memTotalKb` | {'int': 2720} |
| `otherPssKb` | {'int': 2720} |
| `processes` | {'int': 2720} |
| `pssFallbackProcesses` | {'int': 2720} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
