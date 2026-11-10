# sandbox_telemetry_parse — 2026-11-11 00:54:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1406506 lines=3116
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3107 |
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
| `chromeBrowserPssKb` | {'int': 3107} |
| `chromeGpuPssKb` | {'int': 3107} |
| `chromeOtherPssKb` | {'int': 3107} |
| `chromeProcesses` | {'int': 3107} |
| `chromeProfiles` | {'int': 3107} |
| `chromeRendererMaxPssKb` | {'int': 3107} |
| `chromeRendererPssKb` | {'int': 3107} |
| `chromeRenderers` | {'int': 3107} |
| `chromeTabs` | {'int': 3107} |
| `chromeTabsProbedProfiles` | {'int': 3107} |
| `chromeUtilityPssKb` | {'int': 3107} |
| `desktopPssKb` | {'int': 3107} |
| `hostPssKb` | {'int': 3107} |
| `kind` | {'str': 3107} |
| `memAvailableKb` | {'int': 3107} |
| `memTotalKb` | {'int': 3107} |
| `otherPssKb` | {'int': 3107} |
| `processes` | {'int': 3107} |
| `pssFallbackProcesses` | {'int': 3107} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
