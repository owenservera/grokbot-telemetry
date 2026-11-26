# sandbox_telemetry_parse — 2026-11-26 06:41:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3123327 lines=6918
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6903 |
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
| `chromeBrowserPssKb` | {'int': 6903} |
| `chromeGpuPssKb` | {'int': 6903} |
| `chromeOtherPssKb` | {'int': 6903} |
| `chromeProcesses` | {'int': 6903} |
| `chromeProfiles` | {'int': 6903} |
| `chromeRendererMaxPssKb` | {'int': 6903} |
| `chromeRendererPssKb` | {'int': 6903} |
| `chromeRenderers` | {'int': 6903} |
| `chromeTabs` | {'int': 6903} |
| `chromeTabsProbedProfiles` | {'int': 6903} |
| `chromeUtilityPssKb` | {'int': 6903} |
| `desktopPssKb` | {'int': 6903} |
| `hostPssKb` | {'int': 6903} |
| `kind` | {'str': 6903} |
| `memAvailableKb` | {'int': 6903} |
| `memTotalKb` | {'int': 6903} |
| `otherPssKb` | {'int': 6903} |
| `processes` | {'int': 6903} |
| `pssFallbackProcesses` | {'int': 6903} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
