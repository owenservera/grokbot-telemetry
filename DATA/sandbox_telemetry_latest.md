# sandbox_telemetry_parse — 2026-11-10 18:14:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1260778 lines=2794
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2785 |
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
| `chromeBrowserPssKb` | {'int': 2785} |
| `chromeGpuPssKb` | {'int': 2785} |
| `chromeOtherPssKb` | {'int': 2785} |
| `chromeProcesses` | {'int': 2785} |
| `chromeProfiles` | {'int': 2785} |
| `chromeRendererMaxPssKb` | {'int': 2785} |
| `chromeRendererPssKb` | {'int': 2785} |
| `chromeRenderers` | {'int': 2785} |
| `chromeTabs` | {'int': 2785} |
| `chromeTabsProbedProfiles` | {'int': 2785} |
| `chromeUtilityPssKb` | {'int': 2785} |
| `desktopPssKb` | {'int': 2785} |
| `hostPssKb` | {'int': 2785} |
| `kind` | {'str': 2785} |
| `memAvailableKb` | {'int': 2785} |
| `memTotalKb` | {'int': 2785} |
| `otherPssKb` | {'int': 2785} |
| `processes` | {'int': 2785} |
| `pssFallbackProcesses` | {'int': 2785} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
