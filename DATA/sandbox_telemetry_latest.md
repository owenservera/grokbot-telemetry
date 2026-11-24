# sandbox_telemetry_parse — 2026-11-24 07:50:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2194261 lines=4864
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4849 |
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
| `chromeBrowserPssKb` | {'int': 4849} |
| `chromeGpuPssKb` | {'int': 4849} |
| `chromeOtherPssKb` | {'int': 4849} |
| `chromeProcesses` | {'int': 4849} |
| `chromeProfiles` | {'int': 4849} |
| `chromeRendererMaxPssKb` | {'int': 4849} |
| `chromeRendererPssKb` | {'int': 4849} |
| `chromeRenderers` | {'int': 4849} |
| `chromeTabs` | {'int': 4849} |
| `chromeTabsProbedProfiles` | {'int': 4849} |
| `chromeUtilityPssKb` | {'int': 4849} |
| `desktopPssKb` | {'int': 4849} |
| `hostPssKb` | {'int': 4849} |
| `kind` | {'str': 4849} |
| `memAvailableKb` | {'int': 4849} |
| `memTotalKb` | {'int': 4849} |
| `otherPssKb` | {'int': 4849} |
| `processes` | {'int': 4849} |
| `pssFallbackProcesses` | {'int': 4849} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
