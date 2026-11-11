# sandbox_telemetry_parse — 2026-11-11 16:52:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1723149 lines=3816
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3807 |
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
| `chromeBrowserPssKb` | {'int': 3807} |
| `chromeGpuPssKb` | {'int': 3807} |
| `chromeOtherPssKb` | {'int': 3807} |
| `chromeProcesses` | {'int': 3807} |
| `chromeProfiles` | {'int': 3807} |
| `chromeRendererMaxPssKb` | {'int': 3807} |
| `chromeRendererPssKb` | {'int': 3807} |
| `chromeRenderers` | {'int': 3807} |
| `chromeTabs` | {'int': 3807} |
| `chromeTabsProbedProfiles` | {'int': 3807} |
| `chromeUtilityPssKb` | {'int': 3807} |
| `desktopPssKb` | {'int': 3807} |
| `hostPssKb` | {'int': 3807} |
| `kind` | {'str': 3807} |
| `memAvailableKb` | {'int': 3807} |
| `memTotalKb` | {'int': 3807} |
| `otherPssKb` | {'int': 3807} |
| `processes` | {'int': 3807} |
| `pssFallbackProcesses` | {'int': 3807} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
