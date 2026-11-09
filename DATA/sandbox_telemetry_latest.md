# sandbox_telemetry_parse — 2026-11-09 07:44:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=558868 lines=1243
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1234 |
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
| `chromeBrowserPssKb` | {'int': 1234} |
| `chromeGpuPssKb` | {'int': 1234} |
| `chromeOtherPssKb` | {'int': 1234} |
| `chromeProcesses` | {'int': 1234} |
| `chromeProfiles` | {'int': 1234} |
| `chromeRendererMaxPssKb` | {'int': 1234} |
| `chromeRendererPssKb` | {'int': 1234} |
| `chromeRenderers` | {'int': 1234} |
| `chromeTabs` | {'int': 1234} |
| `chromeTabsProbedProfiles` | {'int': 1234} |
| `chromeUtilityPssKb` | {'int': 1234} |
| `desktopPssKb` | {'int': 1234} |
| `hostPssKb` | {'int': 1234} |
| `kind` | {'str': 1234} |
| `memAvailableKb` | {'int': 1234} |
| `memTotalKb` | {'int': 1234} |
| `otherPssKb` | {'int': 1234} |
| `processes` | {'int': 1234} |
| `pssFallbackProcesses` | {'int': 1234} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
