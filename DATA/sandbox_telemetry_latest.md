# sandbox_telemetry_parse — 2026-11-25 18:58:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2879523 lines=6379
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6364 |
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
| `chromeBrowserPssKb` | {'int': 6364} |
| `chromeGpuPssKb` | {'int': 6364} |
| `chromeOtherPssKb` | {'int': 6364} |
| `chromeProcesses` | {'int': 6364} |
| `chromeProfiles` | {'int': 6364} |
| `chromeRendererMaxPssKb` | {'int': 6364} |
| `chromeRendererPssKb` | {'int': 6364} |
| `chromeRenderers` | {'int': 6364} |
| `chromeTabs` | {'int': 6364} |
| `chromeTabsProbedProfiles` | {'int': 6364} |
| `chromeUtilityPssKb` | {'int': 6364} |
| `desktopPssKb` | {'int': 6364} |
| `hostPssKb` | {'int': 6364} |
| `kind` | {'str': 6364} |
| `memAvailableKb` | {'int': 6364} |
| `memTotalKb` | {'int': 6364} |
| `otherPssKb` | {'int': 6364} |
| `processes` | {'int': 6364} |
| `pssFallbackProcesses` | {'int': 6364} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
