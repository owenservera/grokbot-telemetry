# sandbox_telemetry_parse — 2026-11-12 01:53:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1919155 lines=4249
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4240 |
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
| `chromeBrowserPssKb` | {'int': 4240} |
| `chromeGpuPssKb` | {'int': 4240} |
| `chromeOtherPssKb` | {'int': 4240} |
| `chromeProcesses` | {'int': 4240} |
| `chromeProfiles` | {'int': 4240} |
| `chromeRendererMaxPssKb` | {'int': 4240} |
| `chromeRendererPssKb` | {'int': 4240} |
| `chromeRenderers` | {'int': 4240} |
| `chromeTabs` | {'int': 4240} |
| `chromeTabsProbedProfiles` | {'int': 4240} |
| `chromeUtilityPssKb` | {'int': 4240} |
| `desktopPssKb` | {'int': 4240} |
| `hostPssKb` | {'int': 4240} |
| `kind` | {'str': 4240} |
| `memAvailableKb` | {'int': 4240} |
| `memTotalKb` | {'int': 4240} |
| `otherPssKb` | {'int': 4240} |
| `processes` | {'int': 4240} |
| `pssFallbackProcesses` | {'int': 4240} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
