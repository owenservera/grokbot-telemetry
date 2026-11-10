# sandbox_telemetry_parse — 2026-11-10 15:07:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1192390 lines=2643
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2634 |
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
| `chromeBrowserPssKb` | {'int': 2634} |
| `chromeGpuPssKb` | {'int': 2634} |
| `chromeOtherPssKb` | {'int': 2634} |
| `chromeProcesses` | {'int': 2634} |
| `chromeProfiles` | {'int': 2634} |
| `chromeRendererMaxPssKb` | {'int': 2634} |
| `chromeRendererPssKb` | {'int': 2634} |
| `chromeRenderers` | {'int': 2634} |
| `chromeTabs` | {'int': 2634} |
| `chromeTabsProbedProfiles` | {'int': 2634} |
| `chromeUtilityPssKb` | {'int': 2634} |
| `desktopPssKb` | {'int': 2634} |
| `hostPssKb` | {'int': 2634} |
| `kind` | {'str': 2634} |
| `memAvailableKb` | {'int': 2634} |
| `memTotalKb` | {'int': 2634} |
| `otherPssKb` | {'int': 2634} |
| `processes` | {'int': 2634} |
| `pssFallbackProcesses` | {'int': 2634} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
