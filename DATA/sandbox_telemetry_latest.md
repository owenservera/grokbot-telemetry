# sandbox_telemetry_parse — 2026-11-12 02:03:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1922326 lines=4256
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4247 |
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
| `chromeBrowserPssKb` | {'int': 4247} |
| `chromeGpuPssKb` | {'int': 4247} |
| `chromeOtherPssKb` | {'int': 4247} |
| `chromeProcesses` | {'int': 4247} |
| `chromeProfiles` | {'int': 4247} |
| `chromeRendererMaxPssKb` | {'int': 4247} |
| `chromeRendererPssKb` | {'int': 4247} |
| `chromeRenderers` | {'int': 4247} |
| `chromeTabs` | {'int': 4247} |
| `chromeTabsProbedProfiles` | {'int': 4247} |
| `chromeUtilityPssKb` | {'int': 4247} |
| `desktopPssKb` | {'int': 4247} |
| `hostPssKb` | {'int': 4247} |
| `kind` | {'str': 4247} |
| `memAvailableKb` | {'int': 4247} |
| `memTotalKb` | {'int': 4247} |
| `otherPssKb` | {'int': 4247} |
| `processes` | {'int': 4247} |
| `pssFallbackProcesses` | {'int': 4247} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
