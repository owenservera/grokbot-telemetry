# sandbox_telemetry_parse — 2026-11-24 09:56:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2235868 lines=4956
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4941 |
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
| `chromeBrowserPssKb` | {'int': 4941} |
| `chromeGpuPssKb` | {'int': 4941} |
| `chromeOtherPssKb` | {'int': 4941} |
| `chromeProcesses` | {'int': 4941} |
| `chromeProfiles` | {'int': 4941} |
| `chromeRendererMaxPssKb` | {'int': 4941} |
| `chromeRendererPssKb` | {'int': 4941} |
| `chromeRenderers` | {'int': 4941} |
| `chromeTabs` | {'int': 4941} |
| `chromeTabsProbedProfiles` | {'int': 4941} |
| `chromeUtilityPssKb` | {'int': 4941} |
| `desktopPssKb` | {'int': 4941} |
| `hostPssKb` | {'int': 4941} |
| `kind` | {'str': 4941} |
| `memAvailableKb` | {'int': 4941} |
| `memTotalKb` | {'int': 4941} |
| `otherPssKb` | {'int': 4941} |
| `processes` | {'int': 4941} |
| `pssFallbackProcesses` | {'int': 4941} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
