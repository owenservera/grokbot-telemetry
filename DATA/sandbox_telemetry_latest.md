# sandbox_telemetry_parse — 2026-11-27 03:11:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=208254 lines=467
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 459 |
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
| `chromeBrowserPssKb` | {'int': 459} |
| `chromeGpuPssKb` | {'int': 459} |
| `chromeOtherPssKb` | {'int': 459} |
| `chromeProcesses` | {'int': 459} |
| `chromeProfiles` | {'int': 459} |
| `chromeRendererMaxPssKb` | {'int': 459} |
| `chromeRendererPssKb` | {'int': 459} |
| `chromeRenderers` | {'int': 459} |
| `chromeTabs` | {'int': 459} |
| `chromeTabsProbedProfiles` | {'int': 459} |
| `chromeUtilityPssKb` | {'int': 459} |
| `desktopPssKb` | {'int': 459} |
| `hostPssKb` | {'int': 459} |
| `kind` | {'str': 459} |
| `memAvailableKb` | {'int': 459} |
| `memTotalKb` | {'int': 459} |
| `otherPssKb` | {'int': 459} |
| `processes` | {'int': 459} |
| `pssFallbackProcesses` | {'int': 459} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
