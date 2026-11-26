# sandbox_telemetry_parse — 2026-11-26 16:43:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3335213 lines=7388
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7371 |
| `egress_tunnel` | 13 |
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
| `attempt` | {'int': 13} |
| `exitStatus` | {'int': 6} |
| `kind` | {'str': 13} |
| `outcome` | {'str': 13} |
| `runtimeS` | {'int': 6} |

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
| `chromeBrowserPssKb` | {'int': 7371} |
| `chromeGpuPssKb` | {'int': 7371} |
| `chromeOtherPssKb` | {'int': 7371} |
| `chromeProcesses` | {'int': 7371} |
| `chromeProfiles` | {'int': 7371} |
| `chromeRendererMaxPssKb` | {'int': 7371} |
| `chromeRendererPssKb` | {'int': 7371} |
| `chromeRenderers` | {'int': 7371} |
| `chromeTabs` | {'int': 7371} |
| `chromeTabsProbedProfiles` | {'int': 7371} |
| `chromeUtilityPssKb` | {'int': 7371} |
| `desktopPssKb` | {'int': 7371} |
| `hostPssKb` | {'int': 7371} |
| `kind` | {'str': 7371} |
| `memAvailableKb` | {'int': 7371} |
| `memTotalKb` | {'int': 7371} |
| `otherPssKb` | {'int': 7371} |
| `processes` | {'int': 7371} |
| `pssFallbackProcesses` | {'int': 7371} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
