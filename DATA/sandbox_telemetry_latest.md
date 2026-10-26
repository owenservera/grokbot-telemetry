# sandbox_telemetry_parse — 2026-10-26 19:26:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=97323 lines=219
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 214 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 214} |
| `chromeGpuPssKb` | {'int': 214} |
| `chromeOtherPssKb` | {'int': 214} |
| `chromeProcesses` | {'int': 214} |
| `chromeProfiles` | {'int': 214} |
| `chromeRendererMaxPssKb` | {'int': 214} |
| `chromeRendererPssKb` | {'int': 214} |
| `chromeRenderers` | {'int': 214} |
| `chromeTabs` | {'int': 214} |
| `chromeTabsProbedProfiles` | {'int': 214} |
| `chromeUtilityPssKb` | {'int': 214} |
| `desktopPssKb` | {'int': 214} |
| `hostPssKb` | {'int': 214} |
| `kind` | {'str': 214} |
| `memAvailableKb` | {'int': 214} |
| `memTotalKb` | {'int': 214} |
| `otherPssKb` | {'int': 214} |
| `processes` | {'int': 214} |
| `pssFallbackProcesses` | {'int': 214} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
