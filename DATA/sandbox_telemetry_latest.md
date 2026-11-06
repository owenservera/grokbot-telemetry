# sandbox_telemetry_parse — 2026-11-06 18:14:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=103862 lines=237
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 228 |
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
| `chromeBrowserPssKb` | {'int': 228} |
| `chromeGpuPssKb` | {'int': 228} |
| `chromeOtherPssKb` | {'int': 228} |
| `chromeProcesses` | {'int': 228} |
| `chromeProfiles` | {'int': 228} |
| `chromeRendererMaxPssKb` | {'int': 228} |
| `chromeRendererPssKb` | {'int': 228} |
| `chromeRenderers` | {'int': 228} |
| `chromeTabs` | {'int': 228} |
| `chromeTabsProbedProfiles` | {'int': 228} |
| `chromeUtilityPssKb` | {'int': 228} |
| `desktopPssKb` | {'int': 228} |
| `hostPssKb` | {'int': 228} |
| `kind` | {'str': 228} |
| `memAvailableKb` | {'int': 228} |
| `memTotalKb` | {'int': 228} |
| `otherPssKb` | {'int': 228} |
| `processes` | {'int': 228} |
| `pssFallbackProcesses` | {'int': 228} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
