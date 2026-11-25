# sandbox_telemetry_parse — 2026-11-25 19:04:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2882235 lines=6385
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6370 |
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
| `chromeBrowserPssKb` | {'int': 6370} |
| `chromeGpuPssKb` | {'int': 6370} |
| `chromeOtherPssKb` | {'int': 6370} |
| `chromeProcesses` | {'int': 6370} |
| `chromeProfiles` | {'int': 6370} |
| `chromeRendererMaxPssKb` | {'int': 6370} |
| `chromeRendererPssKb` | {'int': 6370} |
| `chromeRenderers` | {'int': 6370} |
| `chromeTabs` | {'int': 6370} |
| `chromeTabsProbedProfiles` | {'int': 6370} |
| `chromeUtilityPssKb` | {'int': 6370} |
| `desktopPssKb` | {'int': 6370} |
| `hostPssKb` | {'int': 6370} |
| `kind` | {'str': 6370} |
| `memAvailableKb` | {'int': 6370} |
| `memTotalKb` | {'int': 6370} |
| `otherPssKb` | {'int': 6370} |
| `processes` | {'int': 6370} |
| `pssFallbackProcesses` | {'int': 6370} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
