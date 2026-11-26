# sandbox_telemetry_parse — 2026-11-26 11:59:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3238706 lines=7173
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7158 |
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
| `chromeBrowserPssKb` | {'int': 7158} |
| `chromeGpuPssKb` | {'int': 7158} |
| `chromeOtherPssKb` | {'int': 7158} |
| `chromeProcesses` | {'int': 7158} |
| `chromeProfiles` | {'int': 7158} |
| `chromeRendererMaxPssKb` | {'int': 7158} |
| `chromeRendererPssKb` | {'int': 7158} |
| `chromeRenderers` | {'int': 7158} |
| `chromeTabs` | {'int': 7158} |
| `chromeTabsProbedProfiles` | {'int': 7158} |
| `chromeUtilityPssKb` | {'int': 7158} |
| `desktopPssKb` | {'int': 7158} |
| `hostPssKb` | {'int': 7158} |
| `kind` | {'str': 7158} |
| `memAvailableKb` | {'int': 7158} |
| `memTotalKb` | {'int': 7158} |
| `otherPssKb` | {'int': 7158} |
| `processes` | {'int': 7158} |
| `pssFallbackProcesses` | {'int': 7158} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
