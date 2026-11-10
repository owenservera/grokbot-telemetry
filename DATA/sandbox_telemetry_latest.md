# sandbox_telemetry_parse — 2026-11-10 15:35:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1203706 lines=2668
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2659 |
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
| `chromeBrowserPssKb` | {'int': 2659} |
| `chromeGpuPssKb` | {'int': 2659} |
| `chromeOtherPssKb` | {'int': 2659} |
| `chromeProcesses` | {'int': 2659} |
| `chromeProfiles` | {'int': 2659} |
| `chromeRendererMaxPssKb` | {'int': 2659} |
| `chromeRendererPssKb` | {'int': 2659} |
| `chromeRenderers` | {'int': 2659} |
| `chromeTabs` | {'int': 2659} |
| `chromeTabsProbedProfiles` | {'int': 2659} |
| `chromeUtilityPssKb` | {'int': 2659} |
| `desktopPssKb` | {'int': 2659} |
| `hostPssKb` | {'int': 2659} |
| `kind` | {'str': 2659} |
| `memAvailableKb` | {'int': 2659} |
| `memTotalKb` | {'int': 2659} |
| `otherPssKb` | {'int': 2659} |
| `processes` | {'int': 2659} |
| `pssFallbackProcesses` | {'int': 2659} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
