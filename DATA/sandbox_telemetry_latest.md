# sandbox_telemetry_parse — 2026-11-26 06:58:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3129657 lines=6932
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6917 |
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
| `chromeBrowserPssKb` | {'int': 6917} |
| `chromeGpuPssKb` | {'int': 6917} |
| `chromeOtherPssKb` | {'int': 6917} |
| `chromeProcesses` | {'int': 6917} |
| `chromeProfiles` | {'int': 6917} |
| `chromeRendererMaxPssKb` | {'int': 6917} |
| `chromeRendererPssKb` | {'int': 6917} |
| `chromeRenderers` | {'int': 6917} |
| `chromeTabs` | {'int': 6917} |
| `chromeTabsProbedProfiles` | {'int': 6917} |
| `chromeUtilityPssKb` | {'int': 6917} |
| `desktopPssKb` | {'int': 6917} |
| `hostPssKb` | {'int': 6917} |
| `kind` | {'str': 6917} |
| `memAvailableKb` | {'int': 6917} |
| `memTotalKb` | {'int': 6917} |
| `otherPssKb` | {'int': 6917} |
| `processes` | {'int': 6917} |
| `pssFallbackProcesses` | {'int': 6917} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
