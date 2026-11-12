# sandbox_telemetry_parse — 2026-11-12 02:59:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1940892 lines=4297
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4288 |
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
| `chromeBrowserPssKb` | {'int': 4288} |
| `chromeGpuPssKb` | {'int': 4288} |
| `chromeOtherPssKb` | {'int': 4288} |
| `chromeProcesses` | {'int': 4288} |
| `chromeProfiles` | {'int': 4288} |
| `chromeRendererMaxPssKb` | {'int': 4288} |
| `chromeRendererPssKb` | {'int': 4288} |
| `chromeRenderers` | {'int': 4288} |
| `chromeTabs` | {'int': 4288} |
| `chromeTabsProbedProfiles` | {'int': 4288} |
| `chromeUtilityPssKb` | {'int': 4288} |
| `desktopPssKb` | {'int': 4288} |
| `hostPssKb` | {'int': 4288} |
| `kind` | {'str': 4288} |
| `memAvailableKb` | {'int': 4288} |
| `memTotalKb` | {'int': 4288} |
| `otherPssKb` | {'int': 4288} |
| `processes` | {'int': 4288} |
| `pssFallbackProcesses` | {'int': 4288} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
