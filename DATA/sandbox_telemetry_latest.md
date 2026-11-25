# sandbox_telemetry_parse — 2026-11-25 06:33:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2632152 lines=5832
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5817 |
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
| `chromeBrowserPssKb` | {'int': 5817} |
| `chromeGpuPssKb` | {'int': 5817} |
| `chromeOtherPssKb` | {'int': 5817} |
| `chromeProcesses` | {'int': 5817} |
| `chromeProfiles` | {'int': 5817} |
| `chromeRendererMaxPssKb` | {'int': 5817} |
| `chromeRendererPssKb` | {'int': 5817} |
| `chromeRenderers` | {'int': 5817} |
| `chromeTabs` | {'int': 5817} |
| `chromeTabsProbedProfiles` | {'int': 5817} |
| `chromeUtilityPssKb` | {'int': 5817} |
| `desktopPssKb` | {'int': 5817} |
| `hostPssKb` | {'int': 5817} |
| `kind` | {'str': 5817} |
| `memAvailableKb` | {'int': 5817} |
| `memTotalKb` | {'int': 5817} |
| `otherPssKb` | {'int': 5817} |
| `processes` | {'int': 5817} |
| `pssFallbackProcesses` | {'int': 5817} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
