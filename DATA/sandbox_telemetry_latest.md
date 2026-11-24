# sandbox_telemetry_parse — 2026-11-24 20:26:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2435896 lines=5398
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5383 |
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
| `chromeBrowserPssKb` | {'int': 5383} |
| `chromeGpuPssKb` | {'int': 5383} |
| `chromeOtherPssKb` | {'int': 5383} |
| `chromeProcesses` | {'int': 5383} |
| `chromeProfiles` | {'int': 5383} |
| `chromeRendererMaxPssKb` | {'int': 5383} |
| `chromeRendererPssKb` | {'int': 5383} |
| `chromeRenderers` | {'int': 5383} |
| `chromeTabs` | {'int': 5383} |
| `chromeTabsProbedProfiles` | {'int': 5383} |
| `chromeUtilityPssKb` | {'int': 5383} |
| `desktopPssKb` | {'int': 5383} |
| `hostPssKb` | {'int': 5383} |
| `kind` | {'str': 5383} |
| `memAvailableKb` | {'int': 5383} |
| `memTotalKb` | {'int': 5383} |
| `otherPssKb` | {'int': 5383} |
| `processes` | {'int': 5383} |
| `pssFallbackProcesses` | {'int': 5383} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
