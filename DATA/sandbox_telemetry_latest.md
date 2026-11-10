# sandbox_telemetry_parse — 2026-11-10 23:35:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1377987 lines=3053
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3044 |
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
| `chromeBrowserPssKb` | {'int': 3044} |
| `chromeGpuPssKb` | {'int': 3044} |
| `chromeOtherPssKb` | {'int': 3044} |
| `chromeProcesses` | {'int': 3044} |
| `chromeProfiles` | {'int': 3044} |
| `chromeRendererMaxPssKb` | {'int': 3044} |
| `chromeRendererPssKb` | {'int': 3044} |
| `chromeRenderers` | {'int': 3044} |
| `chromeTabs` | {'int': 3044} |
| `chromeTabsProbedProfiles` | {'int': 3044} |
| `chromeUtilityPssKb` | {'int': 3044} |
| `desktopPssKb` | {'int': 3044} |
| `hostPssKb` | {'int': 3044} |
| `kind` | {'str': 3044} |
| `memAvailableKb` | {'int': 3044} |
| `memTotalKb` | {'int': 3044} |
| `otherPssKb` | {'int': 3044} |
| `processes` | {'int': 3044} |
| `pssFallbackProcesses` | {'int': 3044} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
