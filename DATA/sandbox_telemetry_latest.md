# sandbox_telemetry_parse — 2026-11-23 21:02:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1985759 lines=4403
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4388 |
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
| `chromeBrowserPssKb` | {'int': 4388} |
| `chromeGpuPssKb` | {'int': 4388} |
| `chromeOtherPssKb` | {'int': 4388} |
| `chromeProcesses` | {'int': 4388} |
| `chromeProfiles` | {'int': 4388} |
| `chromeRendererMaxPssKb` | {'int': 4388} |
| `chromeRendererPssKb` | {'int': 4388} |
| `chromeRenderers` | {'int': 4388} |
| `chromeTabs` | {'int': 4388} |
| `chromeTabsProbedProfiles` | {'int': 4388} |
| `chromeUtilityPssKb` | {'int': 4388} |
| `desktopPssKb` | {'int': 4388} |
| `hostPssKb` | {'int': 4388} |
| `kind` | {'str': 4388} |
| `memAvailableKb` | {'int': 4388} |
| `memTotalKb` | {'int': 4388} |
| `otherPssKb` | {'int': 4388} |
| `processes` | {'int': 4388} |
| `pssFallbackProcesses` | {'int': 4388} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
