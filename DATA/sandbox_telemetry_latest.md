# sandbox_telemetry_parse — 2026-11-26 11:37:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3232378 lines=7159
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7144 |
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
| `chromeBrowserPssKb` | {'int': 7144} |
| `chromeGpuPssKb` | {'int': 7144} |
| `chromeOtherPssKb` | {'int': 7144} |
| `chromeProcesses` | {'int': 7144} |
| `chromeProfiles` | {'int': 7144} |
| `chromeRendererMaxPssKb` | {'int': 7144} |
| `chromeRendererPssKb` | {'int': 7144} |
| `chromeRenderers` | {'int': 7144} |
| `chromeTabs` | {'int': 7144} |
| `chromeTabsProbedProfiles` | {'int': 7144} |
| `chromeUtilityPssKb` | {'int': 7144} |
| `desktopPssKb` | {'int': 7144} |
| `hostPssKb` | {'int': 7144} |
| `kind` | {'str': 7144} |
| `memAvailableKb` | {'int': 7144} |
| `memTotalKb` | {'int': 7144} |
| `otherPssKb` | {'int': 7144} |
| `processes` | {'int': 7144} |
| `pssFallbackProcesses` | {'int': 7144} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
