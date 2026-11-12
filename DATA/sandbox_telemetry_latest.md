# sandbox_telemetry_parse — 2026-11-12 02:00:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1920967 lines=4253
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4244 |
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
| `chromeBrowserPssKb` | {'int': 4244} |
| `chromeGpuPssKb` | {'int': 4244} |
| `chromeOtherPssKb` | {'int': 4244} |
| `chromeProcesses` | {'int': 4244} |
| `chromeProfiles` | {'int': 4244} |
| `chromeRendererMaxPssKb` | {'int': 4244} |
| `chromeRendererPssKb` | {'int': 4244} |
| `chromeRenderers` | {'int': 4244} |
| `chromeTabs` | {'int': 4244} |
| `chromeTabsProbedProfiles` | {'int': 4244} |
| `chromeUtilityPssKb` | {'int': 4244} |
| `desktopPssKb` | {'int': 4244} |
| `hostPssKb` | {'int': 4244} |
| `kind` | {'str': 4244} |
| `memAvailableKb` | {'int': 4244} |
| `memTotalKb` | {'int': 4244} |
| `otherPssKb` | {'int': 4244} |
| `processes` | {'int': 4244} |
| `pssFallbackProcesses` | {'int': 4244} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
