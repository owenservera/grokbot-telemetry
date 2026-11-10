# sandbox_telemetry_parse — 2026-11-10 18:21:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1263949 lines=2801
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2792 |
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
| `chromeBrowserPssKb` | {'int': 2792} |
| `chromeGpuPssKb` | {'int': 2792} |
| `chromeOtherPssKb` | {'int': 2792} |
| `chromeProcesses` | {'int': 2792} |
| `chromeProfiles` | {'int': 2792} |
| `chromeRendererMaxPssKb` | {'int': 2792} |
| `chromeRendererPssKb` | {'int': 2792} |
| `chromeRenderers` | {'int': 2792} |
| `chromeTabs` | {'int': 2792} |
| `chromeTabsProbedProfiles` | {'int': 2792} |
| `chromeUtilityPssKb` | {'int': 2792} |
| `desktopPssKb` | {'int': 2792} |
| `hostPssKb` | {'int': 2792} |
| `kind` | {'str': 2792} |
| `memAvailableKb` | {'int': 2792} |
| `memTotalKb` | {'int': 2792} |
| `otherPssKb` | {'int': 2792} |
| `processes` | {'int': 2792} |
| `pssFallbackProcesses` | {'int': 2792} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
