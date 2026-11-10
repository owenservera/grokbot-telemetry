# sandbox_telemetry_parse — 2026-11-10 23:38:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1379346 lines=3056
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3047 |
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
| `chromeBrowserPssKb` | {'int': 3047} |
| `chromeGpuPssKb` | {'int': 3047} |
| `chromeOtherPssKb` | {'int': 3047} |
| `chromeProcesses` | {'int': 3047} |
| `chromeProfiles` | {'int': 3047} |
| `chromeRendererMaxPssKb` | {'int': 3047} |
| `chromeRendererPssKb` | {'int': 3047} |
| `chromeRenderers` | {'int': 3047} |
| `chromeTabs` | {'int': 3047} |
| `chromeTabsProbedProfiles` | {'int': 3047} |
| `chromeUtilityPssKb` | {'int': 3047} |
| `desktopPssKb` | {'int': 3047} |
| `hostPssKb` | {'int': 3047} |
| `kind` | {'str': 3047} |
| `memAvailableKb` | {'int': 3047} |
| `memTotalKb` | {'int': 3047} |
| `otherPssKb` | {'int': 3047} |
| `processes` | {'int': 3047} |
| `pssFallbackProcesses` | {'int': 3047} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
