# sandbox_telemetry_parse — 2026-11-28 03:39:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=718651 lines=1595
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1587 |
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
| `chromeBrowserPssKb` | {'int': 1587} |
| `chromeGpuPssKb` | {'int': 1587} |
| `chromeOtherPssKb` | {'int': 1587} |
| `chromeProcesses` | {'int': 1587} |
| `chromeProfiles` | {'int': 1587} |
| `chromeRendererMaxPssKb` | {'int': 1587} |
| `chromeRendererPssKb` | {'int': 1587} |
| `chromeRenderers` | {'int': 1587} |
| `chromeTabs` | {'int': 1587} |
| `chromeTabsProbedProfiles` | {'int': 1587} |
| `chromeUtilityPssKb` | {'int': 1587} |
| `desktopPssKb` | {'int': 1587} |
| `hostPssKb` | {'int': 1587} |
| `kind` | {'str': 1587} |
| `memAvailableKb` | {'int': 1587} |
| `memTotalKb` | {'int': 1587} |
| `otherPssKb` | {'int': 1587} |
| `processes` | {'int': 1587} |
| `pssFallbackProcesses` | {'int': 1587} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
