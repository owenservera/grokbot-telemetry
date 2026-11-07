# sandbox_telemetry_parse — 2026-11-07 06:40:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=348085 lines=777
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 768 |
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
| `chromeBrowserPssKb` | {'int': 768} |
| `chromeGpuPssKb` | {'int': 768} |
| `chromeOtherPssKb` | {'int': 768} |
| `chromeProcesses` | {'int': 768} |
| `chromeProfiles` | {'int': 768} |
| `chromeRendererMaxPssKb` | {'int': 768} |
| `chromeRendererPssKb` | {'int': 768} |
| `chromeRenderers` | {'int': 768} |
| `chromeTabs` | {'int': 768} |
| `chromeTabsProbedProfiles` | {'int': 768} |
| `chromeUtilityPssKb` | {'int': 768} |
| `desktopPssKb` | {'int': 768} |
| `hostPssKb` | {'int': 768} |
| `kind` | {'str': 768} |
| `memAvailableKb` | {'int': 768} |
| `memTotalKb` | {'int': 768} |
| `otherPssKb` | {'int': 768} |
| `processes` | {'int': 768} |
| `pssFallbackProcesses` | {'int': 768} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
