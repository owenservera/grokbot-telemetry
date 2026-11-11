# sandbox_telemetry_parse — 2026-11-11 08:07:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1535815 lines=3402
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3393 |
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
| `chromeBrowserPssKb` | {'int': 3393} |
| `chromeGpuPssKb` | {'int': 3393} |
| `chromeOtherPssKb` | {'int': 3393} |
| `chromeProcesses` | {'int': 3393} |
| `chromeProfiles` | {'int': 3393} |
| `chromeRendererMaxPssKb` | {'int': 3393} |
| `chromeRendererPssKb` | {'int': 3393} |
| `chromeRenderers` | {'int': 3393} |
| `chromeTabs` | {'int': 3393} |
| `chromeTabsProbedProfiles` | {'int': 3393} |
| `chromeUtilityPssKb` | {'int': 3393} |
| `desktopPssKb` | {'int': 3393} |
| `hostPssKb` | {'int': 3393} |
| `kind` | {'str': 3393} |
| `memAvailableKb` | {'int': 3393} |
| `memTotalKb` | {'int': 3393} |
| `otherPssKb` | {'int': 3393} |
| `processes` | {'int': 3393} |
| `pssFallbackProcesses` | {'int': 3393} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
