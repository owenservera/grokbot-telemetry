# sandbox_telemetry_parse — 2026-11-11 19:44:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1789240 lines=3962
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3953 |
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
| `chromeBrowserPssKb` | {'int': 3953} |
| `chromeGpuPssKb` | {'int': 3953} |
| `chromeOtherPssKb` | {'int': 3953} |
| `chromeProcesses` | {'int': 3953} |
| `chromeProfiles` | {'int': 3953} |
| `chromeRendererMaxPssKb` | {'int': 3953} |
| `chromeRendererPssKb` | {'int': 3953} |
| `chromeRenderers` | {'int': 3953} |
| `chromeTabs` | {'int': 3953} |
| `chromeTabsProbedProfiles` | {'int': 3953} |
| `chromeUtilityPssKb` | {'int': 3953} |
| `desktopPssKb` | {'int': 3953} |
| `hostPssKb` | {'int': 3953} |
| `kind` | {'str': 3953} |
| `memAvailableKb` | {'int': 3953} |
| `memTotalKb` | {'int': 3953} |
| `otherPssKb` | {'int': 3953} |
| `processes` | {'int': 3953} |
| `pssFallbackProcesses` | {'int': 3953} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
