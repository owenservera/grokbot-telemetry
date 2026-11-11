# sandbox_telemetry_parse — 2026-11-11 03:22:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1449904 lines=3212
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3203 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3203} |
| `chromeGpuPssKb` | {'int': 3203} |
| `chromeOtherPssKb` | {'int': 3203} |
| `chromeProcesses` | {'int': 3203} |
| `chromeProfiles` | {'int': 3203} |
| `chromeRendererMaxPssKb` | {'int': 3203} |
| `chromeRendererPssKb` | {'int': 3203} |
| `chromeRenderers` | {'int': 3203} |
| `chromeTabs` | {'int': 3203} |
| `chromeTabsProbedProfiles` | {'int': 3203} |
| `chromeUtilityPssKb` | {'int': 3203} |
| `desktopPssKb` | {'int': 3203} |
| `hostPssKb` | {'int': 3203} |
| `kind` | {'str': 3203} |
| `memAvailableKb` | {'int': 3203} |
| `memTotalKb` | {'int': 3203} |
| `otherPssKb` | {'int': 3203} |
| `processes` | {'int': 3203} |
| `pssFallbackProcesses` | {'int': 3203} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
