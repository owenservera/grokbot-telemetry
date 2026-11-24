# sandbox_telemetry_parse — 2026-11-24 12:41:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2287862 lines=5071
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5056 |
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
| `chromeBrowserPssKb` | {'int': 5056} |
| `chromeGpuPssKb` | {'int': 5056} |
| `chromeOtherPssKb` | {'int': 5056} |
| `chromeProcesses` | {'int': 5056} |
| `chromeProfiles` | {'int': 5056} |
| `chromeRendererMaxPssKb` | {'int': 5056} |
| `chromeRendererPssKb` | {'int': 5056} |
| `chromeRenderers` | {'int': 5056} |
| `chromeTabs` | {'int': 5056} |
| `chromeTabsProbedProfiles` | {'int': 5056} |
| `chromeUtilityPssKb` | {'int': 5056} |
| `desktopPssKb` | {'int': 5056} |
| `hostPssKb` | {'int': 5056} |
| `kind` | {'str': 5056} |
| `memAvailableKb` | {'int': 5056} |
| `memTotalKb` | {'int': 5056} |
| `otherPssKb` | {'int': 5056} |
| `processes` | {'int': 5056} |
| `pssFallbackProcesses` | {'int': 5056} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
