# sandbox_telemetry_parse — 2026-11-23 23:00:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2026496 lines=4493
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4478 |
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
| `chromeBrowserPssKb` | {'int': 4478} |
| `chromeGpuPssKb` | {'int': 4478} |
| `chromeOtherPssKb` | {'int': 4478} |
| `chromeProcesses` | {'int': 4478} |
| `chromeProfiles` | {'int': 4478} |
| `chromeRendererMaxPssKb` | {'int': 4478} |
| `chromeRendererPssKb` | {'int': 4478} |
| `chromeRenderers` | {'int': 4478} |
| `chromeTabs` | {'int': 4478} |
| `chromeTabsProbedProfiles` | {'int': 4478} |
| `chromeUtilityPssKb` | {'int': 4478} |
| `desktopPssKb` | {'int': 4478} |
| `hostPssKb` | {'int': 4478} |
| `kind` | {'str': 4478} |
| `memAvailableKb` | {'int': 4478} |
| `memTotalKb` | {'int': 4478} |
| `otherPssKb` | {'int': 4478} |
| `processes` | {'int': 4478} |
| `pssFallbackProcesses` | {'int': 4478} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
