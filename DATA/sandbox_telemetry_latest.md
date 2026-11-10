# sandbox_telemetry_parse — 2026-11-10 10:53:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1105478 lines=2451
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2442 |
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
| `chromeBrowserPssKb` | {'int': 2442} |
| `chromeGpuPssKb` | {'int': 2442} |
| `chromeOtherPssKb` | {'int': 2442} |
| `chromeProcesses` | {'int': 2442} |
| `chromeProfiles` | {'int': 2442} |
| `chromeRendererMaxPssKb` | {'int': 2442} |
| `chromeRendererPssKb` | {'int': 2442} |
| `chromeRenderers` | {'int': 2442} |
| `chromeTabs` | {'int': 2442} |
| `chromeTabsProbedProfiles` | {'int': 2442} |
| `chromeUtilityPssKb` | {'int': 2442} |
| `desktopPssKb` | {'int': 2442} |
| `hostPssKb` | {'int': 2442} |
| `kind` | {'str': 2442} |
| `memAvailableKb` | {'int': 2442} |
| `memTotalKb` | {'int': 2442} |
| `otherPssKb` | {'int': 2442} |
| `processes` | {'int': 2442} |
| `pssFallbackProcesses` | {'int': 2442} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
