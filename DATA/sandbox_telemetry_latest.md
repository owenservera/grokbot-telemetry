# sandbox_telemetry_parse — 2026-11-25 22:53:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2959107 lines=6555
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6540 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6540} |
| `chromeGpuPssKb` | {'int': 6540} |
| `chromeOtherPssKb` | {'int': 6540} |
| `chromeProcesses` | {'int': 6540} |
| `chromeProfiles` | {'int': 6540} |
| `chromeRendererMaxPssKb` | {'int': 6540} |
| `chromeRendererPssKb` | {'int': 6540} |
| `chromeRenderers` | {'int': 6540} |
| `chromeTabs` | {'int': 6540} |
| `chromeTabsProbedProfiles` | {'int': 6540} |
| `chromeUtilityPssKb` | {'int': 6540} |
| `desktopPssKb` | {'int': 6540} |
| `hostPssKb` | {'int': 6540} |
| `kind` | {'str': 6540} |
| `memAvailableKb` | {'int': 6540} |
| `memTotalKb` | {'int': 6540} |
| `otherPssKb` | {'int': 6540} |
| `processes` | {'int': 6540} |
| `pssFallbackProcesses` | {'int': 6540} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
