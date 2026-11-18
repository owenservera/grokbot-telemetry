# sandbox_telemetry_parse — 2026-11-18 11:57:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=807672 lines=1792
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1785 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1785} |
| `chromeGpuPssKb` | {'int': 1785} |
| `chromeOtherPssKb` | {'int': 1785} |
| `chromeProcesses` | {'int': 1785} |
| `chromeProfiles` | {'int': 1785} |
| `chromeRendererMaxPssKb` | {'int': 1785} |
| `chromeRendererPssKb` | {'int': 1785} |
| `chromeRenderers` | {'int': 1785} |
| `chromeTabs` | {'int': 1785} |
| `chromeTabsProbedProfiles` | {'int': 1785} |
| `chromeUtilityPssKb` | {'int': 1785} |
| `desktopPssKb` | {'int': 1785} |
| `hostPssKb` | {'int': 1785} |
| `kind` | {'str': 1785} |
| `memAvailableKb` | {'int': 1785} |
| `memTotalKb` | {'int': 1785} |
| `otherPssKb` | {'int': 1785} |
| `processes` | {'int': 1785} |
| `pssFallbackProcesses` | {'int': 1785} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
