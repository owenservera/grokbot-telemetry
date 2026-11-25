# sandbox_telemetry_parse — 2026-11-25 16:47:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2838832 lines=6289
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6274 |
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
| `chromeBrowserPssKb` | {'int': 6274} |
| `chromeGpuPssKb` | {'int': 6274} |
| `chromeOtherPssKb` | {'int': 6274} |
| `chromeProcesses` | {'int': 6274} |
| `chromeProfiles` | {'int': 6274} |
| `chromeRendererMaxPssKb` | {'int': 6274} |
| `chromeRendererPssKb` | {'int': 6274} |
| `chromeRenderers` | {'int': 6274} |
| `chromeTabs` | {'int': 6274} |
| `chromeTabsProbedProfiles` | {'int': 6274} |
| `chromeUtilityPssKb` | {'int': 6274} |
| `desktopPssKb` | {'int': 6274} |
| `hostPssKb` | {'int': 6274} |
| `kind` | {'str': 6274} |
| `memAvailableKb` | {'int': 6274} |
| `memTotalKb` | {'int': 6274} |
| `otherPssKb` | {'int': 6274} |
| `processes` | {'int': 6274} |
| `pssFallbackProcesses` | {'int': 6274} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
