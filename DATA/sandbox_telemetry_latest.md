# sandbox_telemetry_parse — 2026-11-12 22:12:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2347372 lines=5195
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5186 |
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
| `chromeBrowserPssKb` | {'int': 5186} |
| `chromeGpuPssKb` | {'int': 5186} |
| `chromeOtherPssKb` | {'int': 5186} |
| `chromeProcesses` | {'int': 5186} |
| `chromeProfiles` | {'int': 5186} |
| `chromeRendererMaxPssKb` | {'int': 5186} |
| `chromeRendererPssKb` | {'int': 5186} |
| `chromeRenderers` | {'int': 5186} |
| `chromeTabs` | {'int': 5186} |
| `chromeTabsProbedProfiles` | {'int': 5186} |
| `chromeUtilityPssKb` | {'int': 5186} |
| `desktopPssKb` | {'int': 5186} |
| `hostPssKb` | {'int': 5186} |
| `kind` | {'str': 5186} |
| `memAvailableKb` | {'int': 5186} |
| `memTotalKb` | {'int': 5186} |
| `otherPssKb` | {'int': 5186} |
| `processes` | {'int': 5186} |
| `pssFallbackProcesses` | {'int': 5186} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
