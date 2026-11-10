# sandbox_telemetry_parse — 2026-11-10 08:30:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1058836 lines=2348
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2339 |
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
| `chromeBrowserPssKb` | {'int': 2339} |
| `chromeGpuPssKb` | {'int': 2339} |
| `chromeOtherPssKb` | {'int': 2339} |
| `chromeProcesses` | {'int': 2339} |
| `chromeProfiles` | {'int': 2339} |
| `chromeRendererMaxPssKb` | {'int': 2339} |
| `chromeRendererPssKb` | {'int': 2339} |
| `chromeRenderers` | {'int': 2339} |
| `chromeTabs` | {'int': 2339} |
| `chromeTabsProbedProfiles` | {'int': 2339} |
| `chromeUtilityPssKb` | {'int': 2339} |
| `desktopPssKb` | {'int': 2339} |
| `hostPssKb` | {'int': 2339} |
| `kind` | {'str': 2339} |
| `memAvailableKb` | {'int': 2339} |
| `memTotalKb` | {'int': 2339} |
| `otherPssKb` | {'int': 2339} |
| `processes` | {'int': 2339} |
| `pssFallbackProcesses` | {'int': 2339} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
