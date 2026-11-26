# sandbox_telemetry_parse — 2026-11-26 08:58:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3173077 lines=7028
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7013 |
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
| `chromeBrowserPssKb` | {'int': 7013} |
| `chromeGpuPssKb` | {'int': 7013} |
| `chromeOtherPssKb` | {'int': 7013} |
| `chromeProcesses` | {'int': 7013} |
| `chromeProfiles` | {'int': 7013} |
| `chromeRendererMaxPssKb` | {'int': 7013} |
| `chromeRendererPssKb` | {'int': 7013} |
| `chromeRenderers` | {'int': 7013} |
| `chromeTabs` | {'int': 7013} |
| `chromeTabsProbedProfiles` | {'int': 7013} |
| `chromeUtilityPssKb` | {'int': 7013} |
| `desktopPssKb` | {'int': 7013} |
| `hostPssKb` | {'int': 7013} |
| `kind` | {'str': 7013} |
| `memAvailableKb` | {'int': 7013} |
| `memTotalKb` | {'int': 7013} |
| `otherPssKb` | {'int': 7013} |
| `processes` | {'int': 7013} |
| `pssFallbackProcesses` | {'int': 7013} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
