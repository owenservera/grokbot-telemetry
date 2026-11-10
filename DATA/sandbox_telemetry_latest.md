# sandbox_telemetry_parse — 2026-11-10 01:31:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=926756 lines=2056
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2047 |
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
| `chromeBrowserPssKb` | {'int': 2047} |
| `chromeGpuPssKb` | {'int': 2047} |
| `chromeOtherPssKb` | {'int': 2047} |
| `chromeProcesses` | {'int': 2047} |
| `chromeProfiles` | {'int': 2047} |
| `chromeRendererMaxPssKb` | {'int': 2047} |
| `chromeRendererPssKb` | {'int': 2047} |
| `chromeRenderers` | {'int': 2047} |
| `chromeTabs` | {'int': 2047} |
| `chromeTabsProbedProfiles` | {'int': 2047} |
| `chromeUtilityPssKb` | {'int': 2047} |
| `desktopPssKb` | {'int': 2047} |
| `hostPssKb` | {'int': 2047} |
| `kind` | {'str': 2047} |
| `memAvailableKb` | {'int': 2047} |
| `memTotalKb` | {'int': 2047} |
| `otherPssKb` | {'int': 2047} |
| `processes` | {'int': 2047} |
| `pssFallbackProcesses` | {'int': 2047} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
