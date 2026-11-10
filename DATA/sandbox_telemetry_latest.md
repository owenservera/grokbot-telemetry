# sandbox_telemetry_parse — 2026-11-10 23:59:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1388403 lines=3076
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3067 |
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
| `chromeBrowserPssKb` | {'int': 3067} |
| `chromeGpuPssKb` | {'int': 3067} |
| `chromeOtherPssKb` | {'int': 3067} |
| `chromeProcesses` | {'int': 3067} |
| `chromeProfiles` | {'int': 3067} |
| `chromeRendererMaxPssKb` | {'int': 3067} |
| `chromeRendererPssKb` | {'int': 3067} |
| `chromeRenderers` | {'int': 3067} |
| `chromeTabs` | {'int': 3067} |
| `chromeTabsProbedProfiles` | {'int': 3067} |
| `chromeUtilityPssKb` | {'int': 3067} |
| `desktopPssKb` | {'int': 3067} |
| `hostPssKb` | {'int': 3067} |
| `kind` | {'str': 3067} |
| `memAvailableKb` | {'int': 3067} |
| `memTotalKb` | {'int': 3067} |
| `otherPssKb` | {'int': 3067} |
| `processes` | {'int': 3067} |
| `pssFallbackProcesses` | {'int': 3067} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
