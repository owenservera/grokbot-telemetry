# sandbox_telemetry_parse — 2026-11-17 20:47:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=533206 lines=1185
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1178 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1178} |
| `chromeGpuPssKb` | {'int': 1178} |
| `chromeOtherPssKb` | {'int': 1178} |
| `chromeProcesses` | {'int': 1178} |
| `chromeProfiles` | {'int': 1178} |
| `chromeRendererMaxPssKb` | {'int': 1178} |
| `chromeRendererPssKb` | {'int': 1178} |
| `chromeRenderers` | {'int': 1178} |
| `chromeTabs` | {'int': 1178} |
| `chromeTabsProbedProfiles` | {'int': 1178} |
| `chromeUtilityPssKb` | {'int': 1178} |
| `desktopPssKb` | {'int': 1178} |
| `hostPssKb` | {'int': 1178} |
| `kind` | {'str': 1178} |
| `memAvailableKb` | {'int': 1178} |
| `memTotalKb` | {'int': 1178} |
| `otherPssKb` | {'int': 1178} |
| `processes` | {'int': 1178} |
| `pssFallbackProcesses` | {'int': 1178} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
