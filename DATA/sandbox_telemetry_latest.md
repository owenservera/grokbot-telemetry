# sandbox_telemetry_parse — 2026-11-18 00:42:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=606910 lines=1348
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1341 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1341} |
| `chromeGpuPssKb` | {'int': 1341} |
| `chromeOtherPssKb` | {'int': 1341} |
| `chromeProcesses` | {'int': 1341} |
| `chromeProfiles` | {'int': 1341} |
| `chromeRendererMaxPssKb` | {'int': 1341} |
| `chromeRendererPssKb` | {'int': 1341} |
| `chromeRenderers` | {'int': 1341} |
| `chromeTabs` | {'int': 1341} |
| `chromeTabsProbedProfiles` | {'int': 1341} |
| `chromeUtilityPssKb` | {'int': 1341} |
| `desktopPssKb` | {'int': 1341} |
| `hostPssKb` | {'int': 1341} |
| `kind` | {'str': 1341} |
| `memAvailableKb` | {'int': 1341} |
| `memTotalKb` | {'int': 1341} |
| `otherPssKb` | {'int': 1341} |
| `processes` | {'int': 1341} |
| `pssFallbackProcesses` | {'int': 1341} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
