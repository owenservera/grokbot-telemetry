# sandbox_telemetry_parse — 2026-11-28 12:27:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=885559 lines=1964
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1956 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1956} |
| `chromeGpuPssKb` | {'int': 1956} |
| `chromeOtherPssKb` | {'int': 1956} |
| `chromeProcesses` | {'int': 1956} |
| `chromeProfiles` | {'int': 1956} |
| `chromeRendererMaxPssKb` | {'int': 1956} |
| `chromeRendererPssKb` | {'int': 1956} |
| `chromeRenderers` | {'int': 1956} |
| `chromeTabs` | {'int': 1956} |
| `chromeTabsProbedProfiles` | {'int': 1956} |
| `chromeUtilityPssKb` | {'int': 1956} |
| `desktopPssKb` | {'int': 1956} |
| `hostPssKb` | {'int': 1956} |
| `kind` | {'str': 1956} |
| `memAvailableKb` | {'int': 1956} |
| `memTotalKb` | {'int': 1956} |
| `otherPssKb` | {'int': 1956} |
| `processes` | {'int': 1956} |
| `pssFallbackProcesses` | {'int': 1956} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
