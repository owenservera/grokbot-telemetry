# sandbox_telemetry_parse — 2026-11-17 00:04:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=171055 lines=384
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 377 |
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
| `chromeBrowserPssKb` | {'int': 377} |
| `chromeGpuPssKb` | {'int': 377} |
| `chromeOtherPssKb` | {'int': 377} |
| `chromeProcesses` | {'int': 377} |
| `chromeProfiles` | {'int': 377} |
| `chromeRendererMaxPssKb` | {'int': 377} |
| `chromeRendererPssKb` | {'int': 377} |
| `chromeRenderers` | {'int': 377} |
| `chromeTabs` | {'int': 377} |
| `chromeTabsProbedProfiles` | {'int': 377} |
| `chromeUtilityPssKb` | {'int': 377} |
| `desktopPssKb` | {'int': 377} |
| `hostPssKb` | {'int': 377} |
| `kind` | {'str': 377} |
| `memAvailableKb` | {'int': 377} |
| `memTotalKb` | {'int': 377} |
| `otherPssKb` | {'int': 377} |
| `processes` | {'int': 377} |
| `pssFallbackProcesses` | {'int': 377} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
