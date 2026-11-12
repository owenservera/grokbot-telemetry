# sandbox_telemetry_parse — 2026-11-12 19:20:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2289436 lines=5067
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5058 |
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
| `chromeBrowserPssKb` | {'int': 5058} |
| `chromeGpuPssKb` | {'int': 5058} |
| `chromeOtherPssKb` | {'int': 5058} |
| `chromeProcesses` | {'int': 5058} |
| `chromeProfiles` | {'int': 5058} |
| `chromeRendererMaxPssKb` | {'int': 5058} |
| `chromeRendererPssKb` | {'int': 5058} |
| `chromeRenderers` | {'int': 5058} |
| `chromeTabs` | {'int': 5058} |
| `chromeTabsProbedProfiles` | {'int': 5058} |
| `chromeUtilityPssKb` | {'int': 5058} |
| `desktopPssKb` | {'int': 5058} |
| `hostPssKb` | {'int': 5058} |
| `kind` | {'str': 5058} |
| `memAvailableKb` | {'int': 5058} |
| `memTotalKb` | {'int': 5058} |
| `otherPssKb` | {'int': 5058} |
| `processes` | {'int': 5058} |
| `pssFallbackProcesses` | {'int': 5058} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
