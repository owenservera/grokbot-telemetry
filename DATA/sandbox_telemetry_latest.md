# sandbox_telemetry_parse — 2026-11-28 07:45:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=794637 lines=1763
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1755 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1755} |
| `chromeGpuPssKb` | {'int': 1755} |
| `chromeOtherPssKb` | {'int': 1755} |
| `chromeProcesses` | {'int': 1755} |
| `chromeProfiles` | {'int': 1755} |
| `chromeRendererMaxPssKb` | {'int': 1755} |
| `chromeRendererPssKb` | {'int': 1755} |
| `chromeRenderers` | {'int': 1755} |
| `chromeTabs` | {'int': 1755} |
| `chromeTabsProbedProfiles` | {'int': 1755} |
| `chromeUtilityPssKb` | {'int': 1755} |
| `desktopPssKb` | {'int': 1755} |
| `hostPssKb` | {'int': 1755} |
| `kind` | {'str': 1755} |
| `memAvailableKb` | {'int': 1755} |
| `memTotalKb` | {'int': 1755} |
| `otherPssKb` | {'int': 1755} |
| `processes` | {'int': 1755} |
| `pssFallbackProcesses` | {'int': 1755} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
