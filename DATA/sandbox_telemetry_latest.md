# sandbox_telemetry_parse — 2026-11-24 18:04:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2388356 lines=5293
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5278 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5278} |
| `chromeGpuPssKb` | {'int': 5278} |
| `chromeOtherPssKb` | {'int': 5278} |
| `chromeProcesses` | {'int': 5278} |
| `chromeProfiles` | {'int': 5278} |
| `chromeRendererMaxPssKb` | {'int': 5278} |
| `chromeRendererPssKb` | {'int': 5278} |
| `chromeRenderers` | {'int': 5278} |
| `chromeTabs` | {'int': 5278} |
| `chromeTabsProbedProfiles` | {'int': 5278} |
| `chromeUtilityPssKb` | {'int': 5278} |
| `desktopPssKb` | {'int': 5278} |
| `hostPssKb` | {'int': 5278} |
| `kind` | {'str': 5278} |
| `memAvailableKb` | {'int': 5278} |
| `memTotalKb` | {'int': 5278} |
| `otherPssKb` | {'int': 5278} |
| `processes` | {'int': 5278} |
| `pssFallbackProcesses` | {'int': 5278} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
