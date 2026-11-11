# sandbox_telemetry_parse — 2026-11-11 03:26:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1451712 lines=3216
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3207 |
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
| `chromeBrowserPssKb` | {'int': 3207} |
| `chromeGpuPssKb` | {'int': 3207} |
| `chromeOtherPssKb` | {'int': 3207} |
| `chromeProcesses` | {'int': 3207} |
| `chromeProfiles` | {'int': 3207} |
| `chromeRendererMaxPssKb` | {'int': 3207} |
| `chromeRendererPssKb` | {'int': 3207} |
| `chromeRenderers` | {'int': 3207} |
| `chromeTabs` | {'int': 3207} |
| `chromeTabsProbedProfiles` | {'int': 3207} |
| `chromeUtilityPssKb` | {'int': 3207} |
| `desktopPssKb` | {'int': 3207} |
| `hostPssKb` | {'int': 3207} |
| `kind` | {'str': 3207} |
| `memAvailableKb` | {'int': 3207} |
| `memTotalKb` | {'int': 3207} |
| `otherPssKb` | {'int': 3207} |
| `processes` | {'int': 3207} |
| `pssFallbackProcesses` | {'int': 3207} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
