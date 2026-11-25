# sandbox_telemetry_parse — 2026-11-25 21:06:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2923845 lines=6477
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6462 |
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
| `chromeBrowserPssKb` | {'int': 6462} |
| `chromeGpuPssKb` | {'int': 6462} |
| `chromeOtherPssKb` | {'int': 6462} |
| `chromeProcesses` | {'int': 6462} |
| `chromeProfiles` | {'int': 6462} |
| `chromeRendererMaxPssKb` | {'int': 6462} |
| `chromeRendererPssKb` | {'int': 6462} |
| `chromeRenderers` | {'int': 6462} |
| `chromeTabs` | {'int': 6462} |
| `chromeTabsProbedProfiles` | {'int': 6462} |
| `chromeUtilityPssKb` | {'int': 6462} |
| `desktopPssKb` | {'int': 6462} |
| `hostPssKb` | {'int': 6462} |
| `kind` | {'str': 6462} |
| `memAvailableKb` | {'int': 6462} |
| `memTotalKb` | {'int': 6462} |
| `otherPssKb` | {'int': 6462} |
| `processes` | {'int': 6462} |
| `pssFallbackProcesses` | {'int': 6462} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
