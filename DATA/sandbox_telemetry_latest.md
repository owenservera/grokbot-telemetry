# sandbox_telemetry_parse — 2026-11-27 04:17:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=231758 lines=519
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 511 |
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
| `chromeBrowserPssKb` | {'int': 511} |
| `chromeGpuPssKb` | {'int': 511} |
| `chromeOtherPssKb` | {'int': 511} |
| `chromeProcesses` | {'int': 511} |
| `chromeProfiles` | {'int': 511} |
| `chromeRendererMaxPssKb` | {'int': 511} |
| `chromeRendererPssKb` | {'int': 511} |
| `chromeRenderers` | {'int': 511} |
| `chromeTabs` | {'int': 511} |
| `chromeTabsProbedProfiles` | {'int': 511} |
| `chromeUtilityPssKb` | {'int': 511} |
| `desktopPssKb` | {'int': 511} |
| `hostPssKb` | {'int': 511} |
| `kind` | {'str': 511} |
| `memAvailableKb` | {'int': 511} |
| `memTotalKb` | {'int': 511} |
| `otherPssKb` | {'int': 511} |
| `processes` | {'int': 511} |
| `pssFallbackProcesses` | {'int': 511} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
