# sandbox_telemetry_parse — 2026-11-11 21:47:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1832242 lines=4057
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4048 |
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
| `chromeBrowserPssKb` | {'int': 4048} |
| `chromeGpuPssKb` | {'int': 4048} |
| `chromeOtherPssKb` | {'int': 4048} |
| `chromeProcesses` | {'int': 4048} |
| `chromeProfiles` | {'int': 4048} |
| `chromeRendererMaxPssKb` | {'int': 4048} |
| `chromeRendererPssKb` | {'int': 4048} |
| `chromeRenderers` | {'int': 4048} |
| `chromeTabs` | {'int': 4048} |
| `chromeTabsProbedProfiles` | {'int': 4048} |
| `chromeUtilityPssKb` | {'int': 4048} |
| `desktopPssKb` | {'int': 4048} |
| `hostPssKb` | {'int': 4048} |
| `kind` | {'str': 4048} |
| `memAvailableKb` | {'int': 4048} |
| `memTotalKb` | {'int': 4048} |
| `otherPssKb` | {'int': 4048} |
| `processes` | {'int': 4048} |
| `pssFallbackProcesses` | {'int': 4048} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
