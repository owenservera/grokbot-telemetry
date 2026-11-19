# sandbox_telemetry_parse — 2026-11-19 12:57:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1280910 lines=2840
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2831 |
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
| `chromeBrowserPssKb` | {'int': 2831} |
| `chromeGpuPssKb` | {'int': 2831} |
| `chromeOtherPssKb` | {'int': 2831} |
| `chromeProcesses` | {'int': 2831} |
| `chromeProfiles` | {'int': 2831} |
| `chromeRendererMaxPssKb` | {'int': 2831} |
| `chromeRendererPssKb` | {'int': 2831} |
| `chromeRenderers` | {'int': 2831} |
| `chromeTabs` | {'int': 2831} |
| `chromeTabsProbedProfiles` | {'int': 2831} |
| `chromeUtilityPssKb` | {'int': 2831} |
| `desktopPssKb` | {'int': 2831} |
| `hostPssKb` | {'int': 2831} |
| `kind` | {'str': 2831} |
| `memAvailableKb` | {'int': 2831} |
| `memTotalKb` | {'int': 2831} |
| `otherPssKb` | {'int': 2831} |
| `processes` | {'int': 2831} |
| `pssFallbackProcesses` | {'int': 2831} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
