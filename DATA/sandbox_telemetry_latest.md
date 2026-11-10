# sandbox_telemetry_parse — 2026-11-10 20:37:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1309204 lines=2901
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2892 |
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
| `chromeBrowserPssKb` | {'int': 2892} |
| `chromeGpuPssKb` | {'int': 2892} |
| `chromeOtherPssKb` | {'int': 2892} |
| `chromeProcesses` | {'int': 2892} |
| `chromeProfiles` | {'int': 2892} |
| `chromeRendererMaxPssKb` | {'int': 2892} |
| `chromeRendererPssKb` | {'int': 2892} |
| `chromeRenderers` | {'int': 2892} |
| `chromeTabs` | {'int': 2892} |
| `chromeTabsProbedProfiles` | {'int': 2892} |
| `chromeUtilityPssKb` | {'int': 2892} |
| `desktopPssKb` | {'int': 2892} |
| `hostPssKb` | {'int': 2892} |
| `kind` | {'str': 2892} |
| `memAvailableKb` | {'int': 2892} |
| `memTotalKb` | {'int': 2892} |
| `otherPssKb` | {'int': 2892} |
| `processes` | {'int': 2892} |
| `pssFallbackProcesses` | {'int': 2892} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
