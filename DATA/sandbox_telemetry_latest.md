# sandbox_telemetry_parse — 2026-11-12 02:56:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1939986 lines=4295
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4286 |
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
| `chromeBrowserPssKb` | {'int': 4286} |
| `chromeGpuPssKb` | {'int': 4286} |
| `chromeOtherPssKb` | {'int': 4286} |
| `chromeProcesses` | {'int': 4286} |
| `chromeProfiles` | {'int': 4286} |
| `chromeRendererMaxPssKb` | {'int': 4286} |
| `chromeRendererPssKb` | {'int': 4286} |
| `chromeRenderers` | {'int': 4286} |
| `chromeTabs` | {'int': 4286} |
| `chromeTabsProbedProfiles` | {'int': 4286} |
| `chromeUtilityPssKb` | {'int': 4286} |
| `desktopPssKb` | {'int': 4286} |
| `hostPssKb` | {'int': 4286} |
| `kind` | {'str': 4286} |
| `memAvailableKb` | {'int': 4286} |
| `memTotalKb` | {'int': 4286} |
| `otherPssKb` | {'int': 4286} |
| `processes` | {'int': 4286} |
| `pssFallbackProcesses` | {'int': 4286} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
