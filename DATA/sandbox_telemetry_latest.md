# sandbox_telemetry_parse — 2026-11-24 20:03:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2429112 lines=5383
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5368 |
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
| `chromeBrowserPssKb` | {'int': 5368} |
| `chromeGpuPssKb` | {'int': 5368} |
| `chromeOtherPssKb` | {'int': 5368} |
| `chromeProcesses` | {'int': 5368} |
| `chromeProfiles` | {'int': 5368} |
| `chromeRendererMaxPssKb` | {'int': 5368} |
| `chromeRendererPssKb` | {'int': 5368} |
| `chromeRenderers` | {'int': 5368} |
| `chromeTabs` | {'int': 5368} |
| `chromeTabsProbedProfiles` | {'int': 5368} |
| `chromeUtilityPssKb` | {'int': 5368} |
| `desktopPssKb` | {'int': 5368} |
| `hostPssKb` | {'int': 5368} |
| `kind` | {'str': 5368} |
| `memAvailableKb` | {'int': 5368} |
| `memTotalKb` | {'int': 5368} |
| `otherPssKb` | {'int': 5368} |
| `processes` | {'int': 5368} |
| `pssFallbackProcesses` | {'int': 5368} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
