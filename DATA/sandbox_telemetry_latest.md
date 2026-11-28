# sandbox_telemetry_parse — 2026-11-28 22:18:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1083398 lines=2401
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2393 |
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
| `chromeBrowserPssKb` | {'int': 2393} |
| `chromeGpuPssKb` | {'int': 2393} |
| `chromeOtherPssKb` | {'int': 2393} |
| `chromeProcesses` | {'int': 2393} |
| `chromeProfiles` | {'int': 2393} |
| `chromeRendererMaxPssKb` | {'int': 2393} |
| `chromeRendererPssKb` | {'int': 2393} |
| `chromeRenderers` | {'int': 2393} |
| `chromeTabs` | {'int': 2393} |
| `chromeTabsProbedProfiles` | {'int': 2393} |
| `chromeUtilityPssKb` | {'int': 2393} |
| `desktopPssKb` | {'int': 2393} |
| `hostPssKb` | {'int': 2393} |
| `kind` | {'str': 2393} |
| `memAvailableKb` | {'int': 2393} |
| `memTotalKb` | {'int': 2393} |
| `otherPssKb` | {'int': 2393} |
| `processes` | {'int': 2393} |
| `pssFallbackProcesses` | {'int': 2393} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
