# sandbox_telemetry_parse — 2026-11-24 17:28:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2377484 lines=5269
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5254 |
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
| `chromeBrowserPssKb` | {'int': 5254} |
| `chromeGpuPssKb` | {'int': 5254} |
| `chromeOtherPssKb` | {'int': 5254} |
| `chromeProcesses` | {'int': 5254} |
| `chromeProfiles` | {'int': 5254} |
| `chromeRendererMaxPssKb` | {'int': 5254} |
| `chromeRendererPssKb` | {'int': 5254} |
| `chromeRenderers` | {'int': 5254} |
| `chromeTabs` | {'int': 5254} |
| `chromeTabsProbedProfiles` | {'int': 5254} |
| `chromeUtilityPssKb` | {'int': 5254} |
| `desktopPssKb` | {'int': 5254} |
| `hostPssKb` | {'int': 5254} |
| `kind` | {'str': 5254} |
| `memAvailableKb` | {'int': 5254} |
| `memTotalKb` | {'int': 5254} |
| `otherPssKb` | {'int': 5254} |
| `processes` | {'int': 5254} |
| `pssFallbackProcesses` | {'int': 5254} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
