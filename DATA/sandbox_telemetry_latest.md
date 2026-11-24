# sandbox_telemetry_parse — 2026-11-24 11:23:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2263443 lines=5017
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5002 |
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
| `chromeBrowserPssKb` | {'int': 5002} |
| `chromeGpuPssKb` | {'int': 5002} |
| `chromeOtherPssKb` | {'int': 5002} |
| `chromeProcesses` | {'int': 5002} |
| `chromeProfiles` | {'int': 5002} |
| `chromeRendererMaxPssKb` | {'int': 5002} |
| `chromeRendererPssKb` | {'int': 5002} |
| `chromeRenderers` | {'int': 5002} |
| `chromeTabs` | {'int': 5002} |
| `chromeTabsProbedProfiles` | {'int': 5002} |
| `chromeUtilityPssKb` | {'int': 5002} |
| `desktopPssKb` | {'int': 5002} |
| `hostPssKb` | {'int': 5002} |
| `kind` | {'str': 5002} |
| `memAvailableKb` | {'int': 5002} |
| `memTotalKb` | {'int': 5002} |
| `otherPssKb` | {'int': 5002} |
| `processes` | {'int': 5002} |
| `pssFallbackProcesses` | {'int': 5002} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
