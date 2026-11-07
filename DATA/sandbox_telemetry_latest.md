# sandbox_telemetry_parse — 2026-11-07 08:03:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=371594 lines=829
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 820 |
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
| `chromeBrowserPssKb` | {'int': 820} |
| `chromeGpuPssKb` | {'int': 820} |
| `chromeOtherPssKb` | {'int': 820} |
| `chromeProcesses` | {'int': 820} |
| `chromeProfiles` | {'int': 820} |
| `chromeRendererMaxPssKb` | {'int': 820} |
| `chromeRendererPssKb` | {'int': 820} |
| `chromeRenderers` | {'int': 820} |
| `chromeTabs` | {'int': 820} |
| `chromeTabsProbedProfiles` | {'int': 820} |
| `chromeUtilityPssKb` | {'int': 820} |
| `desktopPssKb` | {'int': 820} |
| `hostPssKb` | {'int': 820} |
| `kind` | {'str': 820} |
| `memAvailableKb` | {'int': 820} |
| `memTotalKb` | {'int': 820} |
| `otherPssKb` | {'int': 820} |
| `processes` | {'int': 820} |
| `pssFallbackProcesses` | {'int': 820} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
