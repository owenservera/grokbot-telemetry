# sandbox_telemetry_parse — 2026-11-06 13:00:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=20445 lines=51
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 44 |
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
| `chromeBrowserPssKb` | {'int': 44} |
| `chromeGpuPssKb` | {'int': 44} |
| `chromeOtherPssKb` | {'int': 44} |
| `chromeProcesses` | {'int': 44} |
| `chromeProfiles` | {'int': 44} |
| `chromeRendererMaxPssKb` | {'int': 44} |
| `chromeRendererPssKb` | {'int': 44} |
| `chromeRenderers` | {'int': 44} |
| `chromeTabs` | {'int': 44} |
| `chromeTabsProbedProfiles` | {'int': 44} |
| `chromeUtilityPssKb` | {'int': 44} |
| `desktopPssKb` | {'int': 44} |
| `hostPssKb` | {'int': 44} |
| `kind` | {'str': 44} |
| `memAvailableKb` | {'int': 44} |
| `memTotalKb` | {'int': 44} |
| `otherPssKb` | {'int': 44} |
| `processes` | {'int': 44} |
| `pssFallbackProcesses` | {'int': 44} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
