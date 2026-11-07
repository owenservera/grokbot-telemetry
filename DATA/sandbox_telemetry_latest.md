# sandbox_telemetry_parse — 2026-11-07 02:12:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=266250 lines=596
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 587 |
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
| `chromeBrowserPssKb` | {'int': 587} |
| `chromeGpuPssKb` | {'int': 587} |
| `chromeOtherPssKb` | {'int': 587} |
| `chromeProcesses` | {'int': 587} |
| `chromeProfiles` | {'int': 587} |
| `chromeRendererMaxPssKb` | {'int': 587} |
| `chromeRendererPssKb` | {'int': 587} |
| `chromeRenderers` | {'int': 587} |
| `chromeTabs` | {'int': 587} |
| `chromeTabsProbedProfiles` | {'int': 587} |
| `chromeUtilityPssKb` | {'int': 587} |
| `desktopPssKb` | {'int': 587} |
| `hostPssKb` | {'int': 587} |
| `kind` | {'str': 587} |
| `memAvailableKb` | {'int': 587} |
| `memTotalKb` | {'int': 587} |
| `otherPssKb` | {'int': 587} |
| `processes` | {'int': 587} |
| `pssFallbackProcesses` | {'int': 587} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
