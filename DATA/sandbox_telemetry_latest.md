# sandbox_telemetry_parse — 2026-11-25 22:33:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2953231 lines=6542
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6527 |
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
| `chromeBrowserPssKb` | {'int': 6527} |
| `chromeGpuPssKb` | {'int': 6527} |
| `chromeOtherPssKb` | {'int': 6527} |
| `chromeProcesses` | {'int': 6527} |
| `chromeProfiles` | {'int': 6527} |
| `chromeRendererMaxPssKb` | {'int': 6527} |
| `chromeRendererPssKb` | {'int': 6527} |
| `chromeRenderers` | {'int': 6527} |
| `chromeTabs` | {'int': 6527} |
| `chromeTabsProbedProfiles` | {'int': 6527} |
| `chromeUtilityPssKb` | {'int': 6527} |
| `desktopPssKb` | {'int': 6527} |
| `hostPssKb` | {'int': 6527} |
| `kind` | {'str': 6527} |
| `memAvailableKb` | {'int': 6527} |
| `memTotalKb` | {'int': 6527} |
| `otherPssKb` | {'int': 6527} |
| `processes` | {'int': 6527} |
| `pssFallbackProcesses` | {'int': 6527} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
