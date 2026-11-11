# sandbox_telemetry_parse — 2026-11-11 08:19:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1539431 lines=3410
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3401 |
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
| `chromeBrowserPssKb` | {'int': 3401} |
| `chromeGpuPssKb` | {'int': 3401} |
| `chromeOtherPssKb` | {'int': 3401} |
| `chromeProcesses` | {'int': 3401} |
| `chromeProfiles` | {'int': 3401} |
| `chromeRendererMaxPssKb` | {'int': 3401} |
| `chromeRendererPssKb` | {'int': 3401} |
| `chromeRenderers` | {'int': 3401} |
| `chromeTabs` | {'int': 3401} |
| `chromeTabsProbedProfiles` | {'int': 3401} |
| `chromeUtilityPssKb` | {'int': 3401} |
| `desktopPssKb` | {'int': 3401} |
| `hostPssKb` | {'int': 3401} |
| `kind` | {'str': 3401} |
| `memAvailableKb` | {'int': 3401} |
| `memTotalKb` | {'int': 3401} |
| `otherPssKb` | {'int': 3401} |
| `processes` | {'int': 3401} |
| `pssFallbackProcesses` | {'int': 3401} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
