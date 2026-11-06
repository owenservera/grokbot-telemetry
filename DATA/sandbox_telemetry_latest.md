# sandbox_telemetry_parse — 2026-11-06 18:09:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=101597 lines=232
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 223 |
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
| `chromeBrowserPssKb` | {'int': 223} |
| `chromeGpuPssKb` | {'int': 223} |
| `chromeOtherPssKb` | {'int': 223} |
| `chromeProcesses` | {'int': 223} |
| `chromeProfiles` | {'int': 223} |
| `chromeRendererMaxPssKb` | {'int': 223} |
| `chromeRendererPssKb` | {'int': 223} |
| `chromeRenderers` | {'int': 223} |
| `chromeTabs` | {'int': 223} |
| `chromeTabsProbedProfiles` | {'int': 223} |
| `chromeUtilityPssKb` | {'int': 223} |
| `desktopPssKb` | {'int': 223} |
| `hostPssKb` | {'int': 223} |
| `kind` | {'str': 223} |
| `memAvailableKb` | {'int': 223} |
| `memTotalKb` | {'int': 223} |
| `otherPssKb` | {'int': 223} |
| `processes` | {'int': 223} |
| `pssFallbackProcesses` | {'int': 223} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
