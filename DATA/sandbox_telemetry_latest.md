# sandbox_telemetry_parse — 2026-11-09 19:01:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=800571 lines=1777
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1768 |
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
| `chromeBrowserPssKb` | {'int': 1768} |
| `chromeGpuPssKb` | {'int': 1768} |
| `chromeOtherPssKb` | {'int': 1768} |
| `chromeProcesses` | {'int': 1768} |
| `chromeProfiles` | {'int': 1768} |
| `chromeRendererMaxPssKb` | {'int': 1768} |
| `chromeRendererPssKb` | {'int': 1768} |
| `chromeRenderers` | {'int': 1768} |
| `chromeTabs` | {'int': 1768} |
| `chromeTabsProbedProfiles` | {'int': 1768} |
| `chromeUtilityPssKb` | {'int': 1768} |
| `desktopPssKb` | {'int': 1768} |
| `hostPssKb` | {'int': 1768} |
| `kind` | {'str': 1768} |
| `memAvailableKb` | {'int': 1768} |
| `memTotalKb` | {'int': 1768} |
| `otherPssKb` | {'int': 1768} |
| `processes` | {'int': 1768} |
| `pssFallbackProcesses` | {'int': 1768} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
