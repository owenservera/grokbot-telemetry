# sandbox_telemetry_parse — 2026-11-12 20:31:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2316161 lines=5126
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5117 |
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
| `chromeBrowserPssKb` | {'int': 5117} |
| `chromeGpuPssKb` | {'int': 5117} |
| `chromeOtherPssKb` | {'int': 5117} |
| `chromeProcesses` | {'int': 5117} |
| `chromeProfiles` | {'int': 5117} |
| `chromeRendererMaxPssKb` | {'int': 5117} |
| `chromeRendererPssKb` | {'int': 5117} |
| `chromeRenderers` | {'int': 5117} |
| `chromeTabs` | {'int': 5117} |
| `chromeTabsProbedProfiles` | {'int': 5117} |
| `chromeUtilityPssKb` | {'int': 5117} |
| `desktopPssKb` | {'int': 5117} |
| `hostPssKb` | {'int': 5117} |
| `kind` | {'str': 5117} |
| `memAvailableKb` | {'int': 5117} |
| `memTotalKb` | {'int': 5117} |
| `otherPssKb` | {'int': 5117} |
| `processes` | {'int': 5117} |
| `pssFallbackProcesses` | {'int': 5117} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
