# sandbox_telemetry_parse — 2026-11-07 01:22:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=253127 lines=567
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 558 |
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
| `chromeBrowserPssKb` | {'int': 558} |
| `chromeGpuPssKb` | {'int': 558} |
| `chromeOtherPssKb` | {'int': 558} |
| `chromeProcesses` | {'int': 558} |
| `chromeProfiles` | {'int': 558} |
| `chromeRendererMaxPssKb` | {'int': 558} |
| `chromeRendererPssKb` | {'int': 558} |
| `chromeRenderers` | {'int': 558} |
| `chromeTabs` | {'int': 558} |
| `chromeTabsProbedProfiles` | {'int': 558} |
| `chromeUtilityPssKb` | {'int': 558} |
| `desktopPssKb` | {'int': 558} |
| `hostPssKb` | {'int': 558} |
| `kind` | {'str': 558} |
| `memAvailableKb` | {'int': 558} |
| `memTotalKb` | {'int': 558} |
| `otherPssKb` | {'int': 558} |
| `processes` | {'int': 558} |
| `pssFallbackProcesses` | {'int': 558} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
