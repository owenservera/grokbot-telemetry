# sandbox_telemetry_parse — 2026-11-20 00:46:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1513202 lines=3355
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3344 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3344} |
| `chromeGpuPssKb` | {'int': 3344} |
| `chromeOtherPssKb` | {'int': 3344} |
| `chromeProcesses` | {'int': 3344} |
| `chromeProfiles` | {'int': 3344} |
| `chromeRendererMaxPssKb` | {'int': 3344} |
| `chromeRendererPssKb` | {'int': 3344} |
| `chromeRenderers` | {'int': 3344} |
| `chromeTabs` | {'int': 3344} |
| `chromeTabsProbedProfiles` | {'int': 3344} |
| `chromeUtilityPssKb` | {'int': 3344} |
| `desktopPssKb` | {'int': 3344} |
| `hostPssKb` | {'int': 3344} |
| `kind` | {'str': 3344} |
| `memAvailableKb` | {'int': 3344} |
| `memTotalKb` | {'int': 3344} |
| `otherPssKb` | {'int': 3344} |
| `processes` | {'int': 3344} |
| `pssFallbackProcesses` | {'int': 3344} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
