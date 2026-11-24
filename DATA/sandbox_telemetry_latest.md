# sandbox_telemetry_parse — 2026-11-24 17:07:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2368424 lines=5249
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5234 |
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
| `chromeBrowserPssKb` | {'int': 5234} |
| `chromeGpuPssKb` | {'int': 5234} |
| `chromeOtherPssKb` | {'int': 5234} |
| `chromeProcesses` | {'int': 5234} |
| `chromeProfiles` | {'int': 5234} |
| `chromeRendererMaxPssKb` | {'int': 5234} |
| `chromeRendererPssKb` | {'int': 5234} |
| `chromeRenderers` | {'int': 5234} |
| `chromeTabs` | {'int': 5234} |
| `chromeTabsProbedProfiles` | {'int': 5234} |
| `chromeUtilityPssKb` | {'int': 5234} |
| `desktopPssKb` | {'int': 5234} |
| `hostPssKb` | {'int': 5234} |
| `kind` | {'str': 5234} |
| `memAvailableKb` | {'int': 5234} |
| `memTotalKb` | {'int': 5234} |
| `otherPssKb` | {'int': 5234} |
| `processes` | {'int': 5234} |
| `pssFallbackProcesses` | {'int': 5234} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
