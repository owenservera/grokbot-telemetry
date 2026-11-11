# sandbox_telemetry_parse — 2026-11-11 20:03:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1794670 lines=3974
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3965 |
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
| `chromeBrowserPssKb` | {'int': 3965} |
| `chromeGpuPssKb` | {'int': 3965} |
| `chromeOtherPssKb` | {'int': 3965} |
| `chromeProcesses` | {'int': 3965} |
| `chromeProfiles` | {'int': 3965} |
| `chromeRendererMaxPssKb` | {'int': 3965} |
| `chromeRendererPssKb` | {'int': 3965} |
| `chromeRenderers` | {'int': 3965} |
| `chromeTabs` | {'int': 3965} |
| `chromeTabsProbedProfiles` | {'int': 3965} |
| `chromeUtilityPssKb` | {'int': 3965} |
| `desktopPssKb` | {'int': 3965} |
| `hostPssKb` | {'int': 3965} |
| `kind` | {'str': 3965} |
| `memAvailableKb` | {'int': 3965} |
| `memTotalKb` | {'int': 3965} |
| `otherPssKb` | {'int': 3965} |
| `processes` | {'int': 3965} |
| `pssFallbackProcesses` | {'int': 3965} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
