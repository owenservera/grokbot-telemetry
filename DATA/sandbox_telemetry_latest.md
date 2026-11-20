# sandbox_telemetry_parse — 2026-11-20 07:09:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1614000 lines=3578
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3567 |
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
| `chromeBrowserPssKb` | {'int': 3567} |
| `chromeGpuPssKb` | {'int': 3567} |
| `chromeOtherPssKb` | {'int': 3567} |
| `chromeProcesses` | {'int': 3567} |
| `chromeProfiles` | {'int': 3567} |
| `chromeRendererMaxPssKb` | {'int': 3567} |
| `chromeRendererPssKb` | {'int': 3567} |
| `chromeRenderers` | {'int': 3567} |
| `chromeTabs` | {'int': 3567} |
| `chromeTabsProbedProfiles` | {'int': 3567} |
| `chromeUtilityPssKb` | {'int': 3567} |
| `desktopPssKb` | {'int': 3567} |
| `hostPssKb` | {'int': 3567} |
| `kind` | {'str': 3567} |
| `memAvailableKb` | {'int': 3567} |
| `memTotalKb` | {'int': 3567} |
| `otherPssKb` | {'int': 3567} |
| `processes` | {'int': 3567} |
| `pssFallbackProcesses` | {'int': 3567} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
