# sandbox_telemetry_parse — 2026-11-10 22:45:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1360798 lines=3015
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3006 |
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
| `chromeBrowserPssKb` | {'int': 3006} |
| `chromeGpuPssKb` | {'int': 3006} |
| `chromeOtherPssKb` | {'int': 3006} |
| `chromeProcesses` | {'int': 3006} |
| `chromeProfiles` | {'int': 3006} |
| `chromeRendererMaxPssKb` | {'int': 3006} |
| `chromeRendererPssKb` | {'int': 3006} |
| `chromeRenderers` | {'int': 3006} |
| `chromeTabs` | {'int': 3006} |
| `chromeTabsProbedProfiles` | {'int': 3006} |
| `chromeUtilityPssKb` | {'int': 3006} |
| `desktopPssKb` | {'int': 3006} |
| `hostPssKb` | {'int': 3006} |
| `kind` | {'str': 3006} |
| `memAvailableKb` | {'int': 3006} |
| `memTotalKb` | {'int': 3006} |
| `otherPssKb` | {'int': 3006} |
| `processes` | {'int': 3006} |
| `pssFallbackProcesses` | {'int': 3006} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
