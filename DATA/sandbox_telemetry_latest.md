# sandbox_telemetry_parse — 2026-11-10 04:52:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=993726 lines=2204
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2195 |
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
| `chromeBrowserPssKb` | {'int': 2195} |
| `chromeGpuPssKb` | {'int': 2195} |
| `chromeOtherPssKb` | {'int': 2195} |
| `chromeProcesses` | {'int': 2195} |
| `chromeProfiles` | {'int': 2195} |
| `chromeRendererMaxPssKb` | {'int': 2195} |
| `chromeRendererPssKb` | {'int': 2195} |
| `chromeRenderers` | {'int': 2195} |
| `chromeTabs` | {'int': 2195} |
| `chromeTabsProbedProfiles` | {'int': 2195} |
| `chromeUtilityPssKb` | {'int': 2195} |
| `desktopPssKb` | {'int': 2195} |
| `hostPssKb` | {'int': 2195} |
| `kind` | {'str': 2195} |
| `memAvailableKb` | {'int': 2195} |
| `memTotalKb` | {'int': 2195} |
| `otherPssKb` | {'int': 2195} |
| `processes` | {'int': 2195} |
| `pssFallbackProcesses` | {'int': 2195} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
