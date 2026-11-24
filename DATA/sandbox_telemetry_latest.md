# sandbox_telemetry_parse — 2026-11-24 20:33:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2437707 lines=5402
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5387 |
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
| `chromeBrowserPssKb` | {'int': 5387} |
| `chromeGpuPssKb` | {'int': 5387} |
| `chromeOtherPssKb` | {'int': 5387} |
| `chromeProcesses` | {'int': 5387} |
| `chromeProfiles` | {'int': 5387} |
| `chromeRendererMaxPssKb` | {'int': 5387} |
| `chromeRendererPssKb` | {'int': 5387} |
| `chromeRenderers` | {'int': 5387} |
| `chromeTabs` | {'int': 5387} |
| `chromeTabsProbedProfiles` | {'int': 5387} |
| `chromeUtilityPssKb` | {'int': 5387} |
| `desktopPssKb` | {'int': 5387} |
| `hostPssKb` | {'int': 5387} |
| `kind` | {'str': 5387} |
| `memAvailableKb` | {'int': 5387} |
| `memTotalKb` | {'int': 5387} |
| `otherPssKb` | {'int': 5387} |
| `processes` | {'int': 5387} |
| `pssFallbackProcesses` | {'int': 5387} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
