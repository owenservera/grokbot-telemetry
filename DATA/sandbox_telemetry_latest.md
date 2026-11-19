# sandbox_telemetry_parse — 2026-11-19 22:19:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1464368 lines=3247
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3236 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3236} |
| `chromeGpuPssKb` | {'int': 3236} |
| `chromeOtherPssKb` | {'int': 3236} |
| `chromeProcesses` | {'int': 3236} |
| `chromeProfiles` | {'int': 3236} |
| `chromeRendererMaxPssKb` | {'int': 3236} |
| `chromeRendererPssKb` | {'int': 3236} |
| `chromeRenderers` | {'int': 3236} |
| `chromeTabs` | {'int': 3236} |
| `chromeTabsProbedProfiles` | {'int': 3236} |
| `chromeUtilityPssKb` | {'int': 3236} |
| `desktopPssKb` | {'int': 3236} |
| `hostPssKb` | {'int': 3236} |
| `kind` | {'str': 3236} |
| `memAvailableKb` | {'int': 3236} |
| `memTotalKb` | {'int': 3236} |
| `otherPssKb` | {'int': 3236} |
| `processes` | {'int': 3236} |
| `pssFallbackProcesses` | {'int': 3236} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
