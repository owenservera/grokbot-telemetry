# sandbox_telemetry_parse — 2026-11-10 03:11:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=966144 lines=2143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2134 |
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
| `chromeBrowserPssKb` | {'int': 2134} |
| `chromeGpuPssKb` | {'int': 2134} |
| `chromeOtherPssKb` | {'int': 2134} |
| `chromeProcesses` | {'int': 2134} |
| `chromeProfiles` | {'int': 2134} |
| `chromeRendererMaxPssKb` | {'int': 2134} |
| `chromeRendererPssKb` | {'int': 2134} |
| `chromeRenderers` | {'int': 2134} |
| `chromeTabs` | {'int': 2134} |
| `chromeTabsProbedProfiles` | {'int': 2134} |
| `chromeUtilityPssKb` | {'int': 2134} |
| `desktopPssKb` | {'int': 2134} |
| `hostPssKb` | {'int': 2134} |
| `kind` | {'str': 2134} |
| `memAvailableKb` | {'int': 2134} |
| `memTotalKb` | {'int': 2134} |
| `otherPssKb` | {'int': 2134} |
| `processes` | {'int': 2134} |
| `pssFallbackProcesses` | {'int': 2134} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
