# sandbox_telemetry_parse — 2026-11-25 15:33:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2813955 lines=6234
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6219 |
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
| `chromeBrowserPssKb` | {'int': 6219} |
| `chromeGpuPssKb` | {'int': 6219} |
| `chromeOtherPssKb` | {'int': 6219} |
| `chromeProcesses` | {'int': 6219} |
| `chromeProfiles` | {'int': 6219} |
| `chromeRendererMaxPssKb` | {'int': 6219} |
| `chromeRendererPssKb` | {'int': 6219} |
| `chromeRenderers` | {'int': 6219} |
| `chromeTabs` | {'int': 6219} |
| `chromeTabsProbedProfiles` | {'int': 6219} |
| `chromeUtilityPssKb` | {'int': 6219} |
| `desktopPssKb` | {'int': 6219} |
| `hostPssKb` | {'int': 6219} |
| `kind` | {'str': 6219} |
| `memAvailableKb` | {'int': 6219} |
| `memTotalKb` | {'int': 6219} |
| `otherPssKb` | {'int': 6219} |
| `processes` | {'int': 6219} |
| `pssFallbackProcesses` | {'int': 6219} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
