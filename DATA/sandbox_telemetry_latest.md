# sandbox_telemetry_parse — 2026-11-11 04:25:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1471154 lines=3259
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3250 |
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
| `chromeBrowserPssKb` | {'int': 3250} |
| `chromeGpuPssKb` | {'int': 3250} |
| `chromeOtherPssKb` | {'int': 3250} |
| `chromeProcesses` | {'int': 3250} |
| `chromeProfiles` | {'int': 3250} |
| `chromeRendererMaxPssKb` | {'int': 3250} |
| `chromeRendererPssKb` | {'int': 3250} |
| `chromeRenderers` | {'int': 3250} |
| `chromeTabs` | {'int': 3250} |
| `chromeTabsProbedProfiles` | {'int': 3250} |
| `chromeUtilityPssKb` | {'int': 3250} |
| `desktopPssKb` | {'int': 3250} |
| `hostPssKb` | {'int': 3250} |
| `kind` | {'str': 3250} |
| `memAvailableKb` | {'int': 3250} |
| `memTotalKb` | {'int': 3250} |
| `otherPssKb` | {'int': 3250} |
| `processes` | {'int': 3250} |
| `pssFallbackProcesses` | {'int': 3250} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
