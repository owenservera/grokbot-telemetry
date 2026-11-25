# sandbox_telemetry_parse — 2026-11-25 16:16:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2827524 lines=6264
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6249 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6249} |
| `chromeGpuPssKb` | {'int': 6249} |
| `chromeOtherPssKb` | {'int': 6249} |
| `chromeProcesses` | {'int': 6249} |
| `chromeProfiles` | {'int': 6249} |
| `chromeRendererMaxPssKb` | {'int': 6249} |
| `chromeRendererPssKb` | {'int': 6249} |
| `chromeRenderers` | {'int': 6249} |
| `chromeTabs` | {'int': 6249} |
| `chromeTabsProbedProfiles` | {'int': 6249} |
| `chromeUtilityPssKb` | {'int': 6249} |
| `desktopPssKb` | {'int': 6249} |
| `hostPssKb` | {'int': 6249} |
| `kind` | {'str': 6249} |
| `memAvailableKb` | {'int': 6249} |
| `memTotalKb` | {'int': 6249} |
| `otherPssKb` | {'int': 6249} |
| `processes` | {'int': 6249} |
| `pssFallbackProcesses` | {'int': 6249} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
