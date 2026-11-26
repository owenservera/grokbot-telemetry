# sandbox_telemetry_parse — 2026-11-26 07:53:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3150464 lines=6978
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6963 |
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
| `chromeBrowserPssKb` | {'int': 6963} |
| `chromeGpuPssKb` | {'int': 6963} |
| `chromeOtherPssKb` | {'int': 6963} |
| `chromeProcesses` | {'int': 6963} |
| `chromeProfiles` | {'int': 6963} |
| `chromeRendererMaxPssKb` | {'int': 6963} |
| `chromeRendererPssKb` | {'int': 6963} |
| `chromeRenderers` | {'int': 6963} |
| `chromeTabs` | {'int': 6963} |
| `chromeTabsProbedProfiles` | {'int': 6963} |
| `chromeUtilityPssKb` | {'int': 6963} |
| `desktopPssKb` | {'int': 6963} |
| `hostPssKb` | {'int': 6963} |
| `kind` | {'str': 6963} |
| `memAvailableKb` | {'int': 6963} |
| `memTotalKb` | {'int': 6963} |
| `otherPssKb` | {'int': 6963} |
| `processes` | {'int': 6963} |
| `pssFallbackProcesses` | {'int': 6963} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
