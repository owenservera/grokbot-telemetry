# sandbox_telemetry_parse — 2026-11-11 16:05:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1707762 lines=3782
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3773 |
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
| `chromeBrowserPssKb` | {'int': 3773} |
| `chromeGpuPssKb` | {'int': 3773} |
| `chromeOtherPssKb` | {'int': 3773} |
| `chromeProcesses` | {'int': 3773} |
| `chromeProfiles` | {'int': 3773} |
| `chromeRendererMaxPssKb` | {'int': 3773} |
| `chromeRendererPssKb` | {'int': 3773} |
| `chromeRenderers` | {'int': 3773} |
| `chromeTabs` | {'int': 3773} |
| `chromeTabsProbedProfiles` | {'int': 3773} |
| `chromeUtilityPssKb` | {'int': 3773} |
| `desktopPssKb` | {'int': 3773} |
| `hostPssKb` | {'int': 3773} |
| `kind` | {'str': 3773} |
| `memAvailableKb` | {'int': 3773} |
| `memTotalKb` | {'int': 3773} |
| `otherPssKb` | {'int': 3773} |
| `processes` | {'int': 3773} |
| `pssFallbackProcesses` | {'int': 3773} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
