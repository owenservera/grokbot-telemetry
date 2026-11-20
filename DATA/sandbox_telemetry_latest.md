# sandbox_telemetry_parse — 2026-11-20 07:36:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1623041 lines=3598
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3587 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3587} |
| `chromeGpuPssKb` | {'int': 3587} |
| `chromeOtherPssKb` | {'int': 3587} |
| `chromeProcesses` | {'int': 3587} |
| `chromeProfiles` | {'int': 3587} |
| `chromeRendererMaxPssKb` | {'int': 3587} |
| `chromeRendererPssKb` | {'int': 3587} |
| `chromeRenderers` | {'int': 3587} |
| `chromeTabs` | {'int': 3587} |
| `chromeTabsProbedProfiles` | {'int': 3587} |
| `chromeUtilityPssKb` | {'int': 3587} |
| `desktopPssKb` | {'int': 3587} |
| `hostPssKb` | {'int': 3587} |
| `kind` | {'str': 3587} |
| `memAvailableKb` | {'int': 3587} |
| `memTotalKb` | {'int': 3587} |
| `otherPssKb` | {'int': 3587} |
| `processes` | {'int': 3587} |
| `pssFallbackProcesses` | {'int': 3587} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
