# sandbox_telemetry_parse — 2026-11-07 03:58:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=302425 lines=676
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 667 |
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
| `chromeBrowserPssKb` | {'int': 667} |
| `chromeGpuPssKb` | {'int': 667} |
| `chromeOtherPssKb` | {'int': 667} |
| `chromeProcesses` | {'int': 667} |
| `chromeProfiles` | {'int': 667} |
| `chromeRendererMaxPssKb` | {'int': 667} |
| `chromeRendererPssKb` | {'int': 667} |
| `chromeRenderers` | {'int': 667} |
| `chromeTabs` | {'int': 667} |
| `chromeTabsProbedProfiles` | {'int': 667} |
| `chromeUtilityPssKb` | {'int': 667} |
| `desktopPssKb` | {'int': 667} |
| `hostPssKb` | {'int': 667} |
| `kind` | {'str': 667} |
| `memAvailableKb` | {'int': 667} |
| `memTotalKb` | {'int': 667} |
| `otherPssKb` | {'int': 667} |
| `processes` | {'int': 667} |
| `pssFallbackProcesses` | {'int': 667} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
