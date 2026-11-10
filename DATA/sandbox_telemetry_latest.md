# sandbox_telemetry_parse — 2026-11-10 15:48:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1206877 lines=2675
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2666 |
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
| `chromeBrowserPssKb` | {'int': 2666} |
| `chromeGpuPssKb` | {'int': 2666} |
| `chromeOtherPssKb` | {'int': 2666} |
| `chromeProcesses` | {'int': 2666} |
| `chromeProfiles` | {'int': 2666} |
| `chromeRendererMaxPssKb` | {'int': 2666} |
| `chromeRendererPssKb` | {'int': 2666} |
| `chromeRenderers` | {'int': 2666} |
| `chromeTabs` | {'int': 2666} |
| `chromeTabsProbedProfiles` | {'int': 2666} |
| `chromeUtilityPssKb` | {'int': 2666} |
| `desktopPssKb` | {'int': 2666} |
| `hostPssKb` | {'int': 2666} |
| `kind` | {'str': 2666} |
| `memAvailableKb` | {'int': 2666} |
| `memTotalKb` | {'int': 2666} |
| `otherPssKb` | {'int': 2666} |
| `processes` | {'int': 2666} |
| `pssFallbackProcesses` | {'int': 2666} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
