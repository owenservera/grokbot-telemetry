# sandbox_telemetry_parse — 2026-11-10 19:21:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1282510 lines=2842
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2833 |
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
| `chromeBrowserPssKb` | {'int': 2833} |
| `chromeGpuPssKb` | {'int': 2833} |
| `chromeOtherPssKb` | {'int': 2833} |
| `chromeProcesses` | {'int': 2833} |
| `chromeProfiles` | {'int': 2833} |
| `chromeRendererMaxPssKb` | {'int': 2833} |
| `chromeRendererPssKb` | {'int': 2833} |
| `chromeRenderers` | {'int': 2833} |
| `chromeTabs` | {'int': 2833} |
| `chromeTabsProbedProfiles` | {'int': 2833} |
| `chromeUtilityPssKb` | {'int': 2833} |
| `desktopPssKb` | {'int': 2833} |
| `hostPssKb` | {'int': 2833} |
| `kind` | {'str': 2833} |
| `memAvailableKb` | {'int': 2833} |
| `memTotalKb` | {'int': 2833} |
| `otherPssKb` | {'int': 2833} |
| `processes` | {'int': 2833} |
| `pssFallbackProcesses` | {'int': 2833} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
