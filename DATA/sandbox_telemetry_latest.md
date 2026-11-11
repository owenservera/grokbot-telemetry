# sandbox_telemetry_parse — 2026-11-11 09:08:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1557072 lines=3449
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3440 |
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
| `chromeBrowserPssKb` | {'int': 3440} |
| `chromeGpuPssKb` | {'int': 3440} |
| `chromeOtherPssKb` | {'int': 3440} |
| `chromeProcesses` | {'int': 3440} |
| `chromeProfiles` | {'int': 3440} |
| `chromeRendererMaxPssKb` | {'int': 3440} |
| `chromeRendererPssKb` | {'int': 3440} |
| `chromeRenderers` | {'int': 3440} |
| `chromeTabs` | {'int': 3440} |
| `chromeTabsProbedProfiles` | {'int': 3440} |
| `chromeUtilityPssKb` | {'int': 3440} |
| `desktopPssKb` | {'int': 3440} |
| `hostPssKb` | {'int': 3440} |
| `kind` | {'str': 3440} |
| `memAvailableKb` | {'int': 3440} |
| `memTotalKb` | {'int': 3440} |
| `otherPssKb` | {'int': 3440} |
| `processes` | {'int': 3440} |
| `pssFallbackProcesses` | {'int': 3440} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
