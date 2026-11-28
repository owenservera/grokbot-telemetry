# sandbox_telemetry_parse — 2026-11-28 02:25:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=695571 lines=1544
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1536 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1536} |
| `chromeGpuPssKb` | {'int': 1536} |
| `chromeOtherPssKb` | {'int': 1536} |
| `chromeProcesses` | {'int': 1536} |
| `chromeProfiles` | {'int': 1536} |
| `chromeRendererMaxPssKb` | {'int': 1536} |
| `chromeRendererPssKb` | {'int': 1536} |
| `chromeRenderers` | {'int': 1536} |
| `chromeTabs` | {'int': 1536} |
| `chromeTabsProbedProfiles` | {'int': 1536} |
| `chromeUtilityPssKb` | {'int': 1536} |
| `desktopPssKb` | {'int': 1536} |
| `hostPssKb` | {'int': 1536} |
| `kind` | {'str': 1536} |
| `memAvailableKb` | {'int': 1536} |
| `memTotalKb` | {'int': 1536} |
| `otherPssKb` | {'int': 1536} |
| `processes` | {'int': 1536} |
| `pssFallbackProcesses` | {'int': 1536} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
