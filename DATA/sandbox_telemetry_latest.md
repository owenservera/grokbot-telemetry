# sandbox_telemetry_parse — 2026-11-11 23:50:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1875685 lines=4153
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4144 |
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
| `chromeBrowserPssKb` | {'int': 4144} |
| `chromeGpuPssKb` | {'int': 4144} |
| `chromeOtherPssKb` | {'int': 4144} |
| `chromeProcesses` | {'int': 4144} |
| `chromeProfiles` | {'int': 4144} |
| `chromeRendererMaxPssKb` | {'int': 4144} |
| `chromeRendererPssKb` | {'int': 4144} |
| `chromeRenderers` | {'int': 4144} |
| `chromeTabs` | {'int': 4144} |
| `chromeTabsProbedProfiles` | {'int': 4144} |
| `chromeUtilityPssKb` | {'int': 4144} |
| `desktopPssKb` | {'int': 4144} |
| `hostPssKb` | {'int': 4144} |
| `kind` | {'str': 4144} |
| `memAvailableKb` | {'int': 4144} |
| `memTotalKb` | {'int': 4144} |
| `otherPssKb` | {'int': 4144} |
| `processes` | {'int': 4144} |
| `pssFallbackProcesses` | {'int': 4144} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
