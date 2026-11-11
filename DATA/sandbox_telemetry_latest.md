# sandbox_telemetry_parse — 2026-11-11 01:04:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1408314 lines=3120
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3111 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 3111} |
| `chromeGpuPssKb` | {'int': 3111} |
| `chromeOtherPssKb` | {'int': 3111} |
| `chromeProcesses` | {'int': 3111} |
| `chromeProfiles` | {'int': 3111} |
| `chromeRendererMaxPssKb` | {'int': 3111} |
| `chromeRendererPssKb` | {'int': 3111} |
| `chromeRenderers` | {'int': 3111} |
| `chromeTabs` | {'int': 3111} |
| `chromeTabsProbedProfiles` | {'int': 3111} |
| `chromeUtilityPssKb` | {'int': 3111} |
| `desktopPssKb` | {'int': 3111} |
| `hostPssKb` | {'int': 3111} |
| `kind` | {'str': 3111} |
| `memAvailableKb` | {'int': 3111} |
| `memTotalKb` | {'int': 3111} |
| `otherPssKb` | {'int': 3111} |
| `processes` | {'int': 3111} |
| `pssFallbackProcesses` | {'int': 3111} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
