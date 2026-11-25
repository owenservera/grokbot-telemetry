# sandbox_telemetry_parse — 2026-11-25 14:03:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2785473 lines=6171
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6156 |
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
| `chromeBrowserPssKb` | {'int': 6156} |
| `chromeGpuPssKb` | {'int': 6156} |
| `chromeOtherPssKb` | {'int': 6156} |
| `chromeProcesses` | {'int': 6156} |
| `chromeProfiles` | {'int': 6156} |
| `chromeRendererMaxPssKb` | {'int': 6156} |
| `chromeRendererPssKb` | {'int': 6156} |
| `chromeRenderers` | {'int': 6156} |
| `chromeTabs` | {'int': 6156} |
| `chromeTabsProbedProfiles` | {'int': 6156} |
| `chromeUtilityPssKb` | {'int': 6156} |
| `desktopPssKb` | {'int': 6156} |
| `hostPssKb` | {'int': 6156} |
| `kind` | {'str': 6156} |
| `memAvailableKb` | {'int': 6156} |
| `memTotalKb` | {'int': 6156} |
| `otherPssKb` | {'int': 6156} |
| `processes` | {'int': 6156} |
| `pssFallbackProcesses` | {'int': 6156} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
