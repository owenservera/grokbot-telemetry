# sandbox_telemetry_parse — 2026-11-12 13:35:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2152177 lines=4764
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4755 |
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
| `chromeBrowserPssKb` | {'int': 4755} |
| `chromeGpuPssKb` | {'int': 4755} |
| `chromeOtherPssKb` | {'int': 4755} |
| `chromeProcesses` | {'int': 4755} |
| `chromeProfiles` | {'int': 4755} |
| `chromeRendererMaxPssKb` | {'int': 4755} |
| `chromeRendererPssKb` | {'int': 4755} |
| `chromeRenderers` | {'int': 4755} |
| `chromeTabs` | {'int': 4755} |
| `chromeTabsProbedProfiles` | {'int': 4755} |
| `chromeUtilityPssKb` | {'int': 4755} |
| `desktopPssKb` | {'int': 4755} |
| `hostPssKb` | {'int': 4755} |
| `kind` | {'str': 4755} |
| `memAvailableKb` | {'int': 4755} |
| `memTotalKb` | {'int': 4755} |
| `otherPssKb` | {'int': 4755} |
| `processes` | {'int': 4755} |
| `pssFallbackProcesses` | {'int': 4755} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
