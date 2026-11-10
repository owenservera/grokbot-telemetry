# sandbox_telemetry_parse — 2026-11-10 19:15:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1279792 lines=2836
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2827 |
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
| `chromeBrowserPssKb` | {'int': 2827} |
| `chromeGpuPssKb` | {'int': 2827} |
| `chromeOtherPssKb` | {'int': 2827} |
| `chromeProcesses` | {'int': 2827} |
| `chromeProfiles` | {'int': 2827} |
| `chromeRendererMaxPssKb` | {'int': 2827} |
| `chromeRendererPssKb` | {'int': 2827} |
| `chromeRenderers` | {'int': 2827} |
| `chromeTabs` | {'int': 2827} |
| `chromeTabsProbedProfiles` | {'int': 2827} |
| `chromeUtilityPssKb` | {'int': 2827} |
| `desktopPssKb` | {'int': 2827} |
| `hostPssKb` | {'int': 2827} |
| `kind` | {'str': 2827} |
| `memAvailableKb` | {'int': 2827} |
| `memTotalKb` | {'int': 2827} |
| `otherPssKb` | {'int': 2827} |
| `processes` | {'int': 2827} |
| `pssFallbackProcesses` | {'int': 2827} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
