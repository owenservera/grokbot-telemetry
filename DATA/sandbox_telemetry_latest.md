# sandbox_telemetry_parse — 2026-11-26 09:24:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3184396 lines=7053
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7038 |
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
| `chromeBrowserPssKb` | {'int': 7038} |
| `chromeGpuPssKb` | {'int': 7038} |
| `chromeOtherPssKb` | {'int': 7038} |
| `chromeProcesses` | {'int': 7038} |
| `chromeProfiles` | {'int': 7038} |
| `chromeRendererMaxPssKb` | {'int': 7038} |
| `chromeRendererPssKb` | {'int': 7038} |
| `chromeRenderers` | {'int': 7038} |
| `chromeTabs` | {'int': 7038} |
| `chromeTabsProbedProfiles` | {'int': 7038} |
| `chromeUtilityPssKb` | {'int': 7038} |
| `desktopPssKb` | {'int': 7038} |
| `hostPssKb` | {'int': 7038} |
| `kind` | {'str': 7038} |
| `memAvailableKb` | {'int': 7038} |
| `memTotalKb` | {'int': 7038} |
| `otherPssKb` | {'int': 7038} |
| `processes` | {'int': 7038} |
| `pssFallbackProcesses` | {'int': 7038} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
