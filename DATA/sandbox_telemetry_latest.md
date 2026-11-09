# sandbox_telemetry_parse — 2026-11-09 23:26:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=885163 lines=1964
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1955 |
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
| `chromeBrowserPssKb` | {'int': 1955} |
| `chromeGpuPssKb` | {'int': 1955} |
| `chromeOtherPssKb` | {'int': 1955} |
| `chromeProcesses` | {'int': 1955} |
| `chromeProfiles` | {'int': 1955} |
| `chromeRendererMaxPssKb` | {'int': 1955} |
| `chromeRendererPssKb` | {'int': 1955} |
| `chromeRenderers` | {'int': 1955} |
| `chromeTabs` | {'int': 1955} |
| `chromeTabsProbedProfiles` | {'int': 1955} |
| `chromeUtilityPssKb` | {'int': 1955} |
| `desktopPssKb` | {'int': 1955} |
| `hostPssKb` | {'int': 1955} |
| `kind` | {'str': 1955} |
| `memAvailableKb` | {'int': 1955} |
| `memTotalKb` | {'int': 1955} |
| `otherPssKb` | {'int': 1955} |
| `processes` | {'int': 1955} |
| `pssFallbackProcesses` | {'int': 1955} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
