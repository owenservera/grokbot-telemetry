# sandbox_telemetry_parse — 2026-11-10 17:26:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1241299 lines=2751
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2742 |
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
| `chromeBrowserPssKb` | {'int': 2742} |
| `chromeGpuPssKb` | {'int': 2742} |
| `chromeOtherPssKb` | {'int': 2742} |
| `chromeProcesses` | {'int': 2742} |
| `chromeProfiles` | {'int': 2742} |
| `chromeRendererMaxPssKb` | {'int': 2742} |
| `chromeRendererPssKb` | {'int': 2742} |
| `chromeRenderers` | {'int': 2742} |
| `chromeTabs` | {'int': 2742} |
| `chromeTabsProbedProfiles` | {'int': 2742} |
| `chromeUtilityPssKb` | {'int': 2742} |
| `desktopPssKb` | {'int': 2742} |
| `hostPssKb` | {'int': 2742} |
| `kind` | {'str': 2742} |
| `memAvailableKb` | {'int': 2742} |
| `memTotalKb` | {'int': 2742} |
| `otherPssKb` | {'int': 2742} |
| `processes` | {'int': 2742} |
| `pssFallbackProcesses` | {'int': 2742} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
