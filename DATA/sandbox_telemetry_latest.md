# sandbox_telemetry_parse — 2026-11-19 07:24:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1170571 lines=2596
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2587 |
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
| `chromeBrowserPssKb` | {'int': 2587} |
| `chromeGpuPssKb` | {'int': 2587} |
| `chromeOtherPssKb` | {'int': 2587} |
| `chromeProcesses` | {'int': 2587} |
| `chromeProfiles` | {'int': 2587} |
| `chromeRendererMaxPssKb` | {'int': 2587} |
| `chromeRendererPssKb` | {'int': 2587} |
| `chromeRenderers` | {'int': 2587} |
| `chromeTabs` | {'int': 2587} |
| `chromeTabsProbedProfiles` | {'int': 2587} |
| `chromeUtilityPssKb` | {'int': 2587} |
| `desktopPssKb` | {'int': 2587} |
| `hostPssKb` | {'int': 2587} |
| `kind` | {'str': 2587} |
| `memAvailableKb` | {'int': 2587} |
| `memTotalKb` | {'int': 2587} |
| `otherPssKb` | {'int': 2587} |
| `processes` | {'int': 2587} |
| `pssFallbackProcesses` | {'int': 2587} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
