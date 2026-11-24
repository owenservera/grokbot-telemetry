# sandbox_telemetry_parse — 2026-11-24 14:44:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2326775 lines=5157
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5142 |
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
| `chromeBrowserPssKb` | {'int': 5142} |
| `chromeGpuPssKb` | {'int': 5142} |
| `chromeOtherPssKb` | {'int': 5142} |
| `chromeProcesses` | {'int': 5142} |
| `chromeProfiles` | {'int': 5142} |
| `chromeRendererMaxPssKb` | {'int': 5142} |
| `chromeRendererPssKb` | {'int': 5142} |
| `chromeRenderers` | {'int': 5142} |
| `chromeTabs` | {'int': 5142} |
| `chromeTabsProbedProfiles` | {'int': 5142} |
| `chromeUtilityPssKb` | {'int': 5142} |
| `desktopPssKb` | {'int': 5142} |
| `hostPssKb` | {'int': 5142} |
| `kind` | {'str': 5142} |
| `memAvailableKb` | {'int': 5142} |
| `memTotalKb` | {'int': 5142} |
| `otherPssKb` | {'int': 5142} |
| `processes` | {'int': 5142} |
| `pssFallbackProcesses` | {'int': 5142} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
