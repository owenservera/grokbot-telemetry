# sandbox_telemetry_parse — 2026-11-24 00:36:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2058155 lines=4563
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4548 |
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
| `chromeBrowserPssKb` | {'int': 4548} |
| `chromeGpuPssKb` | {'int': 4548} |
| `chromeOtherPssKb` | {'int': 4548} |
| `chromeProcesses` | {'int': 4548} |
| `chromeProfiles` | {'int': 4548} |
| `chromeRendererMaxPssKb` | {'int': 4548} |
| `chromeRendererPssKb` | {'int': 4548} |
| `chromeRenderers` | {'int': 4548} |
| `chromeTabs` | {'int': 4548} |
| `chromeTabsProbedProfiles` | {'int': 4548} |
| `chromeUtilityPssKb` | {'int': 4548} |
| `desktopPssKb` | {'int': 4548} |
| `hostPssKb` | {'int': 4548} |
| `kind` | {'str': 4548} |
| `memAvailableKb` | {'int': 4548} |
| `memTotalKb` | {'int': 4548} |
| `otherPssKb` | {'int': 4548} |
| `processes` | {'int': 4548} |
| `pssFallbackProcesses` | {'int': 4548} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
