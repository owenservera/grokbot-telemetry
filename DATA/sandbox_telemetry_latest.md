# sandbox_telemetry_parse — 2026-11-12 10:07:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2078431 lines=4601
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4592 |
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
| `chromeBrowserPssKb` | {'int': 4592} |
| `chromeGpuPssKb` | {'int': 4592} |
| `chromeOtherPssKb` | {'int': 4592} |
| `chromeProcesses` | {'int': 4592} |
| `chromeProfiles` | {'int': 4592} |
| `chromeRendererMaxPssKb` | {'int': 4592} |
| `chromeRendererPssKb` | {'int': 4592} |
| `chromeRenderers` | {'int': 4592} |
| `chromeTabs` | {'int': 4592} |
| `chromeTabsProbedProfiles` | {'int': 4592} |
| `chromeUtilityPssKb` | {'int': 4592} |
| `desktopPssKb` | {'int': 4592} |
| `hostPssKb` | {'int': 4592} |
| `kind` | {'str': 4592} |
| `memAvailableKb` | {'int': 4592} |
| `memTotalKb` | {'int': 4592} |
| `otherPssKb` | {'int': 4592} |
| `processes` | {'int': 4592} |
| `pssFallbackProcesses` | {'int': 4592} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
