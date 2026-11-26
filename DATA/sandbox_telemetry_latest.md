# sandbox_telemetry_parse — 2026-11-26 04:14:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3065402 lines=6790
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6775 |
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
| `chromeBrowserPssKb` | {'int': 6775} |
| `chromeGpuPssKb` | {'int': 6775} |
| `chromeOtherPssKb` | {'int': 6775} |
| `chromeProcesses` | {'int': 6775} |
| `chromeProfiles` | {'int': 6775} |
| `chromeRendererMaxPssKb` | {'int': 6775} |
| `chromeRendererPssKb` | {'int': 6775} |
| `chromeRenderers` | {'int': 6775} |
| `chromeTabs` | {'int': 6775} |
| `chromeTabsProbedProfiles` | {'int': 6775} |
| `chromeUtilityPssKb` | {'int': 6775} |
| `desktopPssKb` | {'int': 6775} |
| `hostPssKb` | {'int': 6775} |
| `kind` | {'str': 6775} |
| `memAvailableKb` | {'int': 6775} |
| `memTotalKb` | {'int': 6775} |
| `otherPssKb` | {'int': 6775} |
| `processes` | {'int': 6775} |
| `pssFallbackProcesses` | {'int': 6775} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
