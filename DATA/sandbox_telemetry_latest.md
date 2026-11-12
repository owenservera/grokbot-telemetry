# sandbox_telemetry_parse — 2026-11-12 20:49:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2322951 lines=5141
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5132 |
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
| `chromeBrowserPssKb` | {'int': 5132} |
| `chromeGpuPssKb` | {'int': 5132} |
| `chromeOtherPssKb` | {'int': 5132} |
| `chromeProcesses` | {'int': 5132} |
| `chromeProfiles` | {'int': 5132} |
| `chromeRendererMaxPssKb` | {'int': 5132} |
| `chromeRendererPssKb` | {'int': 5132} |
| `chromeRenderers` | {'int': 5132} |
| `chromeTabs` | {'int': 5132} |
| `chromeTabsProbedProfiles` | {'int': 5132} |
| `chromeUtilityPssKb` | {'int': 5132} |
| `desktopPssKb` | {'int': 5132} |
| `hostPssKb` | {'int': 5132} |
| `kind` | {'str': 5132} |
| `memAvailableKb` | {'int': 5132} |
| `memTotalKb` | {'int': 5132} |
| `otherPssKb` | {'int': 5132} |
| `processes` | {'int': 5132} |
| `pssFallbackProcesses` | {'int': 5132} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
