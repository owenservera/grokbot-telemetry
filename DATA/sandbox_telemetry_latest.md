# sandbox_telemetry_parse — 2026-11-12 23:02:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2364110 lines=5232
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5223 |
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
| `chromeBrowserPssKb` | {'int': 5223} |
| `chromeGpuPssKb` | {'int': 5223} |
| `chromeOtherPssKb` | {'int': 5223} |
| `chromeProcesses` | {'int': 5223} |
| `chromeProfiles` | {'int': 5223} |
| `chromeRendererMaxPssKb` | {'int': 5223} |
| `chromeRendererPssKb` | {'int': 5223} |
| `chromeRenderers` | {'int': 5223} |
| `chromeTabs` | {'int': 5223} |
| `chromeTabsProbedProfiles` | {'int': 5223} |
| `chromeUtilityPssKb` | {'int': 5223} |
| `desktopPssKb` | {'int': 5223} |
| `hostPssKb` | {'int': 5223} |
| `kind` | {'str': 5223} |
| `memAvailableKb` | {'int': 5223} |
| `memTotalKb` | {'int': 5223} |
| `otherPssKb` | {'int': 5223} |
| `processes` | {'int': 5223} |
| `pssFallbackProcesses` | {'int': 5223} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
