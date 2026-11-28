# sandbox_telemetry_parse — 2026-11-28 22:26:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1087022 lines=2409
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2401 |
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
| `chromeBrowserPssKb` | {'int': 2401} |
| `chromeGpuPssKb` | {'int': 2401} |
| `chromeOtherPssKb` | {'int': 2401} |
| `chromeProcesses` | {'int': 2401} |
| `chromeProfiles` | {'int': 2401} |
| `chromeRendererMaxPssKb` | {'int': 2401} |
| `chromeRendererPssKb` | {'int': 2401} |
| `chromeRenderers` | {'int': 2401} |
| `chromeTabs` | {'int': 2401} |
| `chromeTabsProbedProfiles` | {'int': 2401} |
| `chromeUtilityPssKb` | {'int': 2401} |
| `desktopPssKb` | {'int': 2401} |
| `hostPssKb` | {'int': 2401} |
| `kind` | {'str': 2401} |
| `memAvailableKb` | {'int': 2401} |
| `memTotalKb` | {'int': 2401} |
| `otherPssKb` | {'int': 2401} |
| `processes` | {'int': 2401} |
| `pssFallbackProcesses` | {'int': 2401} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
