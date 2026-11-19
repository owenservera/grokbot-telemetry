# sandbox_telemetry_parse — 2026-11-19 04:22:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1116312 lines=2476
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2467 |
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
| `chromeBrowserPssKb` | {'int': 2467} |
| `chromeGpuPssKb` | {'int': 2467} |
| `chromeOtherPssKb` | {'int': 2467} |
| `chromeProcesses` | {'int': 2467} |
| `chromeProfiles` | {'int': 2467} |
| `chromeRendererMaxPssKb` | {'int': 2467} |
| `chromeRendererPssKb` | {'int': 2467} |
| `chromeRenderers` | {'int': 2467} |
| `chromeTabs` | {'int': 2467} |
| `chromeTabsProbedProfiles` | {'int': 2467} |
| `chromeUtilityPssKb` | {'int': 2467} |
| `desktopPssKb` | {'int': 2467} |
| `hostPssKb` | {'int': 2467} |
| `kind` | {'str': 2467} |
| `memAvailableKb` | {'int': 2467} |
| `memTotalKb` | {'int': 2467} |
| `otherPssKb` | {'int': 2467} |
| `processes` | {'int': 2467} |
| `pssFallbackProcesses` | {'int': 2467} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
