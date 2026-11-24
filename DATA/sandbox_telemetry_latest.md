# sandbox_telemetry_parse — 2026-11-24 17:58:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2386544 lines=5289
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5274 |
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
| `chromeBrowserPssKb` | {'int': 5274} |
| `chromeGpuPssKb` | {'int': 5274} |
| `chromeOtherPssKb` | {'int': 5274} |
| `chromeProcesses` | {'int': 5274} |
| `chromeProfiles` | {'int': 5274} |
| `chromeRendererMaxPssKb` | {'int': 5274} |
| `chromeRendererPssKb` | {'int': 5274} |
| `chromeRenderers` | {'int': 5274} |
| `chromeTabs` | {'int': 5274} |
| `chromeTabsProbedProfiles` | {'int': 5274} |
| `chromeUtilityPssKb` | {'int': 5274} |
| `desktopPssKb` | {'int': 5274} |
| `hostPssKb` | {'int': 5274} |
| `kind` | {'str': 5274} |
| `memAvailableKb` | {'int': 5274} |
| `memTotalKb` | {'int': 5274} |
| `otherPssKb` | {'int': 5274} |
| `processes` | {'int': 5274} |
| `pssFallbackProcesses` | {'int': 5274} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
