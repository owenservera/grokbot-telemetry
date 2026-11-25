# sandbox_telemetry_parse — 2026-11-25 12:04:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2748394 lines=6089
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6074 |
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
| `chromeBrowserPssKb` | {'int': 6074} |
| `chromeGpuPssKb` | {'int': 6074} |
| `chromeOtherPssKb` | {'int': 6074} |
| `chromeProcesses` | {'int': 6074} |
| `chromeProfiles` | {'int': 6074} |
| `chromeRendererMaxPssKb` | {'int': 6074} |
| `chromeRendererPssKb` | {'int': 6074} |
| `chromeRenderers` | {'int': 6074} |
| `chromeTabs` | {'int': 6074} |
| `chromeTabsProbedProfiles` | {'int': 6074} |
| `chromeUtilityPssKb` | {'int': 6074} |
| `desktopPssKb` | {'int': 6074} |
| `hostPssKb` | {'int': 6074} |
| `kind` | {'str': 6074} |
| `memAvailableKb` | {'int': 6074} |
| `memTotalKb` | {'int': 6074} |
| `otherPssKb` | {'int': 6074} |
| `processes` | {'int': 6074} |
| `pssFallbackProcesses` | {'int': 6074} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
