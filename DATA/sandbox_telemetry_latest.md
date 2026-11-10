# sandbox_telemetry_parse — 2026-11-10 17:37:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1245829 lines=2761
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2752 |
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
| `chromeBrowserPssKb` | {'int': 2752} |
| `chromeGpuPssKb` | {'int': 2752} |
| `chromeOtherPssKb` | {'int': 2752} |
| `chromeProcesses` | {'int': 2752} |
| `chromeProfiles` | {'int': 2752} |
| `chromeRendererMaxPssKb` | {'int': 2752} |
| `chromeRendererPssKb` | {'int': 2752} |
| `chromeRenderers` | {'int': 2752} |
| `chromeTabs` | {'int': 2752} |
| `chromeTabsProbedProfiles` | {'int': 2752} |
| `chromeUtilityPssKb` | {'int': 2752} |
| `desktopPssKb` | {'int': 2752} |
| `hostPssKb` | {'int': 2752} |
| `kind` | {'str': 2752} |
| `memAvailableKb` | {'int': 2752} |
| `memTotalKb` | {'int': 2752} |
| `otherPssKb` | {'int': 2752} |
| `processes` | {'int': 2752} |
| `pssFallbackProcesses` | {'int': 2752} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
