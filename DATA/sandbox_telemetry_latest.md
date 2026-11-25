# sandbox_telemetry_parse — 2026-11-25 14:31:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2794515 lines=6191
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6176 |
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
| `chromeBrowserPssKb` | {'int': 6176} |
| `chromeGpuPssKb` | {'int': 6176} |
| `chromeOtherPssKb` | {'int': 6176} |
| `chromeProcesses` | {'int': 6176} |
| `chromeProfiles` | {'int': 6176} |
| `chromeRendererMaxPssKb` | {'int': 6176} |
| `chromeRendererPssKb` | {'int': 6176} |
| `chromeRenderers` | {'int': 6176} |
| `chromeTabs` | {'int': 6176} |
| `chromeTabsProbedProfiles` | {'int': 6176} |
| `chromeUtilityPssKb` | {'int': 6176} |
| `desktopPssKb` | {'int': 6176} |
| `hostPssKb` | {'int': 6176} |
| `kind` | {'str': 6176} |
| `memAvailableKb` | {'int': 6176} |
| `memTotalKb` | {'int': 6176} |
| `otherPssKb` | {'int': 6176} |
| `processes` | {'int': 6176} |
| `pssFallbackProcesses` | {'int': 6176} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
