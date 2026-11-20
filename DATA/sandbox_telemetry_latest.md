# sandbox_telemetry_parse — 2026-11-20 01:11:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1519530 lines=3369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3358 |
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
| `chromeBrowserPssKb` | {'int': 3358} |
| `chromeGpuPssKb` | {'int': 3358} |
| `chromeOtherPssKb` | {'int': 3358} |
| `chromeProcesses` | {'int': 3358} |
| `chromeProfiles` | {'int': 3358} |
| `chromeRendererMaxPssKb` | {'int': 3358} |
| `chromeRendererPssKb` | {'int': 3358} |
| `chromeRenderers` | {'int': 3358} |
| `chromeTabs` | {'int': 3358} |
| `chromeTabsProbedProfiles` | {'int': 3358} |
| `chromeUtilityPssKb` | {'int': 3358} |
| `desktopPssKb` | {'int': 3358} |
| `hostPssKb` | {'int': 3358} |
| `kind` | {'str': 3358} |
| `memAvailableKb` | {'int': 3358} |
| `memTotalKb` | {'int': 3358} |
| `otherPssKb` | {'int': 3358} |
| `processes` | {'int': 3358} |
| `pssFallbackProcesses` | {'int': 3358} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
