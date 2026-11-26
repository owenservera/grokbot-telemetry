# sandbox_telemetry_parse — 2026-11-26 18:46:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=38184 lines=91
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 83 |
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
| `chromeBrowserPssKb` | {'int': 83} |
| `chromeGpuPssKb` | {'int': 83} |
| `chromeOtherPssKb` | {'int': 83} |
| `chromeProcesses` | {'int': 83} |
| `chromeProfiles` | {'int': 83} |
| `chromeRendererMaxPssKb` | {'int': 83} |
| `chromeRendererPssKb` | {'int': 83} |
| `chromeRenderers` | {'int': 83} |
| `chromeTabs` | {'int': 83} |
| `chromeTabsProbedProfiles` | {'int': 83} |
| `chromeUtilityPssKb` | {'int': 83} |
| `desktopPssKb` | {'int': 83} |
| `hostPssKb` | {'int': 83} |
| `kind` | {'str': 83} |
| `memAvailableKb` | {'int': 83} |
| `memTotalKb` | {'int': 83} |
| `otherPssKb` | {'int': 83} |
| `processes` | {'int': 83} |
| `pssFallbackProcesses` | {'int': 83} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
