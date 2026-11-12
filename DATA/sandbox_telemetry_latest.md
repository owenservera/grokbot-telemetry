# sandbox_telemetry_parse — 2026-11-12 10:02:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2076166 lines=4596
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4587 |
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
| `chromeBrowserPssKb` | {'int': 4587} |
| `chromeGpuPssKb` | {'int': 4587} |
| `chromeOtherPssKb` | {'int': 4587} |
| `chromeProcesses` | {'int': 4587} |
| `chromeProfiles` | {'int': 4587} |
| `chromeRendererMaxPssKb` | {'int': 4587} |
| `chromeRendererPssKb` | {'int': 4587} |
| `chromeRenderers` | {'int': 4587} |
| `chromeTabs` | {'int': 4587} |
| `chromeTabsProbedProfiles` | {'int': 4587} |
| `chromeUtilityPssKb` | {'int': 4587} |
| `desktopPssKb` | {'int': 4587} |
| `hostPssKb` | {'int': 4587} |
| `kind` | {'str': 4587} |
| `memAvailableKb` | {'int': 4587} |
| `memTotalKb` | {'int': 4587} |
| `otherPssKb` | {'int': 4587} |
| `processes` | {'int': 4587} |
| `pssFallbackProcesses` | {'int': 4587} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
