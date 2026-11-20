# sandbox_telemetry_parse — 2026-11-20 05:53:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1593206 lines=3532
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3521 |
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
| `chromeBrowserPssKb` | {'int': 3521} |
| `chromeGpuPssKb` | {'int': 3521} |
| `chromeOtherPssKb` | {'int': 3521} |
| `chromeProcesses` | {'int': 3521} |
| `chromeProfiles` | {'int': 3521} |
| `chromeRendererMaxPssKb` | {'int': 3521} |
| `chromeRendererPssKb` | {'int': 3521} |
| `chromeRenderers` | {'int': 3521} |
| `chromeTabs` | {'int': 3521} |
| `chromeTabsProbedProfiles` | {'int': 3521} |
| `chromeUtilityPssKb` | {'int': 3521} |
| `desktopPssKb` | {'int': 3521} |
| `hostPssKb` | {'int': 3521} |
| `kind` | {'str': 3521} |
| `memAvailableKb` | {'int': 3521} |
| `memTotalKb` | {'int': 3521} |
| `otherPssKb` | {'int': 3521} |
| `processes` | {'int': 3521} |
| `pssFallbackProcesses` | {'int': 3521} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
