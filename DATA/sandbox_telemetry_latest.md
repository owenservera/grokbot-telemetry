# sandbox_telemetry_parse — 2026-11-19 23:29:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1487426 lines=3298
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3287 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3287} |
| `chromeGpuPssKb` | {'int': 3287} |
| `chromeOtherPssKb` | {'int': 3287} |
| `chromeProcesses` | {'int': 3287} |
| `chromeProfiles` | {'int': 3287} |
| `chromeRendererMaxPssKb` | {'int': 3287} |
| `chromeRendererPssKb` | {'int': 3287} |
| `chromeRenderers` | {'int': 3287} |
| `chromeTabs` | {'int': 3287} |
| `chromeTabsProbedProfiles` | {'int': 3287} |
| `chromeUtilityPssKb` | {'int': 3287} |
| `desktopPssKb` | {'int': 3287} |
| `hostPssKb` | {'int': 3287} |
| `kind` | {'str': 3287} |
| `memAvailableKb` | {'int': 3287} |
| `memTotalKb` | {'int': 3287} |
| `otherPssKb` | {'int': 3287} |
| `processes` | {'int': 3287} |
| `pssFallbackProcesses` | {'int': 3287} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
